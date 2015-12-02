--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: highesteducationlevelreached_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE highesteducationlevelreached_country (
    total integer NOT NULL,
    "highest education level reached" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.highesteducationlevelreached_country OWNER TO censusreporter_ke;

--
-- Name: highesteducationlevelreached_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE highesteducationlevelreached_county (
    total integer NOT NULL,
    "highest education level reached" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.highesteducationlevelreached_county OWNER TO censusreporter_ke;

--
-- Data for Name: highesteducationlevelreached_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY highesteducationlevelreached_country (total, "highest education level reached", country_code) FROM stdin;
136660	basic literacy	KE
469842	madrassa	KE
12983950	none	KE
4630064	pre-primary	KE
35652860	primary	KE
12168640	secondary	KE
2370860	tertiary	KE
1052604	university	KE
323408	youth polytechnic	KE
\.


--
-- Data for Name: highesteducationlevelreached_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY highesteducationlevelreached_county (total, "highest education level reached", county_code) FROM stdin;
4525	basic literacy	22
344	madrassa	22
97649	none	22
95423	pre-primary	22
740539	primary	22
437294	secondary	22
112740	tertiary	22
45680	university	22
8262	youth polytechnic	22
419	basic literacy	28
17	madrassa	28
43642	none	28
26192	pre-primary	28
201577	primary	28
49082	secondary	28
8409	tertiary	28
2197	university	28
1505	youth polytechnic	28
551	basic literacy	30
52	madrassa	30
140043	none	30
38957	pre-primary	30
237325	primary	30
63547	secondary	30
14654	tertiary	30
3896	university	30
1233	youth polytechnic	30
1205	basic literacy	34
504	madrassa	34
144098	none	34
45718	pre-primary	34
253654	primary	34
116920	secondary	34
31561	tertiary	34
19186	university	34
2772	youth polytechnic	34
647	basic literacy	35
80	madrassa	35
52661	none	35
38252	pre-primary	35
322587	primary	35
92317	secondary	35
17826	tertiary	35
5298	university	35
2104	youth polytechnic	35
1015	basic literacy	36
79	madrassa	36
87597	none	36
54658	pre-primary	36
503574	primary	36
126073	secondary	36
20942	tertiary	36
5388	university	36
2921	youth polytechnic	36
1599	basic literacy	37
230	madrassa	37
211448	none	37
108891	pre-primary	37
883557	primary	37
224519	secondary	37
32942	tertiary	37
423	basic literacy	7
39662	madrassa	7
379051	none	7
8775	pre-primary	7
112347	primary	7
24421	secondary	7
3095	tertiary	7
2461	university	7
125	basic literacy	11
1076	madrassa	11
54105	none	11
9751	pre-primary	11
45724	primary	11
13589	secondary	11
2672	tertiary	11
931	university	11
346	youth polytechnic	11
1542	basic literacy	14
49	madrassa	14
56517	none	14
18718	pre-primary	14
281293	primary	14
90932	secondary	14
17140	tertiary	14
5031	university	14
3784	youth polytechnic	14
2185	basic literacy	15
234	madrassa	15
168726	none	15
57502	pre-primary	15
555091	primary	15
94245	secondary	15
17251	tertiary	15
1627	basic literacy	20
118	madrassa	20
45033	none	20
21983	pre-primary	20
288571	primary	20
112656	secondary	20
15505	tertiary	20
4706	university	20
640	basic literacy	40
120	madrassa	40
105650	none	40
51408	pre-primary	40
400807	primary	40
85031	secondary	40
11784	tertiary	40
3753	university	40
1661	youth polytechnic	40
13329	university	37
3156	youth polytechnic	37
1333	basic literacy	39
114	madrassa	39
143688	none	39
86555	pre-primary	39
731968	primary	39
217310	secondary	39
30024	tertiary	39
9351	university	39
2641	youth polytechnic	39
1491	basic literacy	42
164	madrassa	42
75700	none	42
83062	pre-primary	42
481966	primary	42
167723	secondary	42
32808	tertiary	42
16264	university	42
3004	youth polytechnic	42
774	basic literacy	43
42	madrassa	43
87603	none	43
91107	pre-primary	43
527361	primary	43
125211	secondary	43
16259	tertiary	43
5845	university	43
1704	youth polytechnic	43
1179	basic literacy	45
65	madrassa	45
118497	none	45
86681	pre-primary	45
610717	primary	45
270662	secondary	45
30346	tertiary	45
10923	university	45
4269	youth polytechnic	45
3154	basic literacy	21
82	madrassa	21
80762	none	21
33452	pre-primary	21
504390	primary	21
172117	secondary	21
24308	tertiary	21
6684	university	21
3557	youth polytechnic	21
814	basic literacy	29
93	madrassa	29
70364	none	29
61589	pre-primary	29
419103	primary	29
100002	secondary	29
18298	tertiary	29
6194	university	29
2010	youth polytechnic	29
861	basic literacy	31
66	madrassa	31
61541	none	31
27328	pre-primary	31
186821	primary	31
69127	secondary	31
11054	tertiary	31
3948	university	31
1283	youth polytechnic	31
2828	basic literacy	32
256	madrassa	32
139539	none	32
116217	pre-primary	32
780918	primary	32
320381	secondary	32
61662	tertiary	32
23976	university	32
3844	youth polytechnic	32
572	basic literacy	33
84	madrassa	33
231573	none	33
55205	pre-primary	33
376147	primary	33
66146	secondary	33
10601	tertiary	33
3052	university	33
1070	youth polytechnic	33
708	basic literacy	44
247	madrassa	44
90415	none	44
81616	pre-primary	44
508578	primary	44
102617	secondary	44
14584	tertiary	44
5458	university	44
1524	youth polytechnic	44
455	basic literacy	46
13	madrassa	46
41178	none	46
33258	pre-primary	46
233911	primary	46
113806	secondary	46
12102	tertiary	46
3656	university	46
1483	youth polytechnic	46
8300	basic literacy	47
9065	madrassa	47
162504	none	47
162520	pre-primary	47
1074033	primary	47
944148	secondary	47
287649	tertiary	47
192337	university	47
21803	youth polytechnic	47
844	basic literacy	2
2446	madrassa	2
168879	none	2
53274	pre-primary	2
290116	primary	2
49182	secondary	2
8370	tertiary	2
1992	university	2
1503	youth polytechnic	2
152	basic literacy	5
3004	madrassa	5
19460	none	5
7812	pre-primary	5
48223	primary	5
10587	secondary	5
1480	tertiary	5
415	university	5
131	youth polytechnic	5
480	basic literacy	9
98975	madrassa	9
560334	none	9
10411	pre-primary	9
235580	primary	9
40413	secondary	9
2519	tertiary	9
1424	university	9
202	youth polytechnic	9
468	basic literacy	10
3119	madrassa	10
163550	none	10
12989	pre-primary	10
67450	primary	10
12665	secondary	10
2135	tertiary	10
956	university	10
308	youth polytechnic	10
4144	basic literacy	12
225	madrassa	12
226905	none	12
71376	pre-primary	12
881763	primary	12
209839	secondary	12
39147	tertiary	12
11930	university	12
4469	university	15
12216	youth polytechnic	15
4649	basic literacy	16
317	madrassa	16
99498	none	16
51475	pre-primary	16
578689	primary	16
203414	secondary	16
37277	tertiary	16
12437	university	16
18698	youth polytechnic	16
2637	basic literacy	17
187	madrassa	17
99661	none	17
39584	pre-primary	17
496042	primary	17
131811	secondary	17
19235	tertiary	17
4683	university	17
1658	basic literacy	18
50	madrassa	18
47332	none	18
40067	pre-primary	18
336716	primary	18
104653	secondary	18
12800	tertiary	18
3610	university	18
1360	youth polytechnic	18
2531	basic literacy	19
118	madrassa	19
42333	none	19
36274	pre-primary	19
840	basic literacy	23
424	madrassa	23
614643	none	23
24486	pre-primary	23
121093	primary	23
22393	secondary	23
3776	tertiary	23
1489	university	23
351	youth polytechnic	23
153	basic literacy	24
23	madrassa	24
219742	none	24
33514	pre-primary	24
172096	primary	24
22097	secondary	24
4564	tertiary	24
1407	university	24
582	youth polytechnic	24
774	basic literacy	26
110	madrassa	26
98644	none	26
55557	pre-primary	26
425993	primary	26
126449	secondary	26
16326	tertiary	26
6412	university	26
1173	youth polytechnic	26
1428	basic literacy	27
182	madrassa	27
78641	none	27
63490	pre-primary	27
422770	primary	27
174412	secondary	27
36479	tertiary	27
26454	university	27
2778	youth polytechnic	27
1328	basic literacy	38
60	madrassa	38
58485	none	38
32971	pre-primary	38
309369	primary	38
82617	secondary	38
11985	tertiary	38
3907	university	38
1481	youth polytechnic	38
948	basic literacy	41
90	madrassa	41
102506	none	41
59001	pre-primary	41
471530	primary	41
2705	basic literacy	1
4431	madrassa	1
84459	none	1
59153	pre-primary	1
384904	primary	1
226497	secondary	1
56992	tertiary	1
20239	university	1
6844	youth polytechnic	1
1638	basic literacy	3
1606	madrassa	3
249459	none	3
106855	pre-primary	3
505502	primary	3
96901	secondary	3
17830	tertiary	3
5475	university	3
2978	youth polytechnic	3
316	basic literacy	4
4046	madrassa	4
98600	none	4
16129	pre-primary	4
77008	primary	4
11941	secondary	4
1773	tertiary	4
336	university	4
261	youth polytechnic	4
1004	basic literacy	6
293	madrassa	6
30876	none	6
16611	pre-primary	6
151123	primary	6
40858	secondary	6
8478	tertiary	6
1776	university	6
3917	youth polytechnic	6
238	youth polytechnic	7
213	basic literacy	8
62342	madrassa	8
399405	none	8
6177	pre-primary	8
118167	primary	8
20917	secondary	8
2174	tertiary	8
1311	university	8
164	youth polytechnic	8
10256	youth polytechnic	12
145	basic literacy	13
7	madrassa	13
21263	none	13
6519	pre-primary	13
74126	primary	13
11148	secondary	13
2290	tertiary	13
522	university	13
1482	youth polytechnic	13
11600	youth polytechnic	17
345189	primary	19
175626	secondary	19
28956	tertiary	19
9881	university	19
3896	youth polytechnic	19
1691	youth polytechnic	20
303	basic literacy	25
10	madrassa	25
117716	none	25
16489	pre-primary	25
50422	primary	25
9428	secondary	25
2270	tertiary	25
666	university	25
291	youth polytechnic	25
100596	secondary	41
12358	tertiary	41
4967	university	41
1367	youth polytechnic	41
\.


--
-- Name: highesteducationlevelreached_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY highesteducationlevelreached_country
    ADD CONSTRAINT highesteducationlevelreached_country_pkey PRIMARY KEY ("highest education level reached", country_code);


--
-- Name: highesteducationlevelreached_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY highesteducationlevelreached_county
    ADD CONSTRAINT highesteducationlevelreached_county_pkey PRIMARY KEY ("highest education level reached", county_code);


--
-- Name: ix_highesteducationlevelreached_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_highesteducationlevelreached_country_country_code ON highesteducationlevelreached_country USING btree (country_code);


--
-- Name: ix_highesteducationlevelreached_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_highesteducationlevelreached_county_county_code ON highesteducationlevelreached_county USING btree (county_code);


--
-- Name: highesteducationlevelreached_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY highesteducationlevelreached_country
    ADD CONSTRAINT highesteducationlevelreached_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: highesteducationlevelreached_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY highesteducationlevelreached_county
    ADD CONSTRAINT highesteducationlevelreached_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

