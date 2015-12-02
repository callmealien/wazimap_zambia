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
-- Name: maintypeofwallmaterial_country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeofwallmaterial_country (
    total integer NOT NULL,
    "main type of wall material" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeofwallmaterial_country OWNER TO censusreporter_ke;

--
-- Name: maintypeofwallmaterial_county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE maintypeofwallmaterial_county (
    total integer NOT NULL,
    "main type of wall material" character varying(128) NOT NULL,
    county_code character varying(8) NOT NULL
);


ALTER TABLE public.maintypeofwallmaterial_county OWNER TO censusreporter_ke;

--
-- Data for Name: maintypeofwallmaterial_country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeofwallmaterial_country (total, "main type of wall material", country_code) FROM stdin;
1470779	brick/block	KE
577500	corrugated iron sheets	KE
264557	grass/reeds	KE
673636	mud/cement	KE
3208268	mud/wood	KE
78803	other	KE
26411	tin	KE
970089	wood only	KE
1450487	stone	KE
\.


--
-- Data for Name: maintypeofwallmaterial_county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY maintypeofwallmaterial_county (total, "main type of wall material", county_code) FROM stdin;
4037	brick/block	30
7048	corrugated iron sheets	30
1675	grass/reeds	30
6952	mud/cement	30
55881	mud/wood	30
611	other	30
87	tin	30
28489	wood only	30
15688	brick/block	36
1430	corrugated iron sheets	36
159	grass/reeds	36
13147	mud/cement	36
113528	mud/wood	36
1834	other	36
81	tin	36
21166	wood only	36
38862	brick/block	39
493	corrugated iron sheets	39
210	grass/reeds	39
33668	mud/cement	39
190042	mud/wood	39
2246	other	39
85	tin	39
982	wood only	39
26034	brick/block	40
464	corrugated iron sheets	40
476	grass/reeds	40
16284	mud/cement	40
104454	mud/wood	40
3086	other	40
96	tin	40
312	wood only	40
5037	brick/block	28
1558	corrugated iron sheets	28
235	grass/reeds	28
5200	mud/cement	28
41805	mud/wood	28
409	other	28
62	tin	28
15919	wood only	28
28030	brick/block	14
2544	corrugated iron sheets	14
458	grass/reeds	14
3860	mud/cement	14
37605	mud/wood	14
3379	other	14
89	tin	14
33149	wood only	14
12771	brick/block	7
923	corrugated iron sheets	7
42429	grass/reeds	7
9217	mud/cement	7
19218	mud/wood	7
693	other	7
307	tin	7
8106	wood only	7
17676	brick/block	43
11533	corrugated iron sheets	43
359	grass/reeds	43
33897	mud/cement	43
135139	mud/wood	43
1318	other	43
279	tin	43
576	wood only	43
2090	brick/block	11
380	corrugated iron sheets	11
5491	grass/reeds	11
1144	mud/cement	11
9850	mud/wood	11
642	other	11
1518	tin	11
6970	wood only	11
13104	brick/block	34
45926	corrugated iron sheets	34
3587	grass/reeds	34
5763	mud/cement	34
39264	mud/wood	34
2402	other	34
863	tin	34
14315	wood only	34
48365	brick/block	37
941	corrugated iron sheets	37
264	grass/reeds	37
36471	mud/cement	37
264801	mud/wood	37
989	other	37
78	tin	37
708	wood only	37
17026	brick/block	35
7600	corrugated iron sheets	35
91	grass/reeds	35
9746	mud/cement	35
62362	mud/wood	35
1011	other	35
132	tin	35
15786	wood only	35
29659	brick/block	22
118797	corrugated iron sheets	22
158	grass/reeds	22
6421	mud/cement	22
23682	mud/wood	22
712	other	22
3034	tin	22
68284	wood only	22
45805	brick/block	3
645	corrugated iron sheets	3
2645	grass/reeds	3
16157	mud/cement	3
106284	mud/wood	3
535	other	3
157	tin	3
4281	wood only	3
25880	brick/block	20
2626	corrugated iron sheets	20
957	grass/reeds	20
4617	mud/cement	20
28517	mud/wood	20
757	other	20
156	tin	20
53075	wood only	20
51676	brick/block	45
1860	corrugated iron sheets	45
187	grass/reeds	45
21297	mud/cement	45
189596	mud/wood	45
1440	other	45
85	tin	45
857	wood only	45
47969	brick/block	42
6935	corrugated iron sheets	42
146	grass/reeds	42
48071	mud/cement	42
112223	mud/wood	42
2516	other	42
382	tin	42
482	wood only	42
131432	brick/block	15
343	corrugated iron sheets	15
881	grass/reeds	15
12953	mud/cement	15
52452	mud/wood	15
368	other	15
79	tin	15
2000	wood only	15
17675	brick/block	2
373	corrugated iron sheets	2
2699	grass/reeds	2
11944	mud/cement	2
69208	mud/wood	2
667	other	2
76	tin	2
483	wood only	2
2933	brick/block	31
2928	corrugated iron sheets	31
464	grass/reeds	31
3186	mud/cement	31
30105	mud/wood	31
1049	other	31
111	tin	31
47459	wood only	31
4158	brick/block	5
84	corrugated iron sheets	5
1476	grass/reeds	5
3069	mud/cement	5
10332	mud/wood	5
323	other	5
28	tin	5
150	wood only	5
161931	brick/block	16
18602	corrugated iron sheets	16
298	grass/reeds	16
4811	mud/cement	16
11002	mud/wood	16
350	other	16
339	tin	16
1235	wood only	16
135293	brick/block	17
960	corrugated iron sheets	17
400	grass/reeds	17
7158	mud/cement	17
36850	mud/wood	17
118	other	17
61	tin	17
668	wood only	17
5745	brick/block	9
309	corrugated iron sheets	9
79903	grass/reeds	9
2403	mud/cement	9
7494	mud/wood	9
3054	other	9
124	tin	9
22898	wood only	9
2821	brick/block	10
589	corrugated iron sheets	10
6847	grass/reeds	10
6067	mud/cement	10
17019	mud/wood	10
15948	other	10
1919	tin	10
4611	wood only	10
13443	brick/block	12
1512	corrugated iron sheets	12
2404	grass/reeds	12
6760	mud/cement	12
76884	mud/wood	12
2459	other	12
236	tin	12
227889	wood only	12
30770	brick/block	44
2923	corrugated iron sheets	44
228	grass/reeds	44
27323	mud/cement	44
116088	mud/wood	44
276	other	44
78	tin	44
484	wood only	44
109233	brick/block	1
1724	corrugated iron sheets	1
401	grass/reeds	1
35229	mud/cement	1
27720	mud/wood	1
226	other	1
262	tin	1
582	wood only	1
27457	brick/block	21
35815	corrugated iron sheets	21
180	grass/reeds	21
6745	mud/cement	21
58882	mud/wood	21
1036	other	21
5127	tin	21
37132	wood only	21
137375	brick/block	47
264413	corrugated iron sheets	47
431	grass/reeds	47
52330	mud/cement	47
36809	mud/wood	47
955	other	47
5850	tin	47
18592	wood only	47
23136	brick/block	32
11816	corrugated iron sheets	32
428	grass/reeds	32
42592	mud/cement	32
137687	mud/wood	32
2693	other	32
500	tin	32
55420	wood only	32
23211	brick/block	29
1429	corrugated iron sheets	29
92	grass/reeds	29
22231	mud/cement	29
97633	mud/wood	29
720	other	29
44	tin	29
5525	wood only	29
6607	brick/block	33
4896	corrugated iron sheets	33
1319	grass/reeds	33
11923	mud/cement	33
115444	mud/wood	33
2339	other	33
606	tin	33
16479	wood only	33
21176	brick/block	46
282	corrugated iron sheets	46
201	grass/reeds	46
6697	mud/cement	46
76135	mud/wood	46
24	other	46
26	tin	46
671	wood only	46
3763	brick/block	18
4386	corrugated iron sheets	18
51	grass/reeds	18
4252	mud/cement	18
47580	mud/wood	18
1951	other	18
134	tin	18
4904	stone	15
61182	wood only	18
9510	brick/block	19
3001	corrugated iron sheets	19
267	grass/reeds	19
2602	mud/cement	19
20485	mud/wood	19
274	other	19
405	tin	19
121347	wood only	19
1359	brick/block	25
262	corrugated iron sheets	25
2448	grass/reeds	25
6197	mud/cement	25
28057	mud/wood	25
2569	other	25
1202	tin	25
3520	wood only	25
26766	brick/block	41
811	corrugated iron sheets	41
260	grass/reeds	41
38390	mud/cement	41
126728	mud/wood	41
1903	other	41
116	tin	41
343	wood only	41
30474	brick/block	6
616	corrugated iron sheets	6
354	grass/reeds	6
6177	mud/cement	6
27940	mud/wood	6
376	other	6
76	tin	6
888	wood only	6
2705	brick/block	4
330	corrugated iron sheets	4
13961	grass/reeds	4
3896	mud/cement	4
19429	mud/wood	4
280	other	4
56	tin	4
5722	wood only	4
3316	brick/block	13
70	corrugated iron sheets	13
105	grass/reeds	13
1993	mud/cement	13
19839	mud/wood	13
84	other	13
6	tin	13
580	wood only	13
26728	brick/block	26
748	corrugated iron sheets	26
179	grass/reeds	26
21857	mud/cement	26
115572	mud/wood	26
987	other	26
76	tin	26
1109	wood only	26
4969	brick/block	23
773	corrugated iron sheets	23
33318	grass/reeds	23
4858	mud/cement	23
30909	mud/wood	23
9775	other	23
1003	tin	23
36611	wood only	23
51138	brick/block	27
5244	corrugated iron sheets	27
221	grass/reeds	27
24850	mud/cement	27
91857	mud/wood	27
2764	other	27
254	tin	27
13632	wood only	27
18807	brick/block	38
141	corrugated iron sheets	38
32	grass/reeds	38
12403	mud/cement	38
90495	mud/wood	38
225	other	38
28	tin	38
156	wood only	38
2370	brick/block	8
155	corrugated iron sheets	8
54588	grass/reeds	8
981	mud/cement	8
2567	mud/wood	8
164	other	8
49	tin	8
6477	wood only	8
4769	brick/block	24
262	corrugated iron sheets	24
594	grass/reeds	24
9847	mud/cement	24
74815	mud/wood	24
266	other	24
49	tin	24
2787	wood only	24
5646	stone	30
7261	stone	36
4013	stone	39
2874	stone	40
7313	stone	28
22084	stone	14
4606	stone	7
5331	stone	43
3220	stone	11
47839	stone	34
2758	stone	37
13471	stone	35
231040	stone	22
21342	stone	3
37396	stone	20
2456	stone	45
7413	stone	42
18566	stone	2
14846	stone	31
2393	stone	5
65774	stone	16
4772	stone	17
3541	stone	9
890	stone	10
48918	stone	12
1800	stone	44
81877	stone	1
69958	stone	21
466360	stone	47
134825	stone	32
2004	stone	29
9454	stone	33
853	stone	46
19194	stone	18
43462	stone	19
1617	stone	25
3347	stone	41
3138	stone	6
895	stone	4
1396	stone	13
2376	stone	26
719	stone	23
11656	stone	27
954	stone	38
3575	stone	8
360	stone	24
\.


--
-- Name: maintypeofwallmaterial_country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeofwallmaterial_country
    ADD CONSTRAINT maintypeofwallmaterial_country_pkey PRIMARY KEY ("main type of wall material", country_code);


--
-- Name: maintypeofwallmaterial_county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY maintypeofwallmaterial_county
    ADD CONSTRAINT maintypeofwallmaterial_county_pkey PRIMARY KEY ("main type of wall material", county_code);


--
-- Name: ix_maintypeofwallmaterial_country_country_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeofwallmaterial_country_country_code ON maintypeofwallmaterial_country USING btree (country_code);


--
-- Name: ix_maintypeofwallmaterial_county_county_code; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX ix_maintypeofwallmaterial_county_county_code ON maintypeofwallmaterial_county USING btree (county_code);


--
-- Name: maintypeofwallmaterial_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeofwallmaterial_country
    ADD CONSTRAINT maintypeofwallmaterial_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: maintypeofwallmaterial_county_county_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: censusreporter_ke
--

ALTER TABLE ONLY maintypeofwallmaterial_county
    ADD CONSTRAINT maintypeofwallmaterial_county_county_code_fkey FOREIGN KEY (county_code) REFERENCES county(code);


--
-- PostgreSQL database dump complete
--

