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
-- Name: employmentactivitystatus_sex_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE employmentactivitystatus_sex_country (
    total integer NOT NULL,
    "employment activity status" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.employmentactivitystatus_sex_country OWNER TO censusreporter_ke;

--
-- Name: employmentactivitystatus_sex_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE employmentactivitystatus_sex_county (
    total integer NOT NULL,
    "employment activity status" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.employmentactivitystatus_sex_county OWNER TO censusreporter_ke;

--
-- Data for Name: employmentactivitystatus_sex_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY employmentactivitystatus_sex_country (total, "employment activity status", sex, country_code) FROM stdin;
7187753	economically inactive	female	KE
5636871	economically inactive	male	KE
7379465	employed	female	KE
8406866	employed	male	KE
833224	employment unclassified	female	KE
847509	employment unclassified	male	KE
1025923	seeking work / no work available	female	KE
1160959	seeking work / no work available	male	KE
\.


--
-- Data for Name: employmentactivitystatus_sex_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY employmentactivitystatus_sex_county (total, "employment activity status", sex, county_code) FROM stdin;
91650	economically inactive	female	7
60952	economically inactive	male	7
45518	employed	female	7
87187	employed	male	7
31600	employment unclassified	female	7
35682	employment unclassified	male	7
75506	seeking work / no work available	female	7
29580	economically inactive	female	11
19773	economically inactive	male	11
21966	employed	female	11
32430	employed	male	11
2469	employment unclassified	female	11
2995	employment unclassified	male	11
4011	seeking work / no work available	female	11
5232	seeking work / no work available	male	11
75339	economically inactive	female	14
60169	economically inactive	male	14
135987	employed	female	14
141061	employed	male	14
7865	employment unclassified	female	14
7962	employment unclassified	male	14
9240	seeking work / no work available	female	14
77475	economically inactive	female	20
70180	economically inactive	male	20
149981	employed	female	20
148860	employed	male	20
5775	employment unclassified	female	20
5414	employment unclassified	male	20
5059	seeking work / no work available	female	20
5318	seeking work / no work available	male	20
107984	economically inactive	female	40
95308	economically inactive	male	40
181388	employed	female	40
162143	employed	male	40
18700	employment unclassified	female	40
18340	employment unclassified	male	40
12672	seeking work / no work available	female	40
11805	seeking work / no work available	male	40
346243	economically inactive	female	22
249589	economically inactive	male	22
334977	employed	female	22
409108	employed	male	22
19188	employment unclassified	female	22
17438	employment unclassified	male	22
38958	seeking work / no work available	female	22
79831	economically inactive	female	28
61120	economically inactive	male	28
62897	employed	female	28
75895	employed	male	28
7927	employment unclassified	female	28
8073	employment unclassified	male	28
5095	seeking work / no work available	female	28
7481	seeking work / no work available	male	28
121166	economically inactive	female	30
89656	economically inactive	male	30
84223	employed	female	30
106126	employed	male	30
12437	employment unclassified	female	30
18154	employment unclassified	male	30
13576	seeking work / no work available	female	30
156840	economically inactive	female	34
105132	economically inactive	male	34
100033	employed	female	34
148926	employed	male	34
10263	employment unclassified	female	34
9936	employment unclassified	male	34
19257	seeking work / no work available	female	34
21042	seeking work / no work available	male	34
100699	economically inactive	female	35
91281	economically inactive	male	35
127056	employed	female	35
139723	employed	male	35
9770	employment unclassified	female	35
9790	employment unclassified	male	35
7534	seeking work / no work available	female	35
151105	economically inactive	female	36
144033	economically inactive	male	36
202342	employed	female	36
197820	employed	male	36
16505	employment unclassified	female	36
16581	employment unclassified	male	36
6207	seeking work / no work available	female	36
7605	seeking work / no work available	male	36
281467	economically inactive	female	37
242050	economically inactive	male	37
359333	employed	female	37
338187	employed	male	37
35149	employment unclassified	female	37
34657	employment unclassified	male	37
36492	seeking work / no work available	female	37
37125	seeking work / no work available	male	37
209865	economically inactive	female	39
191291	economically inactive	male	39
323073	employed	female	39
308149	employed	male	39
27697	employment unclassified	female	39
27236	employment unclassified	male	39
18116	seeking work / no work available	female	39
161767	economically inactive	female	43
147037	economically inactive	male	43
207466	employed	female	43
185908	employed	male	43
20433	employment unclassified	female	43
19889	employment unclassified	male	43
23429	seeking work / no work available	female	43
20313	seeking work / no work available	male	43
209595	economically inactive	female	45
205434	economically inactive	male	45
306267	employed	female	45
251369	employed	male	45
156110	economically inactive	female	2
111685	economically inactive	male	2
93362	employed	female	2
113403	employed	male	2
7525	employment unclassified	female	2
7314	employment unclassified	male	2
17473	seeking work / no work available	female	2
22630	seeking work / no work available	male	2
18395	economically inactive	female	5
10593	economically inactive	male	5
17711	employed	female	5
28331	employed	male	5
2887	employment unclassified	female	5
3212	employment unclassified	male	5
1476	seeking work / no work available	female	5
178676	economically inactive	female	9
154258	economically inactive	male	9
112641	employed	female	9
194734	employed	male	9
30135	employment unclassified	female	9
35942	employment unclassified	male	9
72459	seeking work / no work available	female	9
99972	seeking work / no work available	male	9
56360	economically inactive	female	10
30986	economically inactive	male	10
42275	employed	female	10
71951	employed	male	10
10221	employment unclassified	female	10
11437	employment unclassified	male	10
8610	seeking work / no work available	female	10
272712	economically inactive	female	12
219699	economically inactive	male	12
372542	employed	female	12
397306	employed	male	12
26531	employment unclassified	female	12
26720	employment unclassified	male	12
22672	seeking work / no work available	female	12
26730	seeking work / no work available	male	12
225825	economically inactive	female	15
174380	economically inactive	male	15
177456	employed	female	15
174406	employed	male	15
20681	employment unclassified	female	15
19888	employment unclassified	male	15
26241	seeking work / no work available	female	15
259330	economically inactive	female	16
187415	economically inactive	male	16
182069	employed	female	16
230980	employed	male	16
21186	employment unclassified	female	16
21008	employment unclassified	male	16
19147	seeking work / no work available	female	16
26349	seeking work / no work available	male	16
243658	economically inactive	female	17
186066	economically inactive	male	17
124015	employed	female	17
148453	employed	male	17
10524	employment unclassified	female	17
10316	employment unclassified	male	17
12096	seeking work / no work available	female	17
18700	seeking work / no work available	male	17
168660	economically inactive	female	21
143205	economically inactive	male	21
221099	employed	female	21
213306	employed	male	21
7661	employment unclassified	female	21
7893	employment unclassified	male	21
9009	seeking work / no work available	female	21
78306	economically inactive	female	31
59632	economically inactive	male	31
73805	employed	female	31
85723	employed	male	31
8081	employment unclassified	female	31
8277	employment unclassified	male	31
10838	seeking work / no work available	female	31
12970	seeking work / no work available	male	31
298773	economically inactive	female	32
240432	economically inactive	male	32
310256	employed	female	32
365594	employed	male	32
26367	employment unclassified	female	32
25615	employment unclassified	male	32
41244	seeking work / no work available	female	32
205790	economically inactive	female	42
167986	economically inactive	male	42
165899	employed	female	42
181313	employed	male	42
16431	employment unclassified	female	42
15601	employment unclassified	male	42
24337	seeking work / no work available	female	42
143345	economically inactive	female	44
135462	economically inactive	male	44
208282	employed	female	44
189157	employed	male	44
16780	employment unclassified	female	44
16268	employment unclassified	male	44
14664	seeking work / no work available	female	44
12405	seeking work / no work available	male	44
25394	employment unclassified	female	45
24462	employment unclassified	male	45
12455	seeking work / no work available	female	45
12387	seeking work / no work available	male	45
552949	economically inactive	female	47
357700	economically inactive	male	47
562550	employed	female	47
848679	employed	male	47
80281	employment unclassified	female	47
68295	employment unclassified	male	47
131955	seeking work / no work available	female	47
58149	economically inactive	female	6
41810	economically inactive	male	6
51973	employed	female	6
67920	employed	male	6
3931	employment unclassified	female	6
4228	employment unclassified	male	6
4905	seeking work / no work available	female	6
6927	seeking work / no work available	male	6
92518	economically inactive	female	8
74270	economically inactive	male	8
73429	employed	female	8
122893	employed	male	8
27004	employment unclassified	female	8
32387	employment unclassified	male	8
59853	seeking work / no work available	female	8
17968	economically inactive	female	13
15543	economically inactive	male	13
35735	employed	female	13
33639	employed	male	13
1657	employment unclassified	female	13
1600	employment unclassified	male	13
1578	seeking work / no work available	female	13
1475	seeking work / no work available	male	13
109293	economically inactive	female	18
100673	economically inactive	male	18
141447	employed	female	18
134559	employed	male	18
6878	employment unclassified	female	18
6975	employment unclassified	male	18
5230	seeking work / no work available	female	18
133645	economically inactive	female	19
108726	economically inactive	male	19
167919	employed	female	19
173014	employed	male	19
5903	employment unclassified	female	19
5824	employment unclassified	male	19
8319	seeking work / no work available	female	19
9914	seeking work / no work available	male	19
30840	economically inactive	female	25
20012	economically inactive	male	25
38202	employed	female	25
46446	employed	male	25
12747	employment unclassified	female	25
13693	employment unclassified	male	25
8660	seeking work / no work available	female	25
88634	economically inactive	female	23
55721	economically inactive	male	23
161343	employed	female	23
203342	employed	male	23
60866	employment unclassified	female	23
72985	employment unclassified	male	23
43415	seeking work / no work available	female	23
51665	seeking work / no work available	male	23
87619	economically inactive	female	24
66029	economically inactive	male	24
171479	economically inactive	female	26
139081	economically inactive	male	26
139432	employed	female	26
163549	employed	male	26
10524	employment unclassified	female	26
10213	employment unclassified	male	26
19892	seeking work / no work available	female	26
20468	seeking work / no work available	male	26
198922	economically inactive	female	27
144024	economically inactive	male	27
121173	employed	female	27
173910	employed	male	27
31220	employment unclassified	female	27
29314	employment unclassified	male	27
24978	seeking work / no work available	female	27
157441	economically inactive	female	29
124631	economically inactive	male	29
133650	employed	female	29
162599	employed	male	29
15095	employment unclassified	female	29
15403	employment unclassified	male	29
8771	seeking work / no work available	female	29
10505	seeking work / no work available	male	29
42395	seeking work / no work available	male	32
137235	economically inactive	female	33
104109	economically inactive	male	33
162664	employed	female	33
194267	employed	male	33
24818	employment unclassified	female	33
27378	employment unclassified	male	33
13179	seeking work / no work available	female	33
114550	economically inactive	female	38
94385	economically inactive	male	38
106219	employed	female	38
95604	employed	male	38
10870	employment unclassified	female	38
10658	employment unclassified	male	38
17025	seeking work / no work available	female	38
17996	seeking work / no work available	male	38
141486	economically inactive	female	41
123269	economically inactive	male	41
198561	employed	female	41
172400	employed	male	41
16947	employment unclassified	female	41
16195	employment unclassified	male	41
15002	seeking work / no work available	female	41
86652	economically inactive	female	46
85942	economically inactive	male	46
116913	employed	female	46
98750	employed	male	46
6047	employment unclassified	female	46
5902	employment unclassified	male	46
3675	seeking work / no work available	female	46
3852	seeking work / no work available	male	46
207767	economically inactive	female	1
122080	economically inactive	male	1
121216	employed	female	1
231152	employed	male	1
17087	employment unclassified	female	1
14812	employment unclassified	male	1
39565	seeking work / no work available	female	1
44482	seeking work / no work available	male	1
249565	economically inactive	female	3
180864	economically inactive	male	3
172688	employed	female	3
196490	employed	male	3
24889	employment unclassified	female	3
23518	employment unclassified	male	3
28974	seeking work / no work available	female	3
33962	seeking work / no work available	male	3
44495	economically inactive	female	4
23198	economically inactive	male	4
34930	employed	female	4
51451	employed	male	4
7382	employment unclassified	female	4
7858	employment unclassified	male	4
9621	seeking work / no work available	female	4
12217	seeking work / no work available	male	4
2096	seeking work / no work available	male	5
100900	seeking work / no work available	male	7
83840	seeking work / no work available	male	8
11929	seeking work / no work available	male	10
10148	seeking work / no work available	male	14
27913	seeking work / no work available	male	15
6827	seeking work / no work available	male	18
9465	seeking work / no work available	male	25
12905	seeking work / no work available	male	21
42702	seeking work / no work available	male	22
95502	employed	female	24
108653	employed	male	24
12896	employment unclassified	female	24
14171	employment unclassified	male	24
13453	seeking work / no work available	female	24
16001	seeking work / no work available	male	24
28399	seeking work / no work available	male	27
16772	seeking work / no work available	male	30
14017	seeking work / no work available	male	33
8223	seeking work / no work available	male	35
17991	seeking work / no work available	male	39
13483	seeking work / no work available	male	41
22109	seeking work / no work available	male	42
111317	seeking work / no work available	male	47
\.


--
-- Name: employmentactivitystatus_sex_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY employmentactivitystatus_sex_country
    ADD CONSTRAINT employmentactivitystatus_sex_country_pkey PRIMARY KEY ("employment activity status", sex, country_code);


--
-- Name: employmentactivitystatus_sex_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY employmentactivitystatus_sex_county
    ADD CONSTRAINT employmentactivitystatus_sex_county_pkey PRIMARY KEY ("employment activity status", sex, county_code);


--
-- Name: ix_employmentactivitystatus_sex_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_employmentactivitystatus_sex_country_country_code ON employmentactivitystatus_sex_country USING btree (country_code);


--
-- Name: ix_employmentactivitystatus_sex_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_employmentactivitystatus_sex_county_county_code ON employmentactivitystatus_sex_county USING btree (county_code);


--
-- Name: employmentactivitystatus_sex_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY employmentactivitystatus_sex_country
    ADD CONSTRAINT employmentactivitystatus_sex_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: employmentactivitystatus_sex_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY employmentactivitystatus_sex_county
    ADD CONSTRAINT employmentactivitystatus_sex_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

