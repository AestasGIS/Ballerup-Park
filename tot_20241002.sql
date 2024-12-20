--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-10-01 10:08:39

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
-- TOC entry 7 (class 2615 OID 17482)
-- Name: aktiviteter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA aktiviteter;


--
-- TOC entry 8 (class 2615 OID 17483)
-- Name: elementer; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA elementer;


--
-- TOC entry 9 (class 2615 OID 17484)
-- Name: kontakter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA kontakter;


--
-- TOC entry 10 (class 2615 OID 17485)
-- Name: omraader; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA omraader;


--
-- TOC entry 11 (class 2615 OID 17486)
-- Name: prissaetning; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA prissaetning;


--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 13 (class 2615 OID 17488)
-- Name: tilsyn; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tilsyn;


--
-- TOC entry 235 (class 1259 OID 17489)
-- Name: aktivitets_typer; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.aktivitets_typer (
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 236 (class 1259 OID 17495)
-- Name: aktivitetsgruppe_typer; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.aktivitetsgruppe_typer (
    agruppe_navn character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 237 (class 1259 OID 17501)
-- Name: element_flade_aktiviteter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_flade_aktiviteter (
    element_id uuid NOT NULL,
    oe_id uuid NOT NULL,
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 17506)
-- Name: element_linje_aktiviteter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_linje_aktiviteter (
    element_id uuid NOT NULL,
    oe_id uuid NOT NULL,
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 17511)
-- Name: element_punkt_aktiviteter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_punkt_aktiviteter (
    element_id uuid NOT NULL,
    oe_id uuid NOT NULL,
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 17516)
-- Name: element_typer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_typer (
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint,
    prioritet smallint,
    etikette character varying
);


--
-- TOC entry 241 (class 1259 OID 17522)
-- Name: elementer_flader; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_flader (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) DEFAULT 'F'::character(1) NOT NULL,
    etikette character varying,
    navn character varying,
    areal double precision,
    omkreds double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 17529)
-- Name: elementer_linjer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_linjer (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) DEFAULT 'L'::character(1) NOT NULL,
    etikette character varying,
    navn character varying,
    laengde double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(MultiLineString,25832) NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 17536)
-- Name: elementer_punkter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_punkter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) DEFAULT 'P'::character(1) NOT NULL,
    etikette character varying,
    navn character varying,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(Point,25832) NOT NULL
);


--
-- TOC entry 244 (class 1259 OID 17543)
-- Name: elementgruppe_typer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementgruppe_typer (
    egruppe_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint,
    etikette character varying
);


--
-- TOC entry 245 (class 1259 OID 17549)
-- Name: kontakt_typer; Type: TABLE; Schema: kontakter; Owner: -
--

CREATE TABLE kontakter.kontakt_typer (
    ktype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL
);


--
-- TOC entry 246 (class 1259 OID 17555)
-- Name: kontakter; Type: TABLE; Schema: kontakter; Owner: -
--

CREATE TABLE kontakter.kontakter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    ktype_navn character varying,
    navn character varying NOT NULL,
    adresse character varying,
    postnr character varying,
    postby character varying,
    telefon_nummer character varying,
    mail_adresse character varying,
    passiv boolean DEFAULT false NOT NULL
);


--
-- TOC entry 247 (class 1259 OID 17562)
-- Name: arbejds_omraader; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.arbejds_omraader (
    omraade_navn character varying NOT NULL,
    otype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 248 (class 1259 OID 17568)
-- Name: omraade_entreprise; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.omraade_entreprise (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    entreprise_id uuid NOT NULL,
    omraade_navn character(1) NOT NULL,
    tilsyn_kontakt_id uuid NOT NULL
);


--
-- TOC entry 249 (class 1259 OID 17572)
-- Name: omraade_typer; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.omraade_typer (
    otype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 250 (class 1259 OID 17578)
-- Name: aktivitets_priser; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.aktivitets_priser (
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    etype_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL,
    entreprise_id uuid NOT NULL,
    pris_pr_stk numeric(9,2) DEFAULT 0.0 NOT NULL,
    pris_pr_m numeric(9,2) DEFAULT 0.0 NOT NULL,
    pris_pr_m2 numeric(9,2) DEFAULT 0.0 NOT NULL
);


--
-- TOC entry 251 (class 1259 OID 17586)
-- Name: entreprise_typer; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.entreprise_typer (
    ttype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 252 (class 1259 OID 17592)
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
-- TOC entry 11590 (class 2606 OID 126782)
-- Name: aktivitets_typer aktivitets_typer_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_pk PRIMARY KEY (agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11592 (class 2606 OID 126784)
-- Name: aktivitetsgruppe_typer aktivitetsgruppe_typer_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe_typer
    ADD CONSTRAINT aktivitetsgruppe_typer_pk PRIMARY KEY (agruppe_navn);


--
-- TOC entry 11594 (class 2606 OID 126786)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_pk PRIMARY KEY (element_id, agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11608 (class 2606 OID 126788)
-- Name: elementgruppe_typer element_gruppetyper_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementgruppe_typer
    ADD CONSTRAINT element_gruppetyper_pk PRIMARY KEY (egruppe_navn);


--
-- TOC entry 11596 (class 2606 OID 126790)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_pk PRIMARY KEY (element_id, agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11598 (class 2606 OID 126792)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_pk PRIMARY KEY (element_id, agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11600 (class 2606 OID 126794)
-- Name: element_typer element_typer_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_typer
    ADD CONSTRAINT element_typer_pk PRIMARY KEY (egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11602 (class 2606 OID 126796)
-- Name: elementer_flader elementer_flader_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_flader
    ADD CONSTRAINT elementer_flader_pk PRIMARY KEY (id);


--
-- TOC entry 11604 (class 2606 OID 126798)
-- Name: elementer_linjer elementer_linjer_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_linjer
    ADD CONSTRAINT elementer_linjer_pk PRIMARY KEY (id);


--
-- TOC entry 11606 (class 2606 OID 126800)
-- Name: elementer_punkter elementer_punkter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_punkter
    ADD CONSTRAINT elementer_punkter_pk PRIMARY KEY (id);


--
-- TOC entry 11610 (class 2606 OID 126802)
-- Name: kontakt_typer kontakt_typer_pk; Type: CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakt_typer
    ADD CONSTRAINT kontakt_typer_pk PRIMARY KEY (ktype_navn);


--
-- TOC entry 11612 (class 2606 OID 126804)
-- Name: kontakter kontakter_pk; Type: CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakter
    ADD CONSTRAINT kontakter_pk PRIMARY KEY (id);


--
-- TOC entry 11614 (class 2606 OID 126806)
-- Name: arbejds_omraader arbejds_omraader_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.arbejds_omraader
    ADD CONSTRAINT arbejds_omraader_pk PRIMARY KEY (omraade_navn);


--
-- TOC entry 11616 (class 2606 OID 126808)
-- Name: omraade_entreprise omraade_entreprise_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_pk PRIMARY KEY (id);


--
-- TOC entry 11618 (class 2606 OID 126810)
-- Name: omraade_typer omraade_typer_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_typer
    ADD CONSTRAINT omraade_typer_pk PRIMARY KEY (otype_navn);


--
-- TOC entry 11620 (class 2606 OID 126812)
-- Name: aktivitets_priser aktivitets_priser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_pk PRIMARY KEY (agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type, entreprise_id);


--
-- TOC entry 11622 (class 2606 OID 126814)
-- Name: entreprise_typer entreprise_typer_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entreprise_typer
    ADD CONSTRAINT entreprise_typer_pk PRIMARY KEY (ttype_navn);


--
-- TOC entry 11624 (class 2606 OID 126816)
-- Name: entrepriser entrepriser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_pk PRIMARY KEY (id);


--
-- TOC entry 11625 (class 2606 OID 126834)
-- Name: aktivitets_typer aktivitets_typer_aktivitetsgruppe_typer; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_aktivitetsgruppe_typer FOREIGN KEY (agruppe_navn) REFERENCES aktiviteter.aktivitetsgruppe_typer(agruppe_navn);


--
-- TOC entry 11626 (class 2606 OID 126839)
-- Name: aktivitets_typer aktivitets_typer_element_typer; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_element_typer FOREIGN KEY (egruppe_navn, etype_navn, ebasis_type) REFERENCES elementer.element_typer(egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11627 (class 2606 OID 126844)
-- Name: aktivitetsgruppe_typer aktivitetsgruppetyper_elementgruppe_typer; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe_typer
    ADD CONSTRAINT aktivitetsgruppetyper_elementgruppe_typer FOREIGN KEY (egruppe_navn) REFERENCES elementer.elementgruppe_typer(egruppe_navn);


--
-- TOC entry 11628 (class 2606 OID 126849)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (oe_id) REFERENCES omraader.omraade_entreprise(id);


--
-- TOC entry 11629 (class 2606 OID 126854)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11630 (class 2606 OID 126859)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_elementer_flader_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_elementer_flader_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_flader(id);


--
-- TOC entry 11631 (class 2606 OID 126864)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (oe_id) REFERENCES omraader.omraade_entreprise(id);


--
-- TOC entry 11632 (class 2606 OID 126869)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11633 (class 2606 OID 126874)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_elementer_linjer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_elementer_linjer_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_linjer(id);


--
-- TOC entry 11634 (class 2606 OID 126879)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (oe_id) REFERENCES omraader.omraade_entreprise(id);


--
-- TOC entry 11635 (class 2606 OID 126884)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11636 (class 2606 OID 126889)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_elementer_punkter_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_elementer_punkter_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_punkter(id);


--
-- TOC entry 11637 (class 2606 OID 126894)
-- Name: element_typer element_typer_elementgruppe_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_typer
    ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (egruppe_navn) REFERENCES elementer.elementgruppe_typer(egruppe_navn);


--
-- TOC entry 11638 (class 2606 OID 126899)
-- Name: elementer_flader elementer_flader_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_flader
    ADD CONSTRAINT elementer_flader_element_typer_fk FOREIGN KEY (egruppe_navn, etype_navn, ebasis_type) REFERENCES elementer.element_typer(egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11639 (class 2606 OID 126904)
-- Name: elementer_linjer elementer_linjer_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_linjer
    ADD CONSTRAINT elementer_linjer_element_typer_fk FOREIGN KEY (egruppe_navn, etype_navn, ebasis_type) REFERENCES elementer.element_typer(egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11640 (class 2606 OID 126909)
-- Name: elementer_punkter elementer_punkter_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_punkter
    ADD CONSTRAINT elementer_punkter_element_typer_fk FOREIGN KEY (egruppe_navn, etype_navn, ebasis_type) REFERENCES elementer.element_typer(egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11641 (class 2606 OID 126914)
-- Name: kontakter kontakter_kontakt_typer; Type: FK CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakter
    ADD CONSTRAINT kontakter_kontakt_typer FOREIGN KEY (ktype_navn) REFERENCES kontakter.kontakt_typer(ktype_navn);


--
-- TOC entry 11642 (class 2606 OID 126919)
-- Name: arbejds_omraader arbejds_omraader_omraade_typer_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.arbejds_omraader
    ADD CONSTRAINT arbejds_omraader_omraade_typer_fk FOREIGN KEY (otype_navn) REFERENCES omraader.omraade_typer(otype_navn);


--
-- TOC entry 11643 (class 2606 OID 126924)
-- Name: omraade_entreprise omraade_entreprise_entrepriser_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 11644 (class 2606 OID 126929)
-- Name: omraade_entreprise omraade_entreprise_kontakter_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_kontakter_fk FOREIGN KEY (tilsyn_kontakt_id) REFERENCES kontakter.kontakter(id);


--
-- TOC entry 11645 (class 2606 OID 126934)
-- Name: omraade_entreprise omraade_entreprise_omraader; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_omraader FOREIGN KEY (omraade_navn) REFERENCES omraader.arbejds_omraader(omraade_navn);


--
-- TOC entry 11646 (class 2606 OID 126939)
-- Name: aktivitets_priser aktivitets_priser_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, egruppe_navn, etype_navn, ebasis_type);


--
-- TOC entry 11647 (class 2606 OID 126944)
-- Name: aktivitets_priser aktivitets_priser_entrepriser_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 11648 (class 2606 OID 126949)
-- Name: entrepriser entrepriser_entreprise_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_entreprise_typer_fk FOREIGN KEY (ttype_navn) REFERENCES prissaetning.entreprise_typer(ttype_navn);


--
-- TOC entry 11649 (class 2606 OID 126954)
-- Name: entrepriser entrepriser_kontakter_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_kontakter_fk FOREIGN KEY (kontakt_id) REFERENCES kontakter.kontakter(id);


-- Completed on 2024-10-01 10:08:39

--
-- PostgreSQL database dump complete
--

