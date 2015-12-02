import os
import pwd
from fabric.api import cd, env, task, require, local, lcd, sudo, prefix, shell_env
from fabric.contrib.files import exists, upload_template

from api.fabfile import (provision_api, create_api_database, drop_api_database,
    load_api_data, reload_api_data)


VIRTUALENV_DIR = 'censusreporter-ke_ve'
CODE_DIR = 'censusreporter-ke'
PROD_HOSTS = ['52.34.233.24']
PACKAGES = (
    'git-core',
    'python-virtualenv',
    'sqlite3',
    'memcached',
    'upstart',
    'nginx',
    'npm',  # Node is for yUglify
)
# Nginx & Upstart constants
SERVER_NAMES = '52.34.233.24'
EMBED_URL = 'ec2-52-34-233-24.us-west-2.compute.amazonaws.com'
SERVER_ALIASES = '52.34.233.24'
PROXY_PORT = 5001
PROXY_HOST = '127.0.0.1'
LOG_DIR = 'logs'


@task
def dev():
    env.deploy_type = 'dev'
    env.deploy_user = pwd.getpwuid(os.getuid())[0]
    env.deploy_dir = os.path.join(os.path.abspath(os.path.dirname(__file__)), '../')
    env.branch = None  # deploy whichever branch we are currently on
    env.repo_dir = os.path.join(env.deploy_dir, CODE_DIR)


@task
def prod():
    env.user = 'censusreporter-ke'
    env.deploy_type = 'prod'
    env.deploy_user = 'censusreporter-ke'
    env.deploy_dir = '/home/%s/censusreporter-ke-app' % env.user
    env.branch = 'master'
    env.hosts = PROD_HOSTS

    env.repo_dir = os.path.join(env.deploy_dir, CODE_DIR)
    env.embed_dir = os.path.join(env.deploy_dir, 'embed_data/profiles/')


@task
def provision():
    require('deploy_type', provided_by=[dev, prod])

    sudo('apt-get install --yes --no-upgrade %s' % ' '.join(PACKAGES))
    sudo('apt-get build-dep --yes python-numpy python-psycopg2')
    sudo('npm config set registry http://registry.npmjs.org/')
    sudo('npm -g install yuglify')

    if env.deploy_type == 'prod':
        sudo('mkdir -p %s' % env.deploy_dir)
        sudo('chown -R %s:%s %s' % (env.deploy_user, env.deploy_user, env.deploy_dir))
        sudo('rm /etc/nginx/sites-enabled/default')

    provision_api()

    git_checkout()


@task
def deploy():
    require('deploy_type', 'deploy_user', 'deploy_dir', 'branch',
            provided_by=[dev, prod])

    ve_dir = os.path.join(env.deploy_dir, VIRTUALENV_DIR)

    if env.deploy_type == 'dev':
        with lcd(env.repo_dir):
            local('git pull')
            local('. ~/.virtualenvs/%s/bin/activate && pip install -r requirements.txt'
                  % CODE_DIR)
        return

    if not exists(ve_dir):
        sudo('virtualenv -p python2.7 %s' % ve_dir, user=env.deploy_user)

    git_checkout()

    # upload pth file to manage python path
    upload_template(os.path.join(os.path.dirname(__file__), 'conf/pythonpath.template'),
                    '%s/lib/python2.7/site-packages/censusreporter.pth' % ve_dir,
                    {'project-dir': env.repo_dir}, use_sudo=True, backup=False)

    with cd(env.repo_dir), prefix('. ../%s/bin/activate' % VIRTUALENV_DIR):
        with shell_env(CPLUS_INCLUDE_PATH='/usr/include/gdal', C_INCLUDE_PATH='/usr/include/gdal'):
            sudo('pip install -r requirements.txt', user=env.deploy_user)

        sudo('python manage.py collectstatic --settings=config.prod.settings '
             '--noinput', user=env.deploy_user)

    # render and upload templates
    upload_template(os.path.join(os.path.dirname(__file__), 'conf/nginx.template'),
                    '/etc/nginx/sites-enabled/censusreporter.conf',
                    get_nginx_template_context(), use_sudo=True, backup=False)
    upload_template(os.path.join(os.path.dirname(__file__), 'conf/upstart.template'),
                    '/etc/init/censusreporter.conf',
                    get_upstart_template_context(), use_sudo=True, backup=False)
    # make sure logging dir exists and update processes
    log_dir = os.path.join(env.deploy_dir, LOG_DIR)
    sudo('mkdir -p %s' % log_dir, user=env.deploy_user)
    sudo('chown -R %s:%s %s' % (env.deploy_user, env.deploy_user, env.deploy_dir))

    cache_dir = '/var/tmp/censusreporter_cache/'
    sudo('mkdir -p %s' % cache_dir, user=env.deploy_user)
    sudo('mkdir -p %s' % env.embed_dir, user=env.deploy_user)

    sudo('initctl reload-configuration')

    # on first install, a simple restart will fail. so always force a stop (which can fail)
    # and then start
    sudo('initctl stop censusreporter', quiet=True)
    sudo('initctl start censusreporter')

    sudo('/etc/init.d/nginx reload')


def get_nginx_template_context():
    return {
        'server-name': SERVER_NAMES,
        'embed-server-name': EMBED_URL,
        'server-aliases': SERVER_ALIASES,
        'server-port': 80,
        'static-path': os.path.join(env.repo_dir, 'censusreporter/static/'),
        'embed-data-path': env.embed_dir,
        'log': os.path.join(env.deploy_dir, LOG_DIR, 'nginx.log'),
        'err-log': os.path.join(env.deploy_dir, LOG_DIR, 'nginx.err'),
        'proxy-host': PROXY_HOST,
        'proxy-port': PROXY_PORT,
    }


def get_upstart_template_context():
    return {
        'user': env.deploy_user,
        'project-dir': os.path.join(env.deploy_dir, CODE_DIR),
        've-dir': os.path.join(env.deploy_dir, VIRTUALENV_DIR),
        'log': os.path.join(env.deploy_dir, LOG_DIR, 'gunicorn.log'),
        'err-log': os.path.join(env.deploy_dir, LOG_DIR, 'gunicorn.err'),
        'host': PROXY_HOST,
        'port': PROXY_PORT,
    }

def git_checkout():
    if not exists(env.repo_dir):
        with cd(env.deploy_dir):
            sudo('git clone -b %s https://github.com/CodeForAfrica/censusreporter-ke.git'
                 % env.branch, user=env.deploy_user)
    else:
        with cd(env.repo_dir):
            sudo('git checkout -B %s' % env.branch, user=env.deploy_user)
            sudo('git pull origin %s' % env.branch, user=env.deploy_user)
