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
-- Name: maintypeofroofingmaterial_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeofroofingmaterial_country (
    total integer NOT NULL,
    "main type of roofing material" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeofroofingmaterial_country OWNER TO censusreporter_ke;

--
-- Name: maintypeofroofingmaterial_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeofroofingmaterial_county (
    total integer NOT NULL,
    "main type of roofing material" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeofroofingmaterial_county OWNER TO censusreporter_ke;

--
-- Data for Name: maintypeofroofingmaterial_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeofroofingmaterial_country (total, "main type of roofing material", country_code) FROM stdin;
197217	asbestos sheets	KE
311379	concrete	KE
6398622	corrugated iron sheets	KE
1194210	grass	KE
283141	makuti	KE
69715	mud/dung	KE
64866	other	KE
193792	tiles	KE
25155	tin	KE
\.


--
-- Data for Name: maintypeofroofingmaterial_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeofroofingmaterial_county (total, "main type of roofing material", county_code) FROM stdin;
1597	asbestos sheets	30
127	concrete	30
64044	corrugated iron sheets	30
42860	grass	30
223	makuti	30
68	mud/dung	30
266	other	30
1109	tiles	30
132	tin	30
2417	asbestos sheets	36
1280	concrete	36
126571	corrugated iron sheets	36
41326	grass	36
336	makuti	36
158	mud/dung	36
48	other	36
1641	tiles	36
517	tin	36
7131	asbestos sheets	39
363	concrete	39
210417	corrugated iron sheets	39
49928	grass	39
229	makuti	39
116	mud/dung	39
351	other	39
1534	tiles	39
532	tin	39
2568	asbestos sheets	40
150	concrete	40
77297	corrugated iron sheets	40
72762	grass	40
214	makuti	40
38	mud/dung	40
153	other	40
798	tiles	40
100	tin	40
890	asbestos sheets	28
65	concrete	28
44911	corrugated iron sheets	28
30179	grass	28
161	makuti	28
56	mud/dung	28
446	other	28
720	tiles	28
110	tin	28
3090	asbestos sheets	14
710	concrete	14
121230	corrugated iron sheets	14
4325	grass	14
169	makuti	14
51	mud/dung	14
54	other	14
1424	tiles	14
145	tin	14
2427	asbestos sheets	7
220	concrete	7
28769	corrugated iron sheets	7
59267	grass	7
4537	makuti	7
769	mud/dung	7
836	other	7
744	tiles	7
701	tin	7
3289	asbestos sheets	43
131	concrete	43
169537	corrugated iron sheets	43
31181	grass	43
259	makuti	43
78	mud/dung	43
43	other	43
1144	tiles	43
446	tin	43
459	asbestos sheets	11
100	concrete	11
19025	corrugated iron sheets	11
6499	grass	11
1823	makuti	11
1060	mud/dung	11
1576	other	11
208	tiles	11
555	tin	11
5520	asbestos sheets	34
5799	concrete	34
115996	corrugated iron sheets	34
18406	grass	34
693	makuti	34
17838	mud/dung	34
1215	other	34
6884	tiles	34
712	tin	34
8605	asbestos sheets	37
509	concrete	37
272421	corrugated iron sheets	37
70575	grass	37
284	makuti	37
143	mud/dung	37
160	other	37
2066	tiles	37
612	tin	37
1568	asbestos sheets	35
1483	concrete	35
103851	corrugated iron sheets	35
18671	grass	35
134	makuti	35
92	mud/dung	35
134	other	35
1037	tiles	35
255	tin	35
8616	asbestos sheets	22
30984	concrete	22
423968	corrugated iron sheets	22
845	grass	22
540	makuti	22
119	mud/dung	22
649	other	22
15256	tiles	22
810	tin	22
5039	asbestos sheets	3
3498	concrete	3
83604	corrugated iron sheets	3
14458	grass	3
88633	makuti	3
84	mud/dung	3
218	other	3
1978	tiles	3
339	tin	3
4011	asbestos sheets	20
1287	concrete	20
146203	corrugated iron sheets	20
956	grass	20
41	makuti	20
49	mud/dung	20
182	other	20
1155	tiles	20
97	tin	20
8598	asbestos sheets	45
1669	concrete	45
225456	corrugated iron sheets	45
30638	grass	45
443	makuti	45
124	mud/dung	45
49	other	45
1604	tiles	45
873	tin	45
6075	asbestos sheets	42
2370	concrete	42
192366	corrugated iron sheets	42
20515	grass	42
231	makuti	42
108	mud/dung	42
144	other	42
3841	tiles	42
487	tin	42
3385	asbestos sheets	15
298	concrete	15
156845	corrugated iron sheets	15
41198	grass	15
753	makuti	15
127	mud/dung	15
264	other	15
2257	tiles	15
285	tin	15
2199	asbestos sheets	2
250	concrete	2
45196	corrugated iron sheets	2
12240	grass	2
60569	makuti	2
63	mud/dung	2
228	other	2
695	tiles	2
251	tin	2
2776	asbestos sheets	31
1432	concrete	31
83142	corrugated iron sheets	31
9620	grass	31
442	makuti	31
2627	mud/dung	31
963	other	31
1423	tiles	31
656	tin	31
656	asbestos sheets	5
2464	concrete	5
6955	corrugated iron sheets	5
3611	grass	5
7670	makuti	5
16	mud/dung	5
495	other	5
70	tiles	5
76	tin	5
4114	asbestos sheets	16
8066	concrete	16
235065	corrugated iron sheets	16
11777	grass	16
313	makuti	16
132	mud/dung	16
284	other	16
4278	tiles	16
313	tin	16
2195	asbestos sheets	17
276	concrete	17
161275	corrugated iron sheets	17
20425	grass	17
447	makuti	17
53	mud/dung	17
68	other	17
1425	tiles	17
116	tin	17
531	asbestos sheets	9
142	concrete	9
14372	corrugated iron sheets	9
77307	grass	9
31088	makuti	9
265	mud/dung	9
1009	other	9
619	tiles	9
138	tin	9
584	asbestos sheets	10
27	concrete	10
15613	corrugated iron sheets	10
13789	grass	10
6661	makuti	10
452	mud/dung	10
18606	other	10
126	tiles	10
853	tin	10
10844	asbestos sheets	12
1092	concrete	12
352331	corrugated iron sheets	12
10920	grass	12
1133	makuti	12
375	mud/dung	12
303	other	12
2998	tiles	12
509	tin	12
4341	asbestos sheets	44
211	concrete	44
136532	corrugated iron sheets	44
37312	grass	44
175	makuti	44
86	mud/dung	44
50	other	44
1098	tiles	44
165	tin	44
8338	asbestos sheets	1
24683	concrete	1
201639	corrugated iron sheets	1
261	grass	1
11418	makuti	1
344	mud/dung	1
332	other	1
9111	tiles	1
1128	tin	1
4132	asbestos sheets	21
4372	concrete	21
228723	corrugated iron sheets	21
332	grass	21
86	makuti	21
110	mud/dung	21
85	other	21
3005	tiles	21
1487	tin	21
30463	asbestos sheets	47
208148	concrete	47
641697	corrugated iron sheets	47
185	grass	47
711	makuti	47
283	mud/dung	47
1638	other	47
95617	tiles	47
4373	tin	47
13084	asbestos sheets	32
3613	concrete	32
354675	corrugated iron sheets	32
23801	grass	32
661	makuti	32
547	mud/dung	32
2999	other	32
8644	tiles	32
1073	tin	32
2110	asbestos sheets	29
113	concrete	29
126222	corrugated iron sheets	29
22662	grass	29
150	makuti	29
33	mud/dung	29
187	other	29
1189	tiles	29
223	tin	29
4998	asbestos sheets	33
191	concrete	33
82259	corrugated iron sheets	33
56817	grass	33
1942	makuti	33
18677	mud/dung	33
2720	other	33
808	tiles	33
655	tin	33
1793	asbestos sheets	46
218	concrete	46
96374	corrugated iron sheets	46
6561	grass	46
148	makuti	46
30	mud/dung	46
10	other	46
901	tiles	46
30	tin	46
2864	asbestos sheets	18
252	concrete	18
135489	corrugated iron sheets	18
1138	grass	18
102	makuti	18
22	mud/dung	18
1679	other	18
866	tiles	18
81	tin	18
4441	asbestos sheets	19
2375	concrete	19
190494	corrugated iron sheets	19
898	grass	19
148	makuti	19
47	mud/dung	19
207	other	19
2376	tiles	19
367	tin	19
439	asbestos sheets	25
32	concrete	25
10747	corrugated iron sheets	25
5257	grass	25
5576	makuti	25
17966	mud/dung	25
5713	other	25
349	tiles	25
1152	tin	25
1861	asbestos sheets	41
198	concrete	41
130934	corrugated iron sheets	41
63799	grass	41
200	makuti	41
69	mud/dung	41
56	other	41
1224	tiles	41
323	tin	41
2098	asbestos sheets	6
299	concrete	6
60246	corrugated iron sheets	6
4678	grass	6
1064	makuti	6
82	mud/dung	6
166	other	6
884	tiles	6
522	tin	6
681	asbestos sheets	4
19	concrete	4
12498	corrugated iron sheets	4
26680	grass	4
6576	makuti	4
19	mud/dung	4
546	other	4
193	tiles	4
62	tin	4
855	asbestos sheets	13
10	concrete	13
21477	corrugated iron sheets	13
4769	grass	13
65	makuti	13
10	mud/dung	13
29	other	13
159	tiles	13
15	tin	13
4836	asbestos sheets	26
286	concrete	26
138404	corrugated iron sheets	26
22979	grass	26
280	makuti	26
83	mud/dung	26
844	other	26
1721	tiles	26
199	tin	26
1447	asbestos sheets	23
53	concrete	23
16925	corrugated iron sheets	23
42370	grass	23
43605	makuti	23
195	mud/dung	23
16104	other	23
456	tiles	23
1780	tin	23
5088	asbestos sheets	27
1150	concrete	27
170243	corrugated iron sheets	27
15613	grass	27
171	makuti	27
114	mud/dung	27
2403	other	27
6432	tiles	27
402	tin	27
3026	asbestos sheets	38
239	concrete	38
113898	corrugated iron sheets	38
4694	grass	38
90	makuti	38
46	mud/dung	38
23	other	38
891	tiles	38
334	tin	38
399	asbestos sheets	8
93	concrete	8
9230	corrugated iron sheets	8
76293	grass	8
1708	makuti	8
152	mud/dung	8
188	other	8
319	tiles	8
111	tin	8
739	asbestos sheets	24
32	concrete	24
23456	corrugated iron sheets	24
62833	grass	24
239	makuti	24
5739	mud/dung	24
143	other	24
515	tiles	24
53	tin	24
\.


--
-- Name: maintypeofroofingmaterial_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeofroofingmaterial_country
    ADD CONSTRAINT maintypeofroofingmaterial_country_pkey PRIMARY KEY ("main type of roofing material", country_code);


--
-- Name: maintypeofroofingmaterial_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeofroofingmaterial_county
    ADD CONSTRAINT maintypeofroofingmaterial_county_pkey PRIMARY KEY ("main type of roofing material", county_code);


--
-- Name: ix_maintypeofroofingmaterial_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeofroofingmaterial_country_country_code ON maintypeofroofingmaterial_country USING btree (country_code);


--
-- Name: ix_maintypeofroofingmaterial_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeofroofingmaterial_county_county_code ON maintypeofroofingmaterial_county USING btree (county_code);


--
-- Name: maintypeofroofingmaterial_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeofroofingmaterial_country
    ADD CONSTRAINT maintypeofroofingmaterial_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: maintypeofroofingmaterial_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeofroofingmaterial_county
    ADD CONSTRAINT maintypeofroofingmaterial_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

