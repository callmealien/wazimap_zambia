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
-- Name: schoolattendance_sex_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE schoolattendance_sex_country (
    total integer NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.schoolattendance_sex_country OWNER TO censusreporter_ke;

--
-- Name: schoolattendance_sex_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE schoolattendance_sex_county (
    total integer NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.schoolattendance_sex_county OWNER TO censusreporter_ke;

--
-- Data for Name: schoolattendance_sex_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY schoolattendance_sex_country (total, "school attendance", sex, country_code) FROM stdin;
14579976	at school	male	KE
14149928	left school	male	KE
5317852	never attended	male	KE
774668	unspecified	male	KE
13646608	at school	female	KE
14315758	left school	female	KE
6798986	never attended	female	KE
587326	unspecified	female	KE
\.


--
-- Data for Name: schoolattendance_sex_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY schoolattendance_sex_county (total, "school attendance", sex, county_code) FROM stdin;
121867	at school	male	2
94236	left school	male	2
59303	never attended	male	2
5619	unspecified	male	2
223846	at school	male	3
166620	left school	male	3
75632	never attended	male	3
11678	unspecified	male	3
18413	at school	male	5
20403	left school	male	5
8152	never attended	male	5
1411	unspecified	male	5
84871	at school	male	7
29944	left school	male	7
184831	never attended	male	7
9350	unspecified	male	7
191251	at school	male	9
39629	left school	male	9
284712	never attended	male	9
7371	unspecified	male	9
40742	at school	male	10
15698	left school	male	10
78596	never attended	male	10
2730	unspecified	male	10
23221	at school	male	11
16982	left school	male	11
24643	never attended	male	11
1835	unspecified	male	11
270391	at school	male	12
346260	left school	male	12
86133	never attended	male	12
17947	unspecified	male	12
90118	at school	male	14
120224	left school	male	14
19457	never attended	male	14
5114	unspecified	male	14
214922	at school	male	15
148151	left school	male	15
61923	never attended	male	15
7734	unspecified	male	15
212080	at school	male	16
243109	left school	male	16
35574	never attended	male	16
8508	unspecified	male	16
187877	at school	male	17
161764	left school	male	17
37005	never attended	male	17
6320	unspecified	male	17
123517	at school	male	18
125212	left school	male	18
15650	never attended	male	18
3653	unspecified	male	18
85265	at school	male	20
140821	left school	male	20
13709	never attended	male	20
3608	unspecified	male	20
156476	at school	male	40
116293	left school	male	40
35187	never attended	male	40
8596	unspecified	male	40
163644	at school	male	21
206083	left school	male	21
25445	never attended	male	21
6179	unspecified	male	21
286280	at school	male	22
436421	left school	male	22
31046	never attended	male	22
10298	unspecified	male	22
82359	at school	male	28
63332	left school	male	28
16867	never attended	male	28
2774	unspecified	male	28
159912	at school	male	29
147090	left school	male	29
25949	never attended	male	29
6296	unspecified	male	29
111827	at school	male	30
71451	left school	male	30
64688	never attended	male	30
3808	unspecified	male	30
75202	at school	male	31
78029	left school	male	31
23345	never attended	male	31
4817	unspecified	male	31
318392	at school	male	32
345560	left school	male	32
51628	never attended	male	32
15948	unspecified	male	32
157552	at school	male	33
114296	left school	male	33
94955	never attended	male	33
10761	unspecified	male	33
119125	at school	male	34
127006	left school	male	34
57831	never attended	male	34
7413	unspecified	male	34
124769	at school	male	35
120947	left school	male	35
18477	never attended	male	35
6290	unspecified	male	35
195328	at school	male	36
164091	left school	male	36
29742	never attended	male	36
8706	unspecified	male	36
333524	at school	male	37
284668	left school	male	37
77912	never attended	male	37
17310	unspecified	male	37
298735	at school	male	39
230738	left school	male	39
55238	never attended	male	39
11858	unspecified	male	39
203863	at school	male	42
185579	left school	male	42
22354	never attended	male	42
13580	unspecified	male	42
225500	at school	male	43
150338	left school	male	43
24705	never attended	male	43
8574	unspecified	male	43
209890	at school	male	44
142722	left school	male	44
28076	never attended	male	44
9238	unspecified	male	44
278075	at school	male	45
213054	left school	male	45
35868	never attended	male	45
12197	unspecified	male	45
104631	at school	male	46
89613	left school	male	46
13706	never attended	male	46
3152	unspecified	male	46
484427	at school	male	47
898849	left school	male	47
58191	never attended	male	47
38858	unspecified	male	47
207161	at school	female	3
139580	left school	female	3
160240	never attended	female	3
10035	unspecified	female	3
36950	at school	male	4
24632	left school	male	4
41606	never attended	male	4
1874	unspecified	male	4
16424	at school	female	5
16398	left school	female	5
10275	never attended	female	5
910	unspecified	female	5
51013	at school	male	6
64912	left school	male	6
11038	never attended	male	6
6933	unspecified	male	6
57967	at school	female	7
18269	left school	female	7
181825	never attended	female	7
6721	unspecified	female	7
99266	at school	male	8
29665	left school	male	8
203669	never attended	male	8
6481	unspecified	male	8
20948	at school	female	11
12996	left school	female	11
28452	never attended	female	11
781	unspecified	female	11
25395	at school	male	13
22532	left school	male	13
7848	never attended	male	13
775	unspecified	male	13
89150	at school	female	14
118331	left school	female	14
31447	never attended	female	14
3895	unspecified	female	14
207249	at school	female	15
171827	left school	female	15
99252	never attended	female	15
199404	at school	female	16
250784	left school	female	16
55578	never attended	female	16
6301	unspecified	female	16
177951	at school	female	17
125874	at school	male	19
172081	left school	male	19
13014	never attended	male	19
5916	unspecified	male	19
82572	at school	female	20
137731	left school	female	20
27844	never attended	female	20
2330	unspecified	female	20
31103	at school	male	25
13646	left school	male	25
52707	never attended	male	25
2116	unspecified	male	25
148301	at school	female	40
132907	left school	female	40
59575	never attended	female	40
7312	unspecified	female	40
283008	at school	female	22
436749	left school	female	22
53833	never attended	female	22
9288	unspecified	female	22
74742	at school	male	23
23498	left school	male	23
305995	never attended	male	23
10031	unspecified	male	23
82804	at school	male	24
39942	left school	male	24
98870	never attended	male	24
3995	unspecified	male	24
168612	at school	male	26
148491	left school	male	26
39269	never attended	male	26
8003	unspecified	male	26
186421	at school	male	27
180459	left school	male	27
27666	never attended	male	27
13308	unspecified	male	27
79688	at school	female	28
63509	left school	female	28
22608	never attended	female	28
2575	unspecified	female	28
105437	at school	female	30
70993	left school	female	30
71016	never attended	female	30
2967	unspecified	female	30
70751	at school	female	31
76011	left school	female	31
34000	never attended	female	31
2901	unspecified	female	31
110961	at school	female	34
113589	left school	female	34
80594	never attended	female	34
116375	at school	female	35
116015	left school	female	35
27234	never attended	female	35
4817	unspecified	female	35
183299	at school	female	36
170290	left school	female	36
44822	never attended	female	36
8193	unspecified	female	36
325039	at school	female	37
321980	left school	female	37
110074	never attended	female	37
14562	unspecified	female	37
113537	at school	male	38
97565	left school	male	38
21596	never attended	male	38
4129	unspecified	male	38
284434	at school	female	39
263111	left school	female	39
70870	never attended	female	39
10888	unspecified	female	39
171257	at school	male	41
145636	left school	male	41
30181	never attended	male	41
8267	unspecified	male	41
192916	at school	female	42
202528	left school	female	42
42216	never attended	female	42
7958	unspecified	female	42
202153	at school	female	43
188355	left school	female	43
49350	never attended	female	43
8702	unspecified	female	43
261919	at school	female	45
259422	left school	female	45
64583	never attended	female	45
11741	unspecified	female	45
145122	at school	male	1
256692	left school	male	1
28937	never attended	male	1
15975	unspecified	male	1
140747	at school	female	1
217170	left school	female	1
46086	never attended	female	1
9433	unspecified	female	1
112517	at school	female	2
78655	left school	female	2
103738	never attended	female	2
4536	unspecified	female	2
30439	at school	female	4
19622	left school	female	4
54593	never attended	female	4
1438	unspecified	female	4
48372	at school	female	6
59282	left school	female	6
17187	never attended	female	6
3256	unspecified	female	6
66236	at school	female	8
16005	left school	female	8
189056	never attended	female	8
3802	unspecified	female	8
135154	at school	female	9
23368	left school	female	9
265814	never attended	female	9
5085	unspecified	female	9
33918	at school	female	10
9586	left school	female	10
82752	never attended	female	10
1384	unspecified	female	10
270674	at school	female	12
338970	left school	female	12
117716	never attended	female	12
13754	unspecified	female	12
25098	at school	female	13
23094	left school	female	13
12256	never attended	female	13
729	unspecified	female	13
5277	unspecified	female	15
177543	left school	female	17
57343	never attended	female	17
4009	unspecified	female	17
118192	at school	female	18
133197	left school	female	18
26387	never attended	female	18
3222	unspecified	female	18
120154	at school	female	19
183327	left school	female	19
24983	never attended	female	19
3409	unspecified	female	19
25014	at school	female	25
9974	left school	female	25
63516	never attended	female	25
1092	unspecified	female	25
155549	at school	female	21
221178	left school	female	21
46992	never attended	female	21
5019	unspecified	female	21
58804	at school	female	23
17211	left school	female	23
297540	never attended	female	23
7564	unspecified	female	23
75523	at school	female	24
35690	left school	female	24
114560	never attended	female	24
3617	unspecified	female	24
161152	at school	female	26
153592	left school	female	26
49323	never attended	female	26
5851	unspecified	female	26
181150	at school	female	27
177522	left school	female	27
36404	never attended	female	27
9694	unspecified	female	27
152881	at school	female	29
147118	left school	female	29
34849	never attended	female	29
5465	unspecified	female	29
300742	at school	female	32
343244	left school	female	32
72949	never attended	female	32
10846	unspecified	female	32
138785	at school	female	33
101282	left school	female	33
124728	never attended	female	33
7677	unspecified	female	33
4204	unspecified	female	34
112411	at school	female	38
119387	left school	female	38
30446	never attended	female	38
4078	unspecified	female	38
159208	at school	female	41
173592	left school	female	41
60846	never attended	female	41
7182	unspecified	female	41
190347	at school	female	44
170717	left school	female	44
48939	never attended	female	44
8557	unspecified	female	44
99258	at school	female	46
104435	left school	female	46
22252	never attended	female	46
3304	unspecified	female	46
487872	at school	female	47
821743	left school	female	47
72550	never attended	female	47
27302	unspecified	female	47
\.


--
-- Name: schoolattendance_sex_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY schoolattendance_sex_country
    ADD CONSTRAINT schoolattendance_sex_country_pkey PRIMARY KEY ("school attendance", sex, country_code);


--
-- Name: schoolattendance_sex_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY schoolattendance_sex_county
    ADD CONSTRAINT schoolattendance_sex_county_pkey PRIMARY KEY ("school attendance", sex, county_code);


--
-- Name: ix_schoolattendance_sex_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_schoolattendance_sex_country_country_code ON schoolattendance_sex_country USING btree (country_code);


--
-- Name: ix_schoolattendance_sex_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_schoolattendance_sex_county_county_code ON schoolattendance_sex_county USING btree (county_code);


--
-- Name: schoolattendance_sex_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY schoolattendance_sex_country
    ADD CONSTRAINT schoolattendance_sex_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: schoolattendance_sex_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY schoolattendance_sex_county
    ADD CONSTRAINT schoolattendance_sex_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

