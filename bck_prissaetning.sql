--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-10-10 11:22:30

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

--
-- TOC entry 11 (class 2615 OID 671335)
-- Name: prissaetning; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA prissaetning;


--
-- TOC entry 244 (class 1259 OID 672506)
-- Name: aktivitets_priser; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.aktivitets_priser (
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    etype_key character varying NOT NULL,
    entreprise_id uuid NOT NULL,
    pris_pr_stk numeric(9,2) DEFAULT 0.0 NOT NULL,
    pris_pr_m numeric(9,2) DEFAULT 0.0 NOT NULL,
    pris_pr_m2 numeric(9,2) DEFAULT 0.0 NOT NULL
);


--
-- TOC entry 245 (class 1259 OID 672514)
-- Name: entreprise_typer; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.entreprise_typer (
    ttype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 246 (class 1259 OID 672520)
-- Name: entrepriser; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.entrepriser (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    kontakt_id uuid NOT NULL,
    ttype_navn character varying NOT NULL,
    periode_start date NOT NULL,
    periode_slut date NOT NULL,
    bemaerkning character varying
);


--
-- TOC entry 5969 (class 0 OID 672506)
-- Dependencies: 244
-- Data for Name: aktivitets_priser; Type: TABLE DATA; Schema: prissaetning; Owner: -
--

COPY prissaetning.aktivitets_priser (agruppe_navn, atype_navn, etype_key, entreprise_id, pris_pr_stk, pris_pr_m, pris_pr_m2) FROM stdin;
\.


--
-- TOC entry 5970 (class 0 OID 672514)
-- Dependencies: 245
-- Data for Name: entreprise_typer; Type: TABLE DATA; Schema: prissaetning; Owner: -
--

COPY prissaetning.entreprise_typer (ttype_navn, passiv, beskrivelse) FROM stdin;
\.


--
-- TOC entry 5971 (class 0 OID 672520)
-- Dependencies: 246
-- Data for Name: entrepriser; Type: TABLE DATA; Schema: prissaetning; Owner: -
--

COPY prissaetning.entrepriser (id, kontakt_id, ttype_navn, periode_start, periode_slut, bemaerkning) FROM stdin;
\.


--
-- TOC entry 5799 (class 2606 OID 922678)
-- Name: aktivitets_priser aktivitets_priser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_pk PRIMARY KEY (agruppe_navn, atype_navn, etype_key, entreprise_id);


--
-- TOC entry 5801 (class 2606 OID 922680)
-- Name: entreprise_typer entreprise_typer_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entreprise_typer
    ADD CONSTRAINT entreprise_typer_pk PRIMARY KEY (ttype_navn);


--
-- TOC entry 5803 (class 2606 OID 922682)
-- Name: entrepriser entrepriser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_pk PRIMARY KEY (id);


--
-- TOC entry 5804 (class 2606 OID 922856)
-- Name: aktivitets_priser aktivitets_priser_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, etype_key) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5805 (class 2606 OID 922861)
-- Name: aktivitets_priser aktivitets_priser_entrepriser_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 5806 (class 2606 OID 922866)
-- Name: entrepriser entrepriser_entreprise_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_entreprise_typer_fk FOREIGN KEY (ttype_navn) REFERENCES prissaetning.entreprise_typer(ttype_navn);


--
-- TOC entry 5807 (class 2606 OID 922871)
-- Name: entrepriser entrepriser_kontakter_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_kontakter_fk FOREIGN KEY (kontakt_id) REFERENCES kontakter.kontakter(id);


-- Completed on 2024-10-10 11:22:31

--
-- PostgreSQL database dump complete
--

