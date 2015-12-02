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
-- Name: country; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE country (
    code character varying(2) NOT NULL,
    name character varying(32) NOT NULL,
    year integer NOT NULL,
    osm_area_id integer NOT NULL
);


ALTER TABLE public.country OWNER TO censusreporter_ke;

--
-- Name: county; Type: TABLE; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE TABLE county (
    code character varying(3) NOT NULL,
    name character varying(32) NOT NULL,
    year integer NOT NULL,
    osm_area_id integer NOT NULL
);


ALTER TABLE public.county OWNER TO censusreporter_ke;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY country (code, name, year, osm_area_id) FROM stdin;
KE	Kenya	2009	662008
\.


--
-- Data for Name: county; Type: TABLE DATA; Schema: public; Owner: censusreporter_ke
--

COPY county (code, name, year, osm_area_id) FROM stdin;
1	Mombasa	2009	662784
2	Kwale	2009	509519
3	Kilifi	2009	662783
4	Tana River	2009	509533
5	Lamu	2009	509521
6	Taita-Taveta	2009	509532
7	Garissa	2009	662782
8	Wajir	2009	509538
9	Mandera	2009	509522
10	Marsabit	2009	509523
11	Isiolo	2009	509513
12	Meru	2009	509524
13	Tharaka-Nithi	2009	509534
14	Embu	2009	509511
15	Kitui	2009	509518
16	Machakos	2009	509501
17	Makueni	2009	509502
18	Nyandarua	2009	509528
19	Nyeri	2009	509529
20	Kirinyaga	2009	509517
21	Murang'a	2009	509526
22	Kiambu	2009	509515
23	Turkana	2009	509536
24	West Pokot	2009	509539
25	Samburu	2009	509530
26	Trans Nzoia	2009	509535
27	Uasin Gishu	2009	509537
28	Elgeyo-Marakwet	2009	509510
29	Nandi	2009	509527
30	Baringo	2009	509508
31	Laikipia	2009	509520
32	Nakuru	2009	509466
33	Narok	2009	509385
34	Kajiado	2009	662770
35	Kericho	2009	509468
36	Bomet	2009	509383
37	Kakamega	2009	509514
38	Vihiga	2009	509473
39	Bungoma	2009	509509
40	Busia	2009	509472
41	Siaya	2009	509471
42	Kisumu	2009	509469
43	Homa Bay	2009	509464
44	Migori	2009	662769
45	Kisii	2009	509384
46	Nyamira	2009	509470
47	Nairobi	2009	509503
\.


--
-- Name: country_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (code);


--
-- Name: county_pkey; Type: CONSTRAINT; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

ALTER TABLE ONLY county
    ADD CONSTRAINT county_pkey PRIMARY KEY (code);


--
-- Name: country_name_idx; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX country_name_idx ON country USING btree (name);


--
-- Name: country_year_idx; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX country_year_idx ON country USING btree (year);


--
-- Name: county_name_idx; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX county_name_idx ON county USING btree (name);


--
-- Name: county_year_idx; Type: INDEX; Schema: public; Owner: censusreporter_ke; Tablespace: 
--

CREATE INDEX county_year_idx ON county USING btree (year);


--
-- PostgreSQL database dump complete
--

