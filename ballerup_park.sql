--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

-- Started on 2025-02-03 16:25:54

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
-- TOC entry 7 (class 2615 OID 469354)
-- Name: aktiviteter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA aktiviteter;


--
-- TOC entry 9 (class 2615 OID 469356)
-- Name: elementer; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA elementer;


--
-- TOC entry 10 (class 2615 OID 469357)
-- Name: kontakter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA kontakter;


--
-- TOC entry 11 (class 2615 OID 469358)
-- Name: omegn; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA omegn;


--
-- TOC entry 12 (class 2615 OID 469359)
-- Name: omraader; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA omraader;


--
-- TOC entry 13 (class 2615 OID 469360)
-- Name: prissaetning; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA prissaetning;


--
-- TOC entry 230 (class 1259 OID 469363)
-- Name: aktivitets_typer; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.aktivitets_typer (
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    etype_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 231 (class 1259 OID 469369)
-- Name: aktivitetsgruppe_typer; Type: TABLE; Schema: aktiviteter; Owner: -
--

CREATE TABLE aktiviteter.aktivitetsgruppe_typer (
    agruppe_navn character varying NOT NULL,
    egruppe_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 232 (class 1259 OID 469375)
-- Name: elementer_punkter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_punkter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    etype_key character varying,
    etype_navn character varying NOT NULL,
    egruppe_key character varying,
    egruppe_navn character varying NOT NULL,
    ebasis_type character varying(1) DEFAULT 'F'::character(1) NOT NULL,
    navn character varying,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(Point,25832) NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 469387)
-- Name: element_flade_aktiviteter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_flade_aktiviteter (
    element_id uuid NOT NULL,
    oe_id uuid NOT NULL,
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    etype_key character varying NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 469392)
-- Name: element_flader_omraader; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_flader_omraader (
    element_id uuid NOT NULL,
    omraade_key character varying NOT NULL,
    niveau integer NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 469397)
-- Name: element_linje_aktiviteter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_linje_aktiviteter (
    element_id uuid NOT NULL,
    oe_id uuid NOT NULL,
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    etype_key character varying NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 469402)
-- Name: element_linjer_omraader; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_linjer_omraader (
    element_id uuid NOT NULL,
    omraade_key character varying NOT NULL,
    niveau integer NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 469407)
-- Name: element_punkt_aktiviteter; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_punkt_aktiviteter (
    element_id uuid NOT NULL,
    oe_id uuid NOT NULL,
    agruppe_navn character varying NOT NULL,
    atype_navn character varying NOT NULL,
    etype_key character varying NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 469412)
-- Name: element_punkter_omraader; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_punkter_omraader (
    element_id uuid NOT NULL,
    omraade_key character varying NOT NULL,
    niveau integer NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 469417)
-- Name: element_typer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_typer (
    etype_key character varying NOT NULL,
    etype_navn character varying NOT NULL,
    egruppe_key character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint,
    prioritet smallint
);


--
-- TOC entry 241 (class 1259 OID 469423)
-- Name: element_typer_stil; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.element_typer_stil (
    etype_navn text,
    ebasis_type text,
    geom_stil text
);


--
-- TOC entry 242 (class 1259 OID 469428)
-- Name: elementer_flader; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_flader (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    etype_key character varying,
    etype_navn character varying NOT NULL,
    egruppe_key character varying,
    egruppe_navn character varying NOT NULL,
    ebasis_type character varying(1) DEFAULT 'F'::character(1) NOT NULL,
    navn character varying,
    areal double precision,
    omkreds double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(MultiPolygon,25832) NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 469435)
-- Name: elementer_linjer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementer_linjer (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    etype_key character varying,
    etype_navn character varying NOT NULL,
    egruppe_key character varying,
    egruppe_navn character varying NOT NULL,
    ebasis_type character varying(1) DEFAULT 'F'::character(1) NOT NULL,
    navn character varying,
    laengde double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(MultiLineString,25832) NOT NULL
);


--
-- TOC entry 244 (class 1259 OID 469442)
-- Name: elementer_pkt_tr; Type: VIEW; Schema: elementer; Owner: -
--

CREATE VIEW elementer.elementer_pkt_tr AS
 SELECT elementer_punkter.id,
    elementer_punkter.etype_key,
    elementer_punkter.etype_navn,
    elementer_punkter.egruppe_key,
    elementer_punkter.egruppe_navn,
    elementer_punkter.ebasis_type,
    elementer_punkter.navn,
    elementer_punkter.hoejde,
    elementer_punkter.bredde,
    ((elementer_punkter.ekstra -> 'AGVT'::text) ->> 'Value'::text) AS att_agvt,
    ((elementer_punkter.ekstra -> 'AOT1'::text) ->> 'Value'::text) AS att_aot1,
    ((elementer_punkter.ekstra -> 'BM'::text) ->> 'Value'::text) AS att_bm,
    ((elementer_punkter.ekstra -> 'LOT'::text) ->> 'Value'::text) AS att_lot,
    ((elementer_punkter.ekstra -> 'OFT'::text) ->> 'Value'::text) AS att_oft,
    ((elementer_punkter.ekstra -> 'OT'::text) ->> 'Value'::text) AS att_ot,
    ((elementer_punkter.ekstra -> 'PL'::text) ->> 'Value'::text) AS att_pl,
    ((elementer_punkter.ekstra -> 'PlM'::text) ->> 'Value'::text) AS att_plm,
    ((elementer_punkter.ekstra -> 'PlMt'::text) ->> 'Value'::text) AS att_plmt,
    ((elementer_punkter.ekstra -> 'PAA'::text) ->> 'Value'::text) AS att_paa,
    ((elementer_punkter.ekstra -> 'TAD'::text) ->> 'Value'::text) AS att_tad,
    ((elementer_punkter.ekstra -> 'TAL'::text) ->> 'Value'::text) AS att_tal,
    ((elementer_punkter.ekstra -> 'TI'::text) ->> 'Value'::text) AS att_ti,
    ((elementer_punkter.ekstra -> 'TJ'::text) ->> 'Value'::text) AS att_tj,
    ((elementer_punkter.ekstra -> 'TRS'::text) ->> 'Value'::text) AS att_trs,
    ((elementer_punkter.ekstra -> 'TRSL'::text) ->> 'Value'::text) AS att_trsl,
    ((elementer_punkter.ekstra -> 'TSVP'::text) ->> 'Value'::text) AS att_tsvp,
    ((elementer_punkter.ekstra -> 'TT'::text) ->> 'Value'::text) AS att_tt,
    ((elementer_punkter.ekstra -> 'UE'::text) ->> 'Value'::text) AS att_ue,
    ((elementer_punkter.ekstra -> 'UER'::text) ->> 'Value'::text) AS att_uer,
    ((elementer_punkter.ekstra -> 'VTr'::text) ->> 'Value'::text) AS att_vtr,
    elementer_punkter.geom
   FROM elementer.elementer_punkter
  WHERE ((elementer_punkter.etype_key)::text = 'TR'::text);


--
-- TOC entry 245 (class 1259 OID 469447)
-- Name: elementgruppe_typer; Type: TABLE; Schema: elementer; Owner: -
--

CREATE TABLE elementer.elementgruppe_typer (
    egruppe_key character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint
);


--
-- TOC entry 246 (class 1259 OID 469453)
-- Name: kontakt_typer; Type: TABLE; Schema: kontakter; Owner: -
--

CREATE TABLE kontakter.kontakt_typer (
    ktype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL
);


--
-- TOC entry 247 (class 1259 OID 469459)
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
-- TOC entry 248 (class 1259 OID 469466)
-- Name: ballerup_omkreds; Type: TABLE; Schema: omegn; Owner: -
--

CREATE TABLE omegn.ballerup_omkreds (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25832),
    objectid character varying(254),
    id_lokalid character varying(254),
    id_namespace character varying(254),
    status character varying(254),
    geometristatus character varying(254),
    virkningfra timestamp without time zone,
    virkningtil timestamp without time zone,
    virkningsaktoer character varying(254),
    forretningshaendelse character varying(254),
    registreringfra timestamp without time zone,
    registreringtil timestamp without time zone,
    registreringsaktoer character varying(254),
    forretningsomraade character varying(254),
    forretningsproces character varying(254),
    dagiid integer,
    navn character varying(254),
    redigeringsret character varying(254),
    dataspecifikation character varying(254),
    landekode character varying(254),
    skala character varying(254),
    kommunekode character varying(4),
    lau1vaerdi character varying(254),
    udenforkommuneinddeling character varying(1),
    regionskode character varying(4),
    regionslokalid character varying(254),
    udtraeksdato timestamp without time zone,
    gmlid character varying(254)
);


--
-- TOC entry 249 (class 1259 OID 469471)
-- Name: ballerup_omkreds100; Type: TABLE; Schema: omegn; Owner: -
--

CREATE TABLE omegn.ballerup_omkreds100 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25832),
    objectid character varying(254),
    id_lokalid character varying(254),
    id_namespace character varying(254),
    status character varying(254),
    geometristatus character varying(254),
    virkningfra timestamp without time zone,
    virkningtil timestamp without time zone,
    virkningsaktoer character varying(254),
    forretningshaendelse character varying(254),
    registreringfra timestamp without time zone,
    registreringtil timestamp without time zone,
    registreringsaktoer character varying(254),
    forretningsomraade character varying(254),
    forretningsproces character varying(254),
    dagiid integer,
    navn character varying(254),
    redigeringsret character varying(254),
    dataspecifikation character varying(254),
    landekode character varying(254),
    skala character varying(254),
    kommunekode character varying(4),
    lau1vaerdi character varying(254),
    udenforkommuneinddeling character varying(1),
    regionskode character varying(4),
    regionslokalid character varying(254),
    udtraeksdato timestamp without time zone,
    gmlid character varying(254)
);


--
-- TOC entry 250 (class 1259 OID 469476)
-- Name: ballerup_omkreds100_id_seq; Type: SEQUENCE; Schema: omegn; Owner: -
--

CREATE SEQUENCE omegn.ballerup_omkreds100_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5654 (class 0 OID 0)
-- Dependencies: 250
-- Name: ballerup_omkreds100_id_seq; Type: SEQUENCE OWNED BY; Schema: omegn; Owner: -
--

ALTER SEQUENCE omegn.ballerup_omkreds100_id_seq OWNED BY omegn.ballerup_omkreds100.id;


--
-- TOC entry 251 (class 1259 OID 469477)
-- Name: ballerup_omkreds_id_seq; Type: SEQUENCE; Schema: omegn; Owner: -
--

CREATE SEQUENCE omegn.ballerup_omkreds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5655 (class 0 OID 0)
-- Dependencies: 251
-- Name: ballerup_omkreds_id_seq; Type: SEQUENCE OWNED BY; Schema: omegn; Owner: -
--

ALTER SEQUENCE omegn.ballerup_omkreds_id_seq OWNED BY omegn.ballerup_omkreds.id;


--
-- TOC entry 252 (class 1259 OID 469478)
-- Name: elementer_flader; Type: TABLE; Schema: omegn; Owner: -
--

CREATE TABLE omegn.elementer_flader (
    id uuid,
    etype_key character varying,
    etype_navn character varying,
    egruppe_key character varying,
    egruppe_navn character varying,
    ebasis_type character varying(1),
    navn character varying,
    areal double precision,
    omkreds double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry
);


--
-- TOC entry 253 (class 1259 OID 469483)
-- Name: elementer_linjer; Type: TABLE; Schema: omegn; Owner: -
--

CREATE TABLE omegn.elementer_linjer (
    id uuid,
    etype_key character varying,
    etype_navn character varying,
    egruppe_key character varying,
    egruppe_navn character varying,
    ebasis_type character varying(1),
    navn character varying,
    laengde double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 254 (class 1259 OID 469488)
-- Name: elementer_punkter; Type: TABLE; Schema: omegn; Owner: -
--

CREATE TABLE omegn.elementer_punkter (
    id uuid,
    etype_key character varying,
    etype_navn character varying,
    egruppe_key character varying,
    egruppe_navn character varying,
    ebasis_type character varying(1),
    navn character varying,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 255 (class 1259 OID 469493)
-- Name: arbejds_omraader; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.arbejds_omraader (
    omraade_key character varying NOT NULL,
    omraade_navn character varying NOT NULL,
    otype_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 256 (class 1259 OID 469499)
-- Name: elementer_flader_omegn; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.elementer_flader_omegn (
    id character varying NOT NULL,
    geom public.geometry(MultiPolygon,25832),
    etype_key character varying,
    etype_navn character varying,
    egruppe_key character varying,
    egruppe_navn character varying,
    ebasis_type character varying(1),
    navn character varying,
    areal double precision,
    omkreds double precision,
    hoejde double precision,
    bredde double precision,
    ekstra jsonb
);


--
-- TOC entry 257 (class 1259 OID 469504)
-- Name: omraade_entreprise; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.omraade_entreprise (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    entreprise_id uuid NOT NULL,
    omraade_key character varying NOT NULL,
    tilsyn_kontakt_id uuid NOT NULL
);


--
-- TOC entry 258 (class 1259 OID 469510)
-- Name: omraade_typer; Type: TABLE; Schema: omraader; Owner: -
--

CREATE TABLE omraader.omraade_typer (
    otype_key character varying NOT NULL,
    otype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    niveau integer
);


--
-- TOC entry 259 (class 1259 OID 469516)
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
-- TOC entry 260 (class 1259 OID 469524)
-- Name: entreprise_typer; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.entreprise_typer (
    ttype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);


--
-- TOC entry 261 (class 1259 OID 469530)
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
-- TOC entry 262 (class 1259 OID 469536)
-- Name: kommuneinddeling; Type: TABLE; Schema: prissaetning; Owner: -
--

CREATE TABLE prissaetning.kommuneinddeling (
    fid integer NOT NULL,
    objectid character varying(3999),
    id_lokalid character varying(3999),
    id_namespace character varying(3999),
    status character varying(3999),
    geometristatus character varying(3999),
    virkningfra timestamp with time zone,
    virkningtil timestamp with time zone,
    virkningsaktoer character varying(3999),
    forretningshaendelse character varying(3999),
    registreringfra timestamp with time zone,
    registreringtil timestamp with time zone,
    registreringsaktoer character varying(3999),
    forretningsomraade character varying(3999),
    forretningsproces character varying(3999),
    dagiid bigint,
    navn character varying(3999),
    redigeringsret character varying(3999),
    dataspecifikation character varying(3999),
    landekode character varying(3999),
    skala character varying(3999),
    kommunekode character varying(4),
    lau1vaerdi character varying(3999),
    udenforkommuneinddeling boolean,
    regionskode character varying(4),
    regionslokalid character varying(3999),
    udtraeksdato date,
    gmlid character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 263 (class 1259 OID 469541)
-- Name: kommuneinddeling_fid_seq; Type: SEQUENCE; Schema: prissaetning; Owner: -
--

CREATE SEQUENCE prissaetning.kommuneinddeling_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5656 (class 0 OID 0)
-- Dependencies: 263
-- Name: kommuneinddeling_fid_seq; Type: SEQUENCE OWNED BY; Schema: prissaetning; Owner: -
--

ALTER SEQUENCE prissaetning.kommuneinddeling_fid_seq OWNED BY prissaetning.kommuneinddeling.fid;


--
-- TOC entry 5404 (class 2604 OID 469712)
-- Name: ballerup_omkreds id; Type: DEFAULT; Schema: omegn; Owner: -
--

ALTER TABLE ONLY omegn.ballerup_omkreds ALTER COLUMN id SET DEFAULT nextval('omegn.ballerup_omkreds_id_seq'::regclass);


--
-- TOC entry 5405 (class 2604 OID 469713)
-- Name: ballerup_omkreds100 id; Type: DEFAULT; Schema: omegn; Owner: -
--

ALTER TABLE ONLY omegn.ballerup_omkreds100 ALTER COLUMN id SET DEFAULT nextval('omegn.ballerup_omkreds100_id_seq'::regclass);


--
-- TOC entry 5414 (class 2604 OID 469714)
-- Name: kommuneinddeling fid; Type: DEFAULT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.kommuneinddeling ALTER COLUMN fid SET DEFAULT nextval('prissaetning.kommuneinddeling_fid_seq'::regclass);


--
-- TOC entry 5416 (class 2606 OID 712005)
-- Name: aktivitets_typer aktivitets_typer_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_pk PRIMARY KEY (agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5418 (class 2606 OID 712007)
-- Name: aktivitetsgruppe_typer aktivitetsgruppe_typer_pk; Type: CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe_typer
    ADD CONSTRAINT aktivitetsgruppe_typer_pk PRIMARY KEY (agruppe_navn);


--
-- TOC entry 5423 (class 2606 OID 712009)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_pk PRIMARY KEY (element_id, agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5425 (class 2606 OID 712011)
-- Name: element_flader_omraader element_flader_omraader_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flader_omraader
    ADD CONSTRAINT element_flader_omraader_pk PRIMARY KEY (element_id, omraade_key, niveau);


--
-- TOC entry 5443 (class 2606 OID 712013)
-- Name: elementgruppe_typer element_gruppetyper_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementgruppe_typer
    ADD CONSTRAINT element_gruppetyper_pk PRIMARY KEY (egruppe_key);


--
-- TOC entry 5427 (class 2606 OID 712015)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_pk PRIMARY KEY (element_id, agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5429 (class 2606 OID 712017)
-- Name: element_linjer_omraader element_linjer_omraader_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linjer_omraader
    ADD CONSTRAINT element_linjer_omraader_pk PRIMARY KEY (element_id, omraade_key, niveau);


--
-- TOC entry 5431 (class 2606 OID 712019)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_pk PRIMARY KEY (element_id, agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5433 (class 2606 OID 712021)
-- Name: element_punkter_omraader element_punkter_omraader_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkter_omraader
    ADD CONSTRAINT element_punkter_omraader_pk PRIMARY KEY (element_id, omraade_key, niveau);


--
-- TOC entry 5435 (class 2606 OID 712023)
-- Name: element_typer element_typer_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_typer
    ADD CONSTRAINT element_typer_pk PRIMARY KEY (etype_key);


--
-- TOC entry 5438 (class 2606 OID 712025)
-- Name: elementer_flader elementer_flader_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_flader
    ADD CONSTRAINT elementer_flader_pk PRIMARY KEY (id);


--
-- TOC entry 5441 (class 2606 OID 712027)
-- Name: elementer_linjer elementer_linjer_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_linjer
    ADD CONSTRAINT elementer_linjer_pk PRIMARY KEY (id);


--
-- TOC entry 5421 (class 2606 OID 712029)
-- Name: elementer_punkter elementer_punkter_pk; Type: CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_punkter
    ADD CONSTRAINT elementer_punkter_pk PRIMARY KEY (id);


--
-- TOC entry 5445 (class 2606 OID 712031)
-- Name: kontakt_typer kontakt_typer_pk; Type: CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakt_typer
    ADD CONSTRAINT kontakt_typer_pk PRIMARY KEY (ktype_navn);


--
-- TOC entry 5447 (class 2606 OID 712033)
-- Name: kontakter kontakter_pk; Type: CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakter
    ADD CONSTRAINT kontakter_pk PRIMARY KEY (id);


--
-- TOC entry 5451 (class 2606 OID 712035)
-- Name: ballerup_omkreds100 ballerup_omkreds100_pkey; Type: CONSTRAINT; Schema: omegn; Owner: -
--

ALTER TABLE ONLY omegn.ballerup_omkreds100
    ADD CONSTRAINT ballerup_omkreds100_pkey PRIMARY KEY (id);


--
-- TOC entry 5449 (class 2606 OID 712037)
-- Name: ballerup_omkreds ballerup_omkreds_pkey; Type: CONSTRAINT; Schema: omegn; Owner: -
--

ALTER TABLE ONLY omegn.ballerup_omkreds
    ADD CONSTRAINT ballerup_omkreds_pkey PRIMARY KEY (id);


--
-- TOC entry 5453 (class 2606 OID 712039)
-- Name: arbejds_omraader arbejds_omraader_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.arbejds_omraader
    ADD CONSTRAINT arbejds_omraader_pk PRIMARY KEY (omraade_key);


--
-- TOC entry 5455 (class 2606 OID 712041)
-- Name: elementer_flader_omegn elementer_flader_omegn_pkey; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.elementer_flader_omegn
    ADD CONSTRAINT elementer_flader_omegn_pkey PRIMARY KEY (id);


--
-- TOC entry 5457 (class 2606 OID 712043)
-- Name: omraade_entreprise omraade_entreprise_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_pk PRIMARY KEY (id);


--
-- TOC entry 5459 (class 2606 OID 712045)
-- Name: omraade_typer omraade_typer_pk; Type: CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_typer
    ADD CONSTRAINT omraade_typer_pk PRIMARY KEY (otype_key);


--
-- TOC entry 5461 (class 2606 OID 712047)
-- Name: aktivitets_priser aktivitets_priser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_pk PRIMARY KEY (agruppe_navn, atype_navn, etype_key, entreprise_id);


--
-- TOC entry 5463 (class 2606 OID 712049)
-- Name: entreprise_typer entreprise_typer_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entreprise_typer
    ADD CONSTRAINT entreprise_typer_pk PRIMARY KEY (ttype_navn);


--
-- TOC entry 5465 (class 2606 OID 712051)
-- Name: entrepriser entrepriser_pk; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_pk PRIMARY KEY (id);


--
-- TOC entry 5468 (class 2606 OID 712053)
-- Name: kommuneinddeling kommuneinddeling_pkey; Type: CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.kommuneinddeling
    ADD CONSTRAINT kommuneinddeling_pkey PRIMARY KEY (fid);


--
-- TOC entry 5436 (class 1259 OID 712095)
-- Name: elementer_flader_geom_idx; Type: INDEX; Schema: elementer; Owner: -
--

CREATE INDEX elementer_flader_geom_idx ON elementer.elementer_flader USING gist (geom);


--
-- TOC entry 5439 (class 1259 OID 712096)
-- Name: elementer_linjer_geom_idx; Type: INDEX; Schema: elementer; Owner: -
--

CREATE INDEX elementer_linjer_geom_idx ON elementer.elementer_linjer USING gist (geom);


--
-- TOC entry 5419 (class 1259 OID 712097)
-- Name: elementer_punkter_geom_idx; Type: INDEX; Schema: elementer; Owner: -
--

CREATE INDEX elementer_punkter_geom_idx ON elementer.elementer_punkter USING gist (geom);


--
-- TOC entry 5466 (class 1259 OID 712098)
-- Name: kommuneinddeling_geom_geom_idx; Type: INDEX; Schema: prissaetning; Owner: -
--

CREATE INDEX kommuneinddeling_geom_geom_idx ON prissaetning.kommuneinddeling USING gist (geom);


--
-- TOC entry 5469 (class 2606 OID 712132)
-- Name: aktivitets_typer aktivitets_typer_aktivitetsgruppe_typer; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_aktivitetsgruppe_typer FOREIGN KEY (agruppe_navn) REFERENCES aktiviteter.aktivitetsgruppe_typer(agruppe_navn);


--
-- TOC entry 5470 (class 2606 OID 712137)
-- Name: aktivitets_typer aktivitets_typer_element_typer; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitets_typer
    ADD CONSTRAINT aktivitets_typer_element_typer FOREIGN KEY (etype_key) REFERENCES elementer.element_typer(etype_key);


--
-- TOC entry 5471 (class 2606 OID 712142)
-- Name: aktivitetsgruppe_typer aktivitetsgruppetyper_elementgruppe_typer; Type: FK CONSTRAINT; Schema: aktiviteter; Owner: -
--

ALTER TABLE ONLY aktiviteter.aktivitetsgruppe_typer
    ADD CONSTRAINT aktivitetsgruppetyper_elementgruppe_typer FOREIGN KEY (egruppe_key) REFERENCES elementer.elementgruppe_typer(egruppe_key);


--
-- TOC entry 5473 (class 2606 OID 712147)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (oe_id) REFERENCES omraader.omraade_entreprise(id);


--
-- TOC entry 5474 (class 2606 OID 712152)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, etype_key) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5475 (class 2606 OID 712157)
-- Name: element_flade_aktiviteter element_flade_aktiviteter_elementer_flader_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flade_aktiviteter
    ADD CONSTRAINT element_flade_aktiviteter_elementer_flader_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_flader(id);


--
-- TOC entry 5476 (class 2606 OID 712162)
-- Name: element_flader_omraader element_flader_omraader_arbejds_elementer_flader_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flader_omraader
    ADD CONSTRAINT element_flader_omraader_arbejds_elementer_flader_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_flader(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5477 (class 2606 OID 712167)
-- Name: element_flader_omraader element_flader_omraader_arbejds_omraader_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_flader_omraader
    ADD CONSTRAINT element_flader_omraader_arbejds_omraader_fk FOREIGN KEY (omraade_key) REFERENCES omraader.arbejds_omraader(omraade_key);


--
-- TOC entry 5478 (class 2606 OID 712172)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (oe_id) REFERENCES omraader.omraade_entreprise(id);


--
-- TOC entry 5479 (class 2606 OID 712177)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, etype_key) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5480 (class 2606 OID 712182)
-- Name: element_linje_aktiviteter element_linje_aktiviteter_elementer_linjer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linje_aktiviteter
    ADD CONSTRAINT element_linje_aktiviteter_elementer_linjer_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_linjer(id);


--
-- TOC entry 5481 (class 2606 OID 712187)
-- Name: element_linjer_omraader element_linjer_omraader_arbejds_elementer_linjer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linjer_omraader
    ADD CONSTRAINT element_linjer_omraader_arbejds_elementer_linjer_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_linjer(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5482 (class 2606 OID 712192)
-- Name: element_linjer_omraader element_linjer_omraader_arbejds_omraader_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_linjer_omraader
    ADD CONSTRAINT element_linjer_omraader_arbejds_omraader_fk FOREIGN KEY (omraade_key) REFERENCES omraader.arbejds_omraader(omraade_key);


--
-- TOC entry 5483 (class 2606 OID 712197)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_aktivitets_grupper_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (oe_id) REFERENCES omraader.omraade_entreprise(id);


--
-- TOC entry 5484 (class 2606 OID 712202)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, etype_key) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5485 (class 2606 OID 712207)
-- Name: element_punkt_aktiviteter element_punkt_aktiviteter_elementer_punkter_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkt_aktiviteter
    ADD CONSTRAINT element_punkt_aktiviteter_elementer_punkter_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_punkter(id);


--
-- TOC entry 5486 (class 2606 OID 712212)
-- Name: element_punkter_omraader element_punkter_omraader_arbejds_elementer_punkter_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkter_omraader
    ADD CONSTRAINT element_punkter_omraader_arbejds_elementer_punkter_fk FOREIGN KEY (element_id) REFERENCES elementer.elementer_punkter(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5487 (class 2606 OID 712217)
-- Name: element_punkter_omraader element_punkter_omraader_arbejds_omraader_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_punkter_omraader
    ADD CONSTRAINT element_punkter_omraader_arbejds_omraader_fk FOREIGN KEY (omraade_key) REFERENCES omraader.arbejds_omraader(omraade_key);


--
-- TOC entry 5488 (class 2606 OID 712222)
-- Name: element_typer element_typer_elementgruppe_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.element_typer
    ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (egruppe_key) REFERENCES elementer.elementgruppe_typer(egruppe_key);


--
-- TOC entry 5489 (class 2606 OID 712227)
-- Name: elementer_flader elementer_flader_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_flader
    ADD CONSTRAINT elementer_flader_element_typer_fk FOREIGN KEY (etype_key) REFERENCES elementer.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5490 (class 2606 OID 712232)
-- Name: elementer_linjer elementer_linjer_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_linjer
    ADD CONSTRAINT elementer_linjer_element_typer_fk FOREIGN KEY (etype_key) REFERENCES elementer.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5472 (class 2606 OID 712237)
-- Name: elementer_punkter elementer_punkter_element_typer_fk; Type: FK CONSTRAINT; Schema: elementer; Owner: -
--

ALTER TABLE ONLY elementer.elementer_punkter
    ADD CONSTRAINT elementer_punkter_element_typer_fk FOREIGN KEY (etype_key) REFERENCES elementer.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5491 (class 2606 OID 712242)
-- Name: kontakter kontakter_kontakt_typer; Type: FK CONSTRAINT; Schema: kontakter; Owner: -
--

ALTER TABLE ONLY kontakter.kontakter
    ADD CONSTRAINT kontakter_kontakt_typer FOREIGN KEY (ktype_navn) REFERENCES kontakter.kontakt_typer(ktype_navn);


--
-- TOC entry 5492 (class 2606 OID 712247)
-- Name: arbejds_omraader arbejds_omraader_omraade_typer_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.arbejds_omraader
    ADD CONSTRAINT arbejds_omraader_omraade_typer_fk FOREIGN KEY (otype_key) REFERENCES omraader.omraade_typer(otype_key);


--
-- TOC entry 5493 (class 2606 OID 712252)
-- Name: omraade_entreprise omraade_entreprise_entrepriser_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 5494 (class 2606 OID 712257)
-- Name: omraade_entreprise omraade_entreprise_kontakter_fk; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_kontakter_fk FOREIGN KEY (tilsyn_kontakt_id) REFERENCES kontakter.kontakter(id);


--
-- TOC entry 5495 (class 2606 OID 712262)
-- Name: omraade_entreprise omraade_entreprise_omraader; Type: FK CONSTRAINT; Schema: omraader; Owner: -
--

ALTER TABLE ONLY omraader.omraade_entreprise
    ADD CONSTRAINT omraade_entreprise_omraader FOREIGN KEY (omraade_key) REFERENCES omraader.arbejds_omraader(omraade_key);


--
-- TOC entry 5496 (class 2606 OID 712267)
-- Name: aktivitets_priser aktivitets_priser_aktivitets_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_aktivitets_typer_fk FOREIGN KEY (agruppe_navn, atype_navn, etype_key) REFERENCES aktiviteter.aktivitets_typer(agruppe_navn, atype_navn, etype_key);


--
-- TOC entry 5497 (class 2606 OID 712272)
-- Name: aktivitets_priser aktivitets_priser_entrepriser_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.aktivitets_priser
    ADD CONSTRAINT aktivitets_priser_entrepriser_fk FOREIGN KEY (entreprise_id) REFERENCES prissaetning.entrepriser(id);


--
-- TOC entry 5498 (class 2606 OID 712277)
-- Name: entrepriser entrepriser_entreprise_typer_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_entreprise_typer_fk FOREIGN KEY (ttype_navn) REFERENCES prissaetning.entreprise_typer(ttype_navn);


--
-- TOC entry 5499 (class 2606 OID 712282)
-- Name: entrepriser entrepriser_kontakter_fk; Type: FK CONSTRAINT; Schema: prissaetning; Owner: -
--

ALTER TABLE ONLY prissaetning.entrepriser
    ADD CONSTRAINT entrepriser_kontakter_fk FOREIGN KEY (kontakt_id) REFERENCES kontakter.kontakter(id);


-- Completed on 2025-02-03 16:25:54

--
-- PostgreSQL database dump complete
--

