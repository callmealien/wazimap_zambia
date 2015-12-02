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
-- Name: maintypeoffloormaterial_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeoffloormaterial_country (
    total integer NOT NULL,
    "main type of floor material" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeoffloormaterial_country OWNER TO censusreporter_ke;

--
-- Name: maintypeoffloormaterial_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeoffloormaterial_county (
    total integer NOT NULL,
    "main type of floor material" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeoffloormaterial_county OWNER TO censusreporter_ke;

--
-- Data for Name: maintypeoffloormaterial_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeoffloormaterial_country (total, "main type of floor material", country_code) FROM stdin;
8738097	cement	KE
65762	earth	KE
4937121	other	KE
3582001	tiles	KE
135692	wood	KE
\.


--
-- Data for Name: maintypeoffloormaterial_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeoffloormaterial_county (total, "main type of floor material", county_code) FROM stdin;
110426	cement	30
1856	earth	30
80603	other	30
27425	tiles	30
332	wood	30
174294	cement	36
954	earth	36
131613	other	36
41125	tiles	36
405	wood	36
270601	cement	39
789	earth	39
214459	other	39
53831	tiles	39
1000	wood	39
154080	cement	40
527	earth	40
115342	other	40
37401	tiles	40
587	wood	40
77538	cement	28
734	earth	28
59498	other	28
16756	tiles	28
170	wood	28
131198	cement	14
648	earth	14
76432	other	14
53256	tiles	14
698	wood	14
98270	cement	7
594	earth	7
78385	other	7
18419	tiles	7
381	wood	7
206108	cement	43
663	earth	43
154017	other	43
50331	tiles	43
641	wood	43
31305	cement	11
126	earth	11
21911	other	11
9047	tiles	11
169	wood	11
173063	cement	34
538	earth	34
66945	other	34
99118	tiles	34
6210	wood	34
355375	cement	37
1612	earth	37
285209	other	37
66150	tiles	37
1204	wood	37
127225	cement	35
1005	earth	35
77342	other	35
48287	tiles	35
474	wood	35
481787	cement	22
2120	earth	22
113189	other	22
355536	tiles	22
10567	wood	22
197851	cement	3
515	earth	3
129139	other	3
65473	tiles	3
2288	wood	3
153981	cement	20
735	earth	20
92239	other	20
60133	tiles	20
680	wood	20
269454	cement	45
1379	earth	45
208278	other	45
57974	tiles	45
993	wood	45
226137	cement	42
932	earth	42
125046	other	42
95973	tiles	42
3612	wood	42
205412	cement	15
656	earth	15
136153	other	15
67124	tiles	15
1182	wood	15
121691	cement	2
211	earth	2
85386	other	2
35161	tiles	2
803	wood	2
103081	cement	31
1033	earth	31
67685	other	31
33491	tiles	31
651	wood	31
22013	cement	5
73	earth	5
13705	other	5
8143	tiles	5
65	wood	5
264342	cement	16
500	earth	16
105122	other	16
154263	tiles	16
4275	wood	16
186280	cement	17
404	earth	17
99572	other	17
85016	tiles	17
1148	wood	17
125471	cement	9
629	earth	9
115087	other	9
9280	tiles	9
152	wood	9
56711	cement	10
153	earth	10
46871	other	10
9292	tiles	10
143	wood	10
380505	cement	12
7188	earth	12
226948	other	12
143636	tiles	12
1691	wood	12
179970	cement	44
832	earth	44
129541	other	44
48681	tiles	44
697	wood	44
257254	cement	1
637	earth	1
36368	other	1
207480	tiles	1
12235	wood	1
242332	cement	21
1109	earth	21
145502	other	21
94140	tiles	21
1321	wood	21
983115	cement	47
19169	earth	47
87228	other	47
809278	tiles	47
66147	wood	47
409097	cement	32
3457	earth	32
191454	other	32
208216	tiles	32
5045	wood	32
152889	cement	29
699	earth	29
105529	other	29
45787	tiles	29
619	wood	29
169067	cement	33
1040	earth	33
142236	other	33
24696	tiles	33
419	wood	33
106065	cement	46
552	earth	46
80843	other	46
24221	tiles	46
361	wood	46
142493	cement	18
2218	earth	18
98033	other	18
40989	tiles	18
450	wood	18
201353	cement	19
3254	earth	19
113669	other	19
83057	tiles	19
1068	wood	19
47231	cement	25
165	earth	25
39058	other	25
7821	tiles	25
86	wood	25
198664	cement	41
734	earth	41
139196	other	41
57585	tiles	41
793	wood	41
70039	cement	6
200	earth	6
38782	other	6
30485	tiles	6
451	wood	6
47274	cement	4
138	earth	4
41604	other	4
5366	tiles	4
87	wood	4
27389	cement	13
195	earth	13
22520	other	13
4590	tiles	13
55	wood	13
169632	cement	26
814	earth	26
123709	other	26
43706	tiles	26
895	wood	26
122935	cement	23
1125	earth	23
113145	other	23
8007	tiles	23
205	wood	23
201616	cement	27
1561	earth	27
102615	other	27
93401	tiles	27
3501	wood	27
123241	cement	38
551	earth	38
97630	other	38
24377	tiles	38
468	wood	38
88493	cement	8
214	earth	8
80979	other	8
6899	tiles	8
131	wood	8
93749	cement	24
524	earth	24
81304	other	24
11578	tiles	24
137	wood	24
\.


--
-- Name: maintypeoffloormaterial_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeoffloormaterial_country
    ADD CONSTRAINT maintypeoffloormaterial_country_pkey PRIMARY KEY ("main type of floor material", country_code);


--
-- Name: maintypeoffloormaterial_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeoffloormaterial_county
    ADD CONSTRAINT maintypeoffloormaterial_county_pkey PRIMARY KEY ("main type of floor material", county_code);


--
-- Name: ix_maintypeoffloormaterial_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeoffloormaterial_country_country_code ON maintypeoffloormaterial_country USING btree (country_code);


--
-- Name: ix_maintypeoffloormaterial_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeoffloormaterial_county_county_code ON maintypeoffloormaterial_county USING btree (county_code);


--
-- Name: maintypeoffloormaterial_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeoffloormaterial_country
    ADD CONSTRAINT maintypeoffloormaterial_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: maintypeoffloormaterial_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeoffloormaterial_county
    ADD CONSTRAINT maintypeoffloormaterial_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

