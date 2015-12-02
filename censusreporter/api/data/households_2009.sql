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
-- Name: mainmodeofhumanwastedisposal_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE mainmodeofhumanwastedisposal_country (
    total integer NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.mainmodeofhumanwastedisposal_country OWNER TO censusreporter_ke;

--
-- Name: mainmodeofhumanwastedisposal_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE mainmodeofhumanwastedisposal_county (
    total integer NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.mainmodeofhumanwastedisposal_county OWNER TO censusreporter_ke;

--
-- Name: mainsourceofwater_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE mainsourceofwater_country (
    total integer NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.mainsourceofwater_country OWNER TO censusreporter_ke;

--
-- Name: mainsourceofwater_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE mainsourceofwater_county (
    total integer NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.mainsourceofwater_county OWNER TO censusreporter_ke;

--
-- Name: maintypeoflightingfuel_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeoflightingfuel_country (
    total integer NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeoflightingfuel_country OWNER TO censusreporter_ke;

--
-- Name: maintypeoflightingfuel_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeoflightingfuel_county (
    total integer NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeoflightingfuel_county OWNER TO censusreporter_ke;

--
-- Data for Name: mainmodeofhumanwastedisposal_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY mainmodeofhumanwastedisposal_country (total, "main mode of human waste disposal", country_code) FROM stdin;
22828	bucket	KE
1196509	bush	KE
29881	cess pool	KE
674541	main sewer	KE
14104	other	KE
299030	septic tank	KE
\.


--
-- Data for Name: mainmodeofhumanwastedisposal_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY mainmodeofhumanwastedisposal_county (total, "main mode of human waste disposal", county_code) FROM stdin;
196	bucket	2
62342	bush	2
574	cess pool	2
614	main sewer	2
166	other	2
2723	septic tank	2
1152	bucket	3
67545	bush	3
930	cess pool	3
3234	main sewer	3
273	other	3
92	bucket	5
4822	bush	5
97	cess pool	5
75	main sewer	5
78	other	5
759	septic tank	5
308	bucket	7
46934	bush	7
150	cess pool	7
1121	main sewer	7
557	other	7
851	septic tank	7
168	bucket	9
82437	bush	9
226	cess pool	9
122	main sewer	9
404	other	9
24	bucket	10
36636	bush	10
23	cess pool	10
22	main sewer	10
131	other	10
118	septic tank	10
36	bucket	11
13739	bush	11
17	cess pool	11
1557	main sewer	11
107	other	11
277	bucket	12
8257	bush	12
874	cess pool	12
2306	main sewer	12
540	other	12
6029	septic tank	12
78	bucket	14
2188	bush	14
469	cess pool	14
3264	main sewer	14
83	other	14
86	bucket	15
63204	bush	15
217	cess pool	15
433	main sewer	15
216	other	15
1269	septic tank	15
307	bucket	16
6989	bush	16
1175	cess pool	16
11666	main sewer	16
524	other	16
8944	septic tank	16
78	bucket	17
3811	bush	17
249	cess pool	17
1032	main sewer	17
74	other	17
245	bucket	20
807	bush	20
252	cess pool	20
1222	main sewer	20
147	other	20
4985	septic tank	20
135	bucket	40
12033	bush	40
178	cess pool	40
545	main sewer	40
223	other	40
116	bucket	21
415	bush	21
491	bucket	22
1118	bush	22
1862	cess pool	22
31288	main sewer	22
264	other	22
44518	septic tank	22
51	bucket	28
14465	bush	28
33	cess pool	28
295	main sewer	28
34	other	28
40	bucket	30
47510	bush	30
80	cess pool	30
296	main sewer	30
59	other	30
1111	septic tank	30
84	bucket	31
11626	bush	31
194	cess pool	31
10324	main sewer	31
70	other	31
232	bucket	34
44197	bush	34
478	cess pool	34
2407	main sewer	34
316	other	34
17157	septic tank	34
129	bucket	35
10080	bush	35
107	cess pool	35
2695	main sewer	35
78	other	35
96	bucket	36
8639	bush	36
144	cess pool	36
565	main sewer	36
113	other	36
546	septic tank	36
336	bucket	37
4941	bush	37
3040	bucket	1
5723	bush	1
3698	cess pool	1
37225	main sewer	1
494	other	1
35307	septic tank	1
14764	septic tank	3
104	bucket	4
33291	bush	4
30	cess pool	4
132	main sewer	4
103	other	4
261	septic tank	4
31	bucket	6
3948	bush	6
185	cess pool	6
953	main sewer	6
86	other	6
3223	septic tank	6
6660	bucket	8
67723	bush	8
59	cess pool	8
151	main sewer	8
239	other	8
329	septic tank	8
87	septic tank	9
622	septic tank	11
8	bucket	13
2541	bush	13
9	cess pool	13
19	main sewer	13
26	other	13
81	septic tank	13
4076	septic tank	14
632	septic tank	17
116	bucket	18
223	bush	18
110	cess pool	18
346	main sewer	18
39	other	18
1022	septic tank	18
196	bucket	19
486	bush	19
584	cess pool	19
9633	main sewer	19
34	other	19
7083	septic tank	19
19	bucket	25
34746	bush	25
30	cess pool	25
94	main sewer	25
33	other	25
295	septic tank	25
808	septic tank	40
419	cess pool	21
3967	main sewer	21
101	other	21
3578	septic tank	21
67	bucket	23
100997	bush	23
133	cess pool	23
192	main sewer	23
230	other	23
252	septic tank	23
41	bucket	24
62901	bush	24
56	cess pool	24
132	main sewer	24
42	other	24
156	septic tank	24
173	bucket	26
4346	bush	26
200	cess pool	26
2802	main sewer	26
261	other	26
1377	septic tank	26
293	bucket	27
3374	bush	27
315	cess pool	27
16411	main sewer	27
330	other	27
6845	septic tank	27
333	septic tank	28
58	bucket	29
7173	bush	29
146	cess pool	29
599	main sewer	29
295	other	29
663	septic tank	29
1886	septic tank	31
554	bucket	32
11262	bush	32
3148	cess pool	32
32864	main sewer	32
339	other	32
14507	septic tank	32
122	bucket	33
81700	bush	33
122	cess pool	33
755	main sewer	33
209	other	33
1429	septic tank	33
1316	septic tank	35
466	cess pool	37
5272	main sewer	37
570	other	37
2879	septic tank	37
55	bucket	38
908	bush	38
78	cess pool	38
374	main sewer	38
98	other	38
275	septic tank	38
303	bucket	39
8060	bush	39
282	cess pool	39
1936	main sewer	39
743	other	39
2086	septic tank	39
154	bucket	41
39793	bush	41
199	cess pool	41
396	main sewer	41
385	other	41
512	septic tank	41
275	bucket	42
27440	bush	42
294	cess pool	42
10933	main sewer	42
758	other	42
5513	septic tank	42
171	bucket	43
79509	bush	43
111	cess pool	43
1869	main sewer	43
481	other	43
354	septic tank	43
215	bucket	44
59404	bush	44
125	cess pool	44
861	main sewer	44
245	other	44
595	septic tank	44
128	bucket	45
1726	bush	45
214	cess pool	45
1640	main sewer	45
304	other	45
1191	septic tank	45
5205	bucket	47
3962	bush	47
10489	cess pool	47
469830	main sewer	47
3180	other	47
83	bucket	46
538	bush	46
50	cess pool	46
72	main sewer	46
22	other	46
273	septic tank	46
95410	septic tank	47
\.


--
-- Data for Name: mainsourceofwater_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY mainsourceofwater_country (total, "main source of water", country_code) FROM stdin;
95279	jabia/rain/harvested	KE
352821	lake	KE
22586	other	KE
2023745	piped	KE
602884	piped into dwelling	KE
97925	pond/dam	KE
3106622	spring/well/borehole	KE
1893004	stream	KE
573088	water vendor	KE
\.


--
-- Data for Name: mainsourceofwater_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY mainsourceofwater_county (total, "main source of water", county_code) FROM stdin;
4620	jabia/rain/harvested	22
3873	lake	22
164	other	22
158445	piped	22
60224	piped into dwelling	22
163	pond/dam	22
153734	spring/well/borehole	22
57079	stream	22
44148	water vendor	22
148	jabia/rain/harvested	28
606	lake	28
29	other	28
13426	piped	28
1856	piped into dwelling	28
60	pond/dam	28
18869	spring/well/borehole	28
42315	stream	28
246	water vendor	28
440	jabia/rain/harvested	30
7123	lake	30
3384	other	30
13623	piped	30
1925	piped into dwelling	30
2344	pond/dam	30
22901	spring/well/borehole	30
57714	stream	30
1195	water vendor	30
1325	jabia/rain/harvested	34
6889	lake	34
261	other	34
48283	piped	34
15602	piped into dwelling	34
299	pond/dam	34
60198	spring/well/borehole	34
15482	stream	34
25125	water vendor	34
935	jabia/rain/harvested	35
1334	lake	35
39	other	35
23743	piped	35
15249	piped into dwelling	35
90	pond/dam	35
31603	spring/well/borehole	35
52052	stream	35
2536	water vendor	35
2353	jabia/rain/harvested	36
26480	lake	36
49	other	36
16819	piped	36
7910	piped into dwelling	36
229	pond/dam	36
44261	spring/well/borehole	36
75666	stream	36
1147	water vendor	36
1250	jabia/rain/harvested	37
2463	lake	37
109	other	37
14459	piped	37
6263	piped into dwelling	37
264	pond/dam	37
26218	lake	3
618	jabia/rain/harvested	7
3797	lake	7
9514	other	7
24492	piped	7
3233	piped into dwelling	7
120	pond/dam	7
46371	spring/well/borehole	7
7506	stream	7
71	jabia/rain/harvested	11
213	lake	11
162	other	11
13413	piped	11
2010	piped into dwelling	11
3	pond/dam	11
11018	spring/well/borehole	11
3386	stream	11
607	jabia/rain/harvested	14
4662	lake	14
146	other	14
37288	piped	14
11810	piped into dwelling	14
99	pond/dam	14
32127	spring/well/borehole	14
40822	stream	14
4122	water vendor	14
1336	jabia/rain/harvested	15
9583	lake	15
49	other	15
13758	piped	15
1968	piped into dwelling	15
294	pond/dam	15
756	jabia/rain/harvested	20
318	lake	20
79	other	20
51515	piped	20
10975	piped into dwelling	20
28	pond/dam	20
24356	spring/well/borehole	20
63242	stream	20
260	jabia/rain/harvested	40
1800	lake	40
44	other	40
7689	piped	40
986	piped into dwelling	40
5033	pond/dam	40
118850	spring/well/borehole	40
18793	stream	40
770	water vendor	40
248628	spring/well/borehole	37
80202	stream	37
2041	water vendor	37
394	jabia/rain/harvested	39
729	lake	39
55	other	39
23765	piped	39
4186	piped into dwelling	39
168	pond/dam	39
212514	spring/well/borehole	39
25720	stream	39
3293	water vendor	39
2362	jabia/rain/harvested	42
9735	lake	42
72	other	42
49658	piped	42
7653	piped into dwelling	42
5287	pond/dam	42
76589	spring/well/borehole	42
55491	stream	42
1353	jabia/rain/harvested	43
24289	lake	43
114	other	43
9969	piped	43
1625	piped into dwelling	43
34914	pond/dam	43
66615	spring/well/borehole	43
64696	stream	43
2680	water vendor	43
2510	jabia/rain/harvested	45
437	lake	45
55	other	45
8007	piped	45
2449	piped into dwelling	45
147	pond/dam	45
170166	spring/well/borehole	45
84837	stream	45
8537	jabia/rain/harvested	21
1583	lake	21
82	other	21
46955	piped	21
10802	piped into dwelling	21
96	pond/dam	21
57400	spring/well/borehole	21
112927	stream	21
4108	water vendor	21
859	jabia/rain/harvested	29
1656	lake	29
30	other	29
17747	piped	29
3234	piped into dwelling	29
116	pond/dam	29
64729	spring/well/borehole	29
64381	stream	29
1321	water vendor	29
1580	jabia/rain/harvested	31
7847	lake	31
48	other	31
21809	piped	31
8753	piped into dwelling	31
40	pond/dam	31
32560	spring/well/borehole	31
26873	stream	31
3604	water vendor	31
15511	jabia/rain/harvested	32
8131	lake	32
609	other	32
118036	piped	32
32572	piped into dwelling	32
1625	pond/dam	32
106202	spring/well/borehole	32
69081	stream	32
58069	water vendor	32
1589	jabia/rain/harvested	33
22845	lake	33
672	other	33
10241	piped	33
1401	piped into dwelling	33
291	pond/dam	33
43601	spring/well/borehole	33
78939	stream	33
9641	water vendor	33
802	jabia/rain/harvested	44
9615	lake	44
232	other	44
2901	piped	44
1359	piped into dwelling	44
11291	pond/dam	44
81080	spring/well/borehole	44
71603	stream	44
1328	water vendor	44
2140	jabia/rain/harvested	46
660	lake	46
11	other	46
3666	piped	46
713	piped into dwelling	46
52	pond/dam	46
66466	spring/well/borehole	46
32287	stream	46
390	water vendor	46
1691	jabia/rain/harvested	47
2761	lake	47
687	other	47
514943	piped	47
230704	piped into dwelling	47
99	pond/dam	47
70729	spring/well/borehole	47
1345	stream	47
162057	water vendor	47
701	jabia/rain/harvested	2
25370	lake	2
125	other	2
31361	piped	2
3080	piped into dwelling	2
265	pond/dam	2
45131	spring/well/borehole	2
13470	stream	2
1652	jabia/rain/harvested	5
1396	lake	5
29	other	5
5030	piped	5
1732	piped into dwelling	5
146	pond/dam	5
11402	spring/well/borehole	5
532	stream	5
6167	jabia/rain/harvested	9
34942	lake	9
353	other	9
5769	piped	9
1426	piped into dwelling	9
118	pond/dam	9
51713	spring/well/borehole	9
8410	stream	9
16599	water vendor	9
1008	jabia/rain/harvested	10
5599	lake	10
53	other	10
3747	piped	10
147	piped into dwelling	10
724	pond/dam	10
39266	spring/well/borehole	10
350	stream	10
3276	jabia/rain/harvested	12
1214	lake	12
832	other	12
170912	piped	12
29737	piped into dwelling	12
449	pond/dam	12
43660	spring/well/borehole	12
102300	stream	12
28646	water vendor	12
87259	spring/well/borehole	15
83955	stream	15
7289	water vendor	15
1920	jabia/rain/harvested	16
20640	lake	16
138	other	16
27785	piped	16
9809	piped into dwelling	16
155	pond/dam	16
114074	spring/well/borehole	16
61163	stream	16
1158	jabia/rain/harvested	17
9380	lake	17
11	other	17
36034	piped	17
4529	piped into dwelling	17
77	pond/dam	17
64460	spring/well/borehole	17
62249	stream	17
8580	water vendor	17
9675	jabia/rain/harvested	18
11979	lake	18
32	other	18
29594	piped	18
5718	piped into dwelling	18
90	pond/dam	18
52806	spring/well/borehole	18
29165	stream	18
8206	jabia/rain/harvested	19
1111	lake	19
138	other	19
88332	piped	19
56	jabia/rain/harvested	23
692	lake	23
323	other	23
12945	piped	23
2313	piped into dwelling	23
3247	pond/dam	23
76203	spring/well/borehole	23
25515	stream	23
1897	water vendor	23
104	jabia/rain/harvested	24
3270	lake	24
15	other	24
7353	piped	24
1210	piped into dwelling	24
128	pond/dam	24
26259	spring/well/borehole	24
54977	stream	24
461	water vendor	24
407	jabia/rain/harvested	26
1197	lake	26
90	other	26
16880	piped	26
2822	piped into dwelling	26
85	pond/dam	26
110386	spring/well/borehole	26
34441	stream	26
3809	water vendor	26
214	jabia/rain/harvested	27
1638	lake	27
122	other	27
50168	piped	27
15465	piped into dwelling	27
135	pond/dam	27
113923	spring/well/borehole	27
17991	stream	27
2635	water vendor	27
1497	jabia/rain/harvested	38
416	lake	38
21	other	38
4155	piped	38
1387	piped into dwelling	38
57	pond/dam	38
87185	spring/well/borehole	38
27406	stream	38
1223	water vendor	38
2052	jabia/rain/harvested	41
28184	lake	41
38	other	41
11698	piped	41
1850	piped into dwelling	41
323	jabia/rain/harvested	1
1102	lake	1
147	other	1
110955	piped	1
31055	piped into dwelling	1
33	pond/dam	1
59144	spring/well/borehole	1
340	stream	1
65601	water vendor	1
2544	water vendor	2
1418	jabia/rain/harvested	3
582	other	3
93557	piped	3
14151	piped into dwelling	3
511	pond/dam	3
42476	spring/well/borehole	3
8636	stream	3
12215	water vendor	3
82	jabia/rain/harvested	4
3691	lake	4
2549	other	4
5024	piped	4
800	piped into dwelling	4
460	pond/dam	4
20399	spring/well/borehole	4
12703	stream	4
1706	water vendor	4
265	water vendor	5
134	jabia/rain/harvested	6
617	lake	6
52	other	6
37451	piped	6
4639	piped into dwelling	6
216	pond/dam	6
7532	spring/well/borehole	6
16368	stream	6
4081	water vendor	6
2939	water vendor	7
965	jabia/rain/harvested	8
12091	lake	8
211	other	8
1061	piped	8
249	piped into dwelling	8
26	pond/dam	8
62867	spring/well/borehole	8
48	stream	8
11056	water vendor	8
6047	water vendor	10
1050	water vendor	11
23	jabia/rain/harvested	13
21	lake	13
7	other	13
2895	piped	13
328	piped into dwelling	13
28	pond/dam	13
7828	spring/well/borehole	13
16084	stream	13
179	water vendor	13
28816	water vendor	16
4820	water vendor	18
24534	piped into dwelling	19
56	pond/dam	19
18701	spring/well/borehole	19
55794	stream	19
4831	water vendor	19
2951	water vendor	20
194	jabia/rain/harvested	25
2624	lake	25
22	other	25
6389	piped	25
441	piped into dwelling	25
233	pond/dam	25
25100	spring/well/borehole	25
11747	stream	25
604	water vendor	25
27534	pond/dam	41
77281	spring/well/borehole	41
46921	stream	41
3476	water vendor	41
19872	water vendor	42
1075	water vendor	45
\.


--
-- Data for Name: maintypeoflightingfuel_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeoflightingfuel_country (total, "main type of lighting fuel", country_code) FROM stdin;
1989740	electricity	KE
84375	gas lamps	KE
2670387	lanterns	KE
59751	other	KE
52240	pressure lamps	KE
396062	solar	KE
3373126	tin lamps	KE
142273	wood	KE
\.


--
-- Data for Name: maintypeoflightingfuel_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeoflightingfuel_county (total, "main type of lighting fuel", county_code) FROM stdin;
33423	electricity	3
911	gas lamps	3
33735	lanterns	3
665	other	3
1433	pressure lamps	3
3471	solar	3
125005	tin lamps	3
1121	wood	3
3767	electricity	5
158	gas lamps	5
7211	lanterns	5
428	other	5
135	pressure lamps	5
560	solar	5
11405	electricity	7
17277	gas lamps	7
20272	lanterns	7
6827	other	7
552	pressure lamps	7
10251	solar	7
31642	tin lamps	7
364	wood	7
5800	electricity	11
781	gas lamps	11
9751	lanterns	11
1015	other	11
154	pressure lamps	11
7283	solar	11
6113	tin lamps	11
19611	electricity	14
778	gas lamps	14
46512	lanterns	14
626	other	14
992	pressure lamps	14
1114	solar	14
57535	tin lamps	14
4515	wood	14
9850	electricity	15
1372	gas lamps	15
111037	lanterns	15
1277	other	15
1192	pressure lamps	15
10311	solar	15
64450	tin lamps	15
25353	electricity	20
1005	gas lamps	20
51589	lanterns	20
367	other	20
1028	pressure lamps	20
413	solar	20
69116	tin lamps	20
5349	wood	20
9253	electricity	40
709	gas lamps	40
33283	lanterns	40
338	other	40
494	pressure lamps	40
566	solar	40
108949	tin lamps	40
255704	electricity	22
1428	gas lamps	22
125860	lanterns	22
1866	other	22
3345	pressure lamps	22
735	solar	22
89701	tin lamps	22
5547	electricity	28
449	gas lamps	28
36321	lanterns	28
228	other	28
220	pressure lamps	28
11744	solar	28
21891	tin lamps	28
1155	wood	28
10583	electricity	30
796	gas lamps	30
43488	lanterns	30
471	other	30
437	pressure lamps	30
30734	solar	30
22238	tin lamps	30
18222	electricity	31
740	gas lamps	31
36366	lanterns	31
428	other	31
542	pressure lamps	31
5276	solar	31
35413	tin lamps	31
6127	wood	31
69098	electricity	34
706	gas lamps	34
32788	lanterns	34
1780	other	34
1430	pressure lamps	34
3804	solar	34
62031	tin lamps	34
15005	electricity	35
587	gas lamps	35
58865	lanterns	35
212	other	35
505	pressure lamps	35
361	solar	35
49875	tin lamps	35
2171	wood	35
7552	electricity	36
1135	gas lamps	36
113311	lanterns	36
499	other	36
581	pressure lamps	36
1444	solar	36
45434	tin lamps	36
19959	electricity	37
2718	gas lamps	37
100156	lanterns	37
483	other	37
1791	pressure lamps	37
1367	solar	37
226650	tin lamps	37
2555	wood	37
12219	electricity	39
1704	gas lamps	39
72256	lanterns	39
458	other	39
1351	pressure lamps	39
1493	solar	39
1184	electricity	4
604	gas lamps	4
9590	lanterns	4
1279	other	4
86	pressure lamps	4
2785	solar	4
31438	tin lamps	4
448	wood	4
8752	tin lamps	5
1173	wood	5
10653	electricity	6
257	gas lamps	6
32595	lanterns	6
450	other	6
353	pressure lamps	6
412	solar	6
24732	tin lamps	6
1638	wood	6
3198	electricity	9
13845	gas lamps	9
41321	lanterns	9
4340	other	9
271	pressure lamps	9
45240	solar	9
16989	tin lamps	9
293	wood	9
4258	electricity	10
1665	gas lamps	10
13084	lanterns	10
2879	other	10
69	pressure lamps	10
27355	solar	10
6953	tin lamps	10
50004	electricity	12
3018	gas lamps	12
112946	lanterns	12
1519	other	12
2388	pressure lamps	12
7015	solar	12
183198	tin lamps	12
20938	wood	12
826	electricity	13
154	gas lamps	13
3801	lanterns	13
366	other	13
93	pressure lamps	13
1652	solar	13
18194	tin lamps	13
45067	electricity	16
1355	gas lamps	16
143523	lanterns	16
1172	other	16
1846	pressure lamps	16
565	solar	16
63999	tin lamps	16
6973	wood	16
10912	electricity	17
859	gas lamps	17
117991	lanterns	17
517	other	17
816	pressure lamps	17
1136	solar	17
47245	tin lamps	17
15086	electricity	18
911	gas lamps	18
79351	lanterns	18
387	other	18
875	pressure lamps	18
391	solar	18
38225	tin lamps	18
53086	electricity	19
1038	gas lamps	19
69517	lanterns	19
486	other	19
1641	pressure lamps	19
1004	solar	19
66305	tin lamps	19
8626	wood	19
2949	electricity	25
444	gas lamps	25
5074	lanterns	25
374	other	25
165	pressure lamps	25
28451	solar	25
9239	tin lamps	25
33847	electricity	21
1296	gas lamps	21
95784	lanterns	21
386	other	21
1306	pressure lamps	21
555	solar	21
103722	tin lamps	21
5594	wood	21
15121	electricity	26
1088	gas lamps	26
65971	lanterns	26
489	other	26
9788	electricity	29
796	gas lamps	29
64865	lanterns	29
246	other	29
504	pressure lamps	29
316	solar	29
75638	tin lamps	29
139430	electricity	32
1994	gas lamps	32
147950	lanterns	32
1927	other	32
2271	pressure lamps	32
3398	solar	32
103605	tin lamps	32
9261	wood	32
9903	electricity	33
861	gas lamps	33
49009	lanterns	33
1921	other	33
826	pressure lamps	33
12977	solar	33
91422	tin lamps	33
8615	electricity	41
885	gas lamps	41
41128	lanterns	41
270	other	41
858	pressure lamps	41
440	solar	41
158588	electricity	1
512	gas lamps	1
43057	lanterns	1
1644	other	1
2748	pressure lamps	1
530	solar	1
61236	tin lamps	1
385	wood	1
12888	electricity	2
419	gas lamps	2
16063	lanterns	2
326	other	2
713	pressure lamps	2
1522	solar	2
89118	tin lamps	2
998	wood	2
3039	electricity	8
9767	gas lamps	8
27923	lanterns	8
6348	other	8
98	pressure lamps	8
26296	solar	8
14948	tin lamps	8
155	wood	8
678	wood	10
429	wood	11
2307	wood	13
6002	wood	15
7002	wood	17
8653	wood	18
658	wood	25
633	wood	40
3811	wood	22
3017	electricity	23
694	gas lamps	23
10571	lanterns	23
4322	other	23
224	pressure lamps	23
89894	solar	23
13523	tin lamps	23
946	wood	23
2456	electricity	24
467	gas lamps	24
20880	lanterns	24
400	other	24
104	pressure lamps	24
46980	solar	24
22021	tin lamps	24
469	wood	24
977	pressure lamps	26
994	solar	26
84035	tin lamps	26
1442	wood	26
56534	electricity	27
782	gas lamps	27
89231	lanterns	27
1035	other	27
1218	pressure lamps	27
628	solar	27
50506	tin lamps	27
2357	wood	27
1920	wood	29
1902	wood	30
2301	wood	33
1827	wood	34
4958	wood	36
8678	electricity	38
1038	gas lamps	38
35132	lanterns	38
129	other	38
547	pressure lamps	38
582	solar	38
76480	tin lamps	38
761	wood	38
180120	tin lamps	39
1223	wood	39
145066	tin lamps	41
1772	wood	41
41551	electricity	42
921	gas lamps	42
52543	lanterns	42
392	other	42
1256	pressure lamps	42
513	solar	42
127278	tin lamps	42
2265	wood	42
6850	electricity	43
1067	gas lamps	43
43788	lanterns	43
226	other	43
980	pressure lamps	43
823	solar	43
150440	tin lamps	43
2081	wood	43
9551	electricity	44
1057	gas lamps	44
46080	lanterns	44
297	other	44
1015	pressure lamps	44
1051	solar	44
119675	tin lamps	44
1485	wood	44
20965	electricity	45
1490	gas lamps	45
87971	lanterns	45
345	other	45
1033	pressure lamps	45
711	solar	45
154632	tin lamps	45
2536	wood	45
6486	electricity	46
586	gas lamps	46
42674	lanterns	46
67	other	46
453	pressure lamps	46
297	solar	46
54798	tin lamps	46
1024	wood	46
712859	electricity	47
1251	gas lamps	47
128173	lanterns	47
7244	other	47
10324	pressure lamps	47
622	solar	47
123551	tin lamps	47
992	wood	47
\.


--
-- Name: mainmodeofhumanwastedisposal_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal_country
    ADD CONSTRAINT mainmodeofhumanwastedisposal_country_pkey PRIMARY KEY ("main mode of human waste disposal", country_code);


--
-- Name: mainmodeofhumanwastedisposal_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal_county
    ADD CONSTRAINT mainmodeofhumanwastedisposal_county_pkey PRIMARY KEY ("main mode of human waste disposal", county_code);


--
-- Name: mainsourceofwater_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY mainsourceofwater_country
    ADD CONSTRAINT mainsourceofwater_country_pkey PRIMARY KEY ("main source of water", country_code);


--
-- Name: mainsourceofwater_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY mainsourceofwater_county
    ADD CONSTRAINT mainsourceofwater_county_pkey PRIMARY KEY ("main source of water", county_code);


--
-- Name: maintypeoflightingfuel_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeoflightingfuel_country
    ADD CONSTRAINT maintypeoflightingfuel_country_pkey PRIMARY KEY ("main type of lighting fuel", country_code);


--
-- Name: maintypeoflightingfuel_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeoflightingfuel_county
    ADD CONSTRAINT maintypeoflightingfuel_county_pkey PRIMARY KEY ("main type of lighting fuel", county_code);


--
-- Name: ix_mainmodeofhumanwastedisposal_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_mainmodeofhumanwastedisposal_country_country_code ON mainmodeofhumanwastedisposal_country USING btree (country_code);


--
-- Name: ix_mainmodeofhumanwastedisposal_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_mainmodeofhumanwastedisposal_county_county_code ON mainmodeofhumanwastedisposal_county USING btree (county_code);


--
-- Name: ix_mainsourceofwater_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_mainsourceofwater_country_country_code ON mainsourceofwater_country USING btree (country_code);


--
-- Name: ix_mainsourceofwater_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_mainsourceofwater_county_county_code ON mainsourceofwater_county USING btree (county_code);


--
-- Name: ix_maintypeoflightingfuel_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeoflightingfuel_country_country_code ON maintypeoflightingfuel_country USING btree (country_code);


--
-- Name: ix_maintypeoflightingfuel_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeoflightingfuel_county_county_code ON maintypeoflightingfuel_county USING btree (county_code);


--
-- Name: mainmodeofhumanwastedisposal_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal_country
    ADD CONSTRAINT mainmodeofhumanwastedisposal_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: mainmodeofhumanwastedisposal_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal_county
    ADD CONSTRAINT mainmodeofhumanwastedisposal_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- Name: mainsourceofwater_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY mainsourceofwater_country
    ADD CONSTRAINT mainsourceofwater_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: mainsourceofwater_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY mainsourceofwater_county
    ADD CONSTRAINT mainsourceofwater_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- Name: maintypeoflightingfuel_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeoflightingfuel_country
    ADD CONSTRAINT maintypeoflightingfuel_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: maintypeoflightingfuel_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeoflightingfuel_county
    ADD CONSTRAINT maintypeoflightingfuel_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

