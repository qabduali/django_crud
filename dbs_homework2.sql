--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    cname character varying(50) NOT NULL,
    population bigint
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: discover; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discover (
    cname character varying(50) NOT NULL,
    disease_code character varying(50) NOT NULL,
    first_enc_date date
);


ALTER TABLE public.discover OWNER TO postgres;

--
-- Name: disease; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disease (
    disease_code character varying(50) NOT NULL,
    pathogen character varying(20),
    description character varying(140),
    id integer
);


ALTER TABLE public.disease OWNER TO postgres;

--
-- Name: diseasetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseasetype (
    id integer NOT NULL,
    description character varying(140)
);


ALTER TABLE public.diseasetype OWNER TO postgres;

--
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    email character varying(60) NOT NULL,
    degree character varying(20)
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- Name: publicservant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicservant (
    email character varying(60) NOT NULL,
    department character varying(50)
);


ALTER TABLE public.publicservant OWNER TO postgres;

--
-- Name: record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.record (
    email character varying(60) NOT NULL,
    cname character varying(50) NOT NULL,
    disease_code character varying(50) NOT NULL,
    total_deaths integer,
    total_patients integer
);


ALTER TABLE public.record OWNER TO postgres;

--
-- Name: specialize; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.specialize (
    id integer NOT NULL,
    email character varying(60) NOT NULL
);


ALTER TABLE public.specialize OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    email character varying(60) NOT NULL,
    name character varying(30),
    surname character varying(40),
    salary integer,
    phone character varying(20),
    cname character varying(50)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (cname, population) FROM stdin;
China	1446887738
Kazakhstan	18000251
Russia	146523102
Spain	46779259
USA	333654856
India	1398689150
Japan	125956576
Congo	93470113
Lesotho	2165549
Sudan	45297821
\.


--
-- Data for Name: discover; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discover (cname, disease_code, first_enc_date) FROM stdin;
China	SARS-Cov-2	2019-10-17
Congo	EVD-EhF	2007-06-30
USA	AIDS/HIV	1970-08-25
Japan	CNCR-gn	1918-01-14
USA	DBTS-mlts	1923-11-08
China	ASTHM-206	1991-02-16
Russia	DMnT	1931-05-29
Sudan	DRmTTs	1915-07-07
India	PSoRs	1864-11-11
Spain	CHLR-18	1820-03-22
USA	MLR-inf	1904-06-15
\.


--
-- Data for Name: disease; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disease (disease_code, pathogen, description, id) FROM stdin;
SARS-Cov-2	virus	respiratory disease	19
EVD-EhF	virus	a viral hemorrhagic fever in humans and other primates, caused by ebolaviruses	19
AIDS/HIV	virus	a spectrum of conditions caused by infection with the human immunodeficiency virus	19
DBTS-mlts	\N	a group of metabolic disorders characterized by a high blood sugar level over a prolonged period of time	140
ASTHM-206	\N	a long-term inflammatory disease of the airways of the lungs	206
DMnT	\N	progressive impairments to memory, thinking, and behavior	100
PSoRs	fungi	a long-lasting, noncontagious[4] autoimmune disease	21
CHLR-18	parasites	an infection of the small intestine by some strains of the bacterium Vibrio cholerae	196
MLR-inf	parasites	a mosquito-borne infectious disease that affects humans and other animals	196
DRmTTs	bacteria	inflammation of the skin, typically characterized by itchiness, redness and a rash	20
CNCR-gn	\N	a group of diseases involving abnormal cell growth	101
\.


--
-- Data for Name: diseasetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseasetype (id, description) FROM stdin;
202	infectious disease | mycology
101	noninfecious disease | genetic disease | genetics
140	noninfectious disease | metablic disease | genetics
19	infectious disease | virology 
206	noninfectious disease | allergy | genetics
196	infectious disease | parasitology
100	noninfectious disease | degenerative disease | neurology
20	noninfectious disease | skin disease | dermatology
21	infectious disease | skin disease | dermatology
77	noninfectious disease | cardiovascular disease | cardiology
\.


--
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctor (email, degree) FROM stdin;
lulu.cango@alibaba.com	PhD
hatori.hanzo@gmail.com	PhD
sasha.tarasov@yandex.com	MD
jdenver0@theglobeandmail.com	MD
mborn1@wikimedia.org	PhD
agergher2@elegantthemes.com	MD
dmuck3@google.it	PhD
cryves4@mashable.com	MD
bbarzen5@ucla.edu	PhD
gdodding6@drupal.org	PhD
dyushin7@time.com	PhD
vraddin8@java.com	PhD
\.


--
-- Data for Name: publicservant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publicservant (email, department) FROM stdin;
li.xing@gmail.com	Dept1
thanburry0@nifty.com	Dept1
lbelasco2@mashable.com	Dept3
mkay3@ezinearticles.com	Dept4
idyet4@reddit.com	Dept4
natawa@miitbeian.gov.cn	Dept3
xi.ling@vinaora.com	Dept2
yehu-di.b@macromedia.com	Dept2
drichardsb@pinterest.com	Dept4
\.


--
-- Data for Name: record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.record (email, cname, disease_code, total_deaths, total_patients) FROM stdin;
li.xing@gmail.com	China	SARS-Cov-2	100001	200002
li.xing@gmail.com	India	SARS-Cov-2	5000	15000
li.xing@gmail.com	Kazakhstan	SARS-Cov-2	1000	15000
li.xing@gmail.com	Japan	SARS-Cov-2	10000	15000
thanburry0@nifty.com	USA	AIDS/HIV	500	60000
thanburry0@nifty.com	USA	CNCR-gn	489	6000
thanburry0@nifty.com	USA	MLR-inf	6	60
thanburry0@nifty.com	Kazakhstan	DBTS-mlts	50	6000
lbelasco2@mashable.com	Lesotho	CHLR-18	12	60
lbelasco2@mashable.com	Lesotho	EVD-EhF	26	504
lbelasco2@mashable.com	Sudan	EVD-EhF	36	942
lbelasco2@mashable.com	Congo	EVD-EhF	12	103
mkay3@ezinearticles.com	Congo	MLR-inf	0	5
natawa@miitbeian.gov.cn	Russia	SARS-Cov-2	500000	999998
idyet4@reddit.com	USA	SARS-Cov-2	120000	250024
idyet4@reddit.com	Lesotho	SARS-Cov-2	1200	2500
idyet4@reddit.com	Sudan	SARS-Cov-2	2000	50024
idyet4@reddit.com	Spain	SARS-Cov-2	20000	50024
xi.ling@vinaora.com	China	DMnT	10	100
yehu-di.b@macromedia.com	India	DRmTTs	0	5400
\.


--
-- Data for Name: specialize; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.specialize (id, email) FROM stdin;
101	lulu.cango@alibaba.com
100	hatori.hanzo@gmail.com
19	sasha.tarasov@yandex.com
19	jdenver0@theglobeandmail.com
196	mborn1@wikimedia.org
20	agergher2@elegantthemes.com
19	dmuck3@google.it
20	cryves4@mashable.com
196	bbarzen5@ucla.edu
21	bbarzen5@ucla.edu
140	gdodding6@drupal.org
101	vraddin8@java.com
19	bbarzen5@ucla.edu
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (email, name, surname, salary, phone, cname) FROM stdin;
thanburry0@nifty.com	Tom	Hanburry	6217	+7 294 321 6388	USA
lbelasco2@mashable.com	Lonny	Belasco	9088	+1 410 341 3273	Lesotho
mkay3@ezinearticles.com	Mariam	Kay	14170	+86 620 926 7412	Congo
natawa@miitbeian.gov.cn	Natalya	Ivanova	3652	+86 237 487 0265	Russia
xi.ling@vinaora.com	Xi	Ling	9834	+86 854 205 0884	China
yehu-di.b@macromedia.com	Yehudi	Boldt	10367	+86 222 261 9842	India
lulu.cango@alibaba.com	Lulu	Cango	17079	+1 816 705 0647	Spain
hatori.hanzo@gmail.com	Hatori	Hanzo	17500	+86 505 404 2212	Japan
sasha.tarasov@yandex.com	Alexandr	Tarasov	5200	+89012647510	Russia
jdenver0@theglobeandmail.com	Jaimie	Denver	3751	+7 981 846 2616	Russia
mborn1@wikimedia.org	Melonie	Born	14059	+34 376 454 1050	Spain
agergher2@elegantthemes.com	Aurilia	Gergher	8974	+7 221 245 5747	Russia
dmuck3@google.it	Doretta	Muck	15153	+7 468 857 2358	Kazakhstan
cryves4@mashable.com	Cory	Ryves	10922	+7 389 292 4461	Russia
bbarzen5@ucla.edu	Blythe	Barzen	5900	+7 678 957 8794	Russia
gdodding6@drupal.org	Guthry	Dodding	2815	+7 728 738 0433	Russia
dyushin7@time.com	Daniel	Yushin	3220	+7 367 486 8364	Russia
vraddin8@java.com	Vevay	Raddin	19622	+81 654 485 5686	Japan
mlambshine9@newyorker.com	Melania	Lambshine	17188	+7 517 702 9750	Russia
drichardsb@pinterest.com	Diane-marie	Richards	10865	+7 347 969 8113	Russia
eroundingc@yandex.ru	Emmey	Rounding	4750	+7 874 520 9919	Russia
cspraberryd@issuu.com	Christoforo	Spraberry	3376	+81 153 707 8583	Japan
rizchakie@uol.com.br	Ruben	Izchaki	4447	+7 196 142 1154	Russia
conearya@wufoo.com	Catharine	ONeary	19927	+7 322 680 6802	Russia
idyet4@reddit.com	Ibbie	Dyet	12534	+1 619 424 4527	USA
li.xing@gmail.com	Li	Xing	10000	89015543221	China
almas.a@gmail.com	Almas	Altynbek	2000	\N	Kazakhstan
altyn@nu.edu.kz	Altynbek	Almasbekov	2500	87005556644	Russia
\.


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (cname);


--
-- Name: discover discover_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_pkey PRIMARY KEY (cname, disease_code);


--
-- Name: disease disease_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disease
    ADD CONSTRAINT disease_pkey PRIMARY KEY (disease_code);


--
-- Name: diseasetype diseasetype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseasetype
    ADD CONSTRAINT diseasetype_pkey PRIMARY KEY (id);


--
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (email);


--
-- Name: publicservant publicservant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicservant
    ADD CONSTRAINT publicservant_pkey PRIMARY KEY (email);


--
-- Name: record record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (email, cname, disease_code);


--
-- Name: specialize specialize_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.specialize
    ADD CONSTRAINT specialize_pkey PRIMARY KEY (id, email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- Name: discover discover_cname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_cname_fkey FOREIGN KEY (cname) REFERENCES public.country(cname);


--
-- Name: discover discover_disease_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_disease_code_fkey FOREIGN KEY (disease_code) REFERENCES public.disease(disease_code);


--
-- Name: disease disease_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disease
    ADD CONSTRAINT disease_id_fkey FOREIGN KEY (id) REFERENCES public.diseasetype(id);


--
-- Name: doctor name1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT name1 FOREIGN KEY (email) REFERENCES public.users(email) ON DELETE CASCADE;


--
-- Name: publicservant name2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicservant
    ADD CONSTRAINT name2 FOREIGN KEY (email) REFERENCES public.users(email) ON DELETE CASCADE;


--
-- Name: specialize name3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.specialize
    ADD CONSTRAINT name3 FOREIGN KEY (id) REFERENCES public.diseasetype(id) ON DELETE CASCADE;


--
-- Name: specialize name4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.specialize
    ADD CONSTRAINT name4 FOREIGN KEY (email) REFERENCES public.doctor(email) ON DELETE CASCADE;


--
-- Name: record name5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT name5 FOREIGN KEY (disease_code) REFERENCES public.disease(disease_code) ON DELETE CASCADE;


--
-- Name: record name6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT name6 FOREIGN KEY (cname) REFERENCES public.country(cname) ON DELETE CASCADE;


--
-- Name: record name7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT name7 FOREIGN KEY (email) REFERENCES public.publicservant(email) ON DELETE CASCADE;


--
-- Name: users users_cname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cname_fkey FOREIGN KEY (cname) REFERENCES public.country(cname);


--
-- PostgreSQL database dump complete
--

