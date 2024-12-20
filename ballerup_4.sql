--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2024-06-16 16:46:34

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
-- TOC entry 11 (class 2615 OID 217161)
-- Name: aktiviteter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA aktiviteter;


--
-- TOC entry 7 (class 2615 OID 217157)
-- Name: elementer; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA elementer;


--
-- TOC entry 8 (class 2615 OID 217158)
-- Name: kontakter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA kontakter;


--
-- TOC entry 12 (class 2615 OID 217162)
-- Name: omraader; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA omraader;


--
-- TOC entry 10 (class 2615 OID 217160)
-- Name: prissaetning; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA prissaetning;


--
-- TOC entry 9 (class 2615 OID 217159)
-- Name: tilsyn; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tilsyn;


--
-- TOC entry 2 (class 3079 OID 216081)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 236 (class 1259 OID 217282)
-- Name: aktivitets_typer; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.aktivitets_typer (
    gruppe_navn character varying NOT NULL,
    basis_type character varying(1) NOT NULL,
    type_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 238 (class 1259 OID 217312)
-- Name: aktivitetsgruppe; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.aktivitetsgruppe (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    entreprise_id uuid NOT NULL,
    tilsyn_kontakt_id uuid NOT NULL,
    omraade_navn character varying
);


--
-- TOC entry 239 (class 1259 OID 217328)
-- Name: element_aktiviteter; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.element_aktiviteter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    gruppe_navn character varying NOT NULL,
    basis_type character varying(1) NOT NULL,
    type_navn character varying NOT NULL,
    element_flade_id uuid,
    element_linje_id uuid,
    element_punkt_id uuid,
    gruppe_id uuid NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 217171)
-- Name: element_typer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_typer (
    gruppe_navn character varying NOT NULL,
    type_navn character varying NOT NULL,
    basis_type character varying(1) NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 228 (class 1259 OID 217184)
-- Name: elementer_flader; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_flader (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    basis_type character varying(1) DEFAULT 'f'::character(1) NOT NULL,
    element_gruppe character varying NOT NULL,
    element_type character varying NOT NULL,
    areal double precision,
    omkreds double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(MultiPolygon,25832) NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 217198)
-- Name: elementer_linjer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_linjer (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    basis_type character varying(1) DEFAULT 'l'::character(1) NOT NULL,
    element_gruppe character varying NOT NULL,
    element_type character varying NOT NULL,
    laengde double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(MultiLineString,25832) NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 217212)
-- Name: elementer_punkter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_punkter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    basis_type character varying(1) DEFAULT 'p'::character(1) NOT NULL,
    element_gruppe character varying NOT NULL,
    element_type character varying NOT NULL,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(Point,25832) NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 217163)
-- Name: elementgruppe_typer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementgruppe_typer (
    gruppe_navn character varying NOT NULL,
    basis_type character varying(1) NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 240 (class 1259 OID 217371)
-- Name: kontakt_typer; Type: TABLE; Schema: kontakter; Owner: -
--

CREATE TABLE kontakter.kontakt_typer (
    kontakt_type character varying NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 217226)
-- Name: kontakter; Type: TABLE; Schema: kontakter; Owner: -
--

CREATE TABLE kontakter.kontakter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    navn character varying NOT NULL,
    adresse character varying,
    postnr character varying,
    postby character varying,
    telefon_nummer character varying,
    mail_adresse character varying,
    passiv boolean DEFAULT false NOT NULL,
    kontakt_type character varying
);


--
-- TOC entry 233 (class 1259 OID 217243)
-- Name: arbejds_omraader; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.arbejds_omraader (
    omraade_navn character varying NOT NULL,
    omraade_type character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 232 (class 1259 OID 217235)
-- Name: omraade_typer; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.omraade_typer (
    type_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 237 (class 1259 OID 217290)
-- Name: aktivitets_priser; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.aktivitets_priser (
    gruppe_navn character varying NOT NULL,
    basis_type character varying(1) NOT NULL,
    type_navn character varying NOT NULL,
    entreprise_id uuid NOT NULL,
    enhedspris numeric(9,2) NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 217256)
-- Name: entreprise_typer; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.entreprise_typer (
    entreprise_type character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 235 (class 1259 OID 217264)
-- Name: entrepriser; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.entrepriser (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    kontakt_id uuid NOT NULL,
    entreprise_type character varying NOT NULL,
    periode_start date NOT NULL,
    periode_slut date NOT NULL
);


--
-- TOC entry 4205 (class 2606 OID 217335)
-- Name: element_aktiviteter aktiviteter_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.element_aktiviteter
    ADD CONSTRAINT aktiviteter_pk PRIMARY KEY (id);


--
-- TOC entry 4199 (class 2606 OID 217289)
-- Name: aktivitets_typer aktivitets_typer_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_pk PRIMARY KEY (gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4203 (class 2606 OID 217317)
-- Name: aktivitetsgruppe aktivitetsgruppe_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe
    ADD CONSTRAINT aktivitetsgruppe_pk PRIMARY KEY (id);


--
-- TOC entry 4179 (class 2606 OID 217170)
-- Name: elementgruppe_typer element_gruppetyper_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementgruppe_typer
    ADD CONSTRAINT element_gruppetyper_pk PRIMARY KEY (gruppe_navn, basis_type);


--
-- TOC entry 4181 (class 2606 OID 217178)
-- Name: element_typer element_typer_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_typer
    ADD CONSTRAINT element_typer_pk PRIMARY KEY (gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4183 (class 2606 OID 217192)
-- Name: elementer_flader elementer_flader_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_flader
    ADD CONSTRAINT elementer_flader_pk PRIMARY KEY (id);


--
-- TOC entry 4185 (class 2606 OID 217206)
-- Name: elementer_linjer elementer_linjer_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_linjer
    ADD CONSTRAINT elementer_linjer_pk PRIMARY KEY (id);


--
-- TOC entry 4187 (class 2606 OID 217220)
-- Name: elementer_punkter elementer_punkter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_punkter
    ADD CONSTRAINT elementer_punkter_pk PRIMARY KEY (id);


--
-- TOC entry 4207 (class 2606 OID 217377)
-- Name: kontakt_typer kontakt_typer_pk; Type: CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakt_typer
    ADD CONSTRAINT kontakt_typer_pk PRIMARY KEY (kontakt_type);


--
-- TOC entry 4189 (class 2606 OID 217234)
-- Name: kontakter kontakter_pk; Type: CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakter
    ADD CONSTRAINT kontakter_pk PRIMARY KEY (id);


--
-- TOC entry 4193 (class 2606 OID 217250)
-- Name: arbejds_omraader arbejds_omraader_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.arbejds_omraader
    ADD CONSTRAINT arbejds_omraader_pk PRIMARY KEY (omraade_navn);


--
-- TOC entry 4191 (class 2606 OID 217242)
-- Name: omraade_typer omraade_typer_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_typer
    ADD CONSTRAINT omraade_typer_pk PRIMARY KEY (type_navn);


--
-- TOC entry 4201 (class 2606 OID 217296)
-- Name: aktivitets_priser aktivitets_priser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_pk PRIMARY KEY (gruppe_navn, type_navn, basis_type, entreprise_id);


--
-- TOC entry 4195 (class 2606 OID 217263)
-- Name: entreprise_typer entreprise_typer_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entreprise_typer
    ADD CONSTRAINT entreprise_typer_pk PRIMARY KEY (entreprise_type);


--
-- TOC entry 4197 (class 2606 OID 217271)
-- Name: entrepriser entrepriser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_pk PRIMARY KEY (id);


--
-- TOC entry 4216 (class 2606 OID 217307)
-- Name: aktivitets_typer aktivitets_typer_elementgruppe_typer_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_elementgruppe_typer_fk FOREIGN KEY (gruppe_navn, basis_type) REFERENCES elementer.elementgruppe_typer(gruppe_navn, basis_type);


--
-- TOC entry 4219 (class 2606 OID 217378)
-- Name: aktivitetsgruppe aktivitetsgruppe_arbejds_omraader; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe
    ADD CONSTRAINT aktivitetsgruppe_arbejds_omraader FOREIGN KEY (omraade_navn) REFERENCES omraader.arbejds_omraader(omraade_navn);


--
-- TOC entry 4220 (class 2606 OID 217318)
-- Name: aktivitetsgruppe aktivitetsgruppe_entrepriser_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe
    ADD CONSTRAINT aktivitetsgruppe_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 4221 (class 2606 OID 217341)
-- Name: element_aktiviteter element_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.element_aktiviteter
    ADD CONSTRAINT element_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (gruppe_id) REFERENCES aktiviteter.aktivitetsgruppe(id);


--
-- TOC entry 4222 (class 2606 OID 217336)
-- Name: element_aktiviteter element_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.element_aktiviteter
    ADD CONSTRAINT element_aktiviteter_aktivitets_typer_fk FOREIGN KEY (gruppe_navn, type_navn, basis_type) REFERENCES aktiviteter.aktivitets_typer(gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4223 (class 2606 OID 217346)
-- Name: element_aktiviteter element_aktiviteter_elementer_flader_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.element_aktiviteter
    ADD CONSTRAINT element_aktiviteter_elementer_flader_fk FOREIGN KEY (element_flade_id) REFERENCES elementer.elementer_flader(id);


--
-- TOC entry 4224 (class 2606 OID 217351)
-- Name: element_aktiviteter element_aktiviteter_elementer_linjer_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.element_aktiviteter
    ADD CONSTRAINT element_aktiviteter_elementer_linjer_fk FOREIGN KEY (element_linje_id) REFERENCES elementer.elementer_linjer(id);


--
-- TOC entry 4225 (class 2606 OID 217356)
-- Name: element_aktiviteter element_aktiviteter_elementer_punkter_fk; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.element_aktiviteter
    ADD CONSTRAINT element_aktiviteter_elementer_punkter_fk FOREIGN KEY (element_punkt_id) REFERENCES elementer.elementer_punkter(id);


--
-- TOC entry 4208 (class 2606 OID 217179)
-- Name: element_typer element_typer_elementgruppe_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_typer
    ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (gruppe_navn, basis_type) REFERENCES elementer.elementgruppe_typer(gruppe_navn, basis_type);


--
-- TOC entry 4209 (class 2606 OID 217193)
-- Name: elementer_flader elementer_flader_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_flader
    ADD CONSTRAINT elementer_flader_element_typer_fk FOREIGN KEY (element_gruppe, element_type, basis_type) REFERENCES elementer.element_typer(gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4210 (class 2606 OID 217207)
-- Name: elementer_linjer elementer_linjer_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_linjer
    ADD CONSTRAINT elementer_linjer_element_typer_fk FOREIGN KEY (element_gruppe, element_type, basis_type) REFERENCES elementer.element_typer(gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4211 (class 2606 OID 217221)
-- Name: elementer_punkter elementer_punkter_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_punkter
    ADD CONSTRAINT elementer_punkter_element_typer_fk FOREIGN KEY (element_gruppe, element_type, basis_type) REFERENCES elementer.element_typer(gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4212 (class 2606 OID 217383)
-- Name: kontakter kontakter_kontakt_typer; Type: FK CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakter
    ADD CONSTRAINT kontakter_kontakt_typer FOREIGN KEY (kontakt_type) REFERENCES kontakter.kontakt_typer(kontakt_type);


--
-- TOC entry 4213 (class 2606 OID 217251)
-- Name: arbejds_omraader arbejds_omraader_omraade_typer_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.arbejds_omraader
    ADD CONSTRAINT arbejds_omraader_omraade_typer_fk FOREIGN KEY (omraade_type) REFERENCES omraader.omraade_typer(type_navn);


--
-- TOC entry 4217 (class 2606 OID 217297)
-- Name: aktivitets_priser aktivitets_priser_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_aktivitets_typer_fk FOREIGN KEY (gruppe_navn, type_navn, basis_type) REFERENCES aktiviteter.aktivitets_typer(gruppe_navn, type_navn, basis_type);


--
-- TOC entry 4218 (class 2606 OID 217302)
-- Name: aktivitets_priser aktivitets_priser_entrepriser_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 4214 (class 2606 OID 217272)
-- Name: entrepriser entrepriser_entreprise_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_entreprise_typer_fk FOREIGN KEY (entreprise_type) REFERENCES prissaetning.entreprise_typer(entreprise_type);


--
-- TOC entry 4215 (class 2606 OID 217277)
-- Name: entrepriser entrepriser_kontakter_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_kontakter_fk FOREIGN KEY (kontakt_id) REFERENCES kontakter.kontakter(id);


-- Completed on 2024-06-16 16:46:34

--
-- PostgreSQL database dump complete
--

