--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.8

-- Started on 2024-12-17 12:44:18

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
-- TOC entry 325 (class 1259 OID 637204)
-- Name: a; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.a (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_abe character varying,
    att_abl character varying,
    att_abm character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_tfr character varying,
    att_tha character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 324 (class 1259 OID 637203)
-- Name: a_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.a_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8587 (class 0 OID 0)
-- Dependencies: 324
-- Name: a_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.a_ogc_fid_seq OWNED BY driftweb.a.ogc_fid;


--
-- TOC entry 885 (class 1259 OID 650303)
-- Name: aest; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.aest (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 884 (class 1259 OID 650302)
-- Name: aest_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.aest_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8588 (class 0 OID 0)
-- Dependencies: 884
-- Name: aest_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.aest_ogc_fid_seq OWNED BY driftweb.aest.ogc_fid;


--
-- TOC entry 331 (class 1259 OID 637257)
-- Name: ag; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ag (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_freukr character varying,
    att_tur character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vtj character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 330 (class 1259 OID 637256)
-- Name: ag_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ag_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8589 (class 0 OID 0)
-- Dependencies: 330
-- Name: ag_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ag_ogc_fid_seq OWNED BY driftweb.ag.ogc_fid;


--
-- TOC entry 327 (class 1259 OID 637237)
-- Name: ana1; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ana1 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 326 (class 1259 OID 637236)
-- Name: ana1_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ana1_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8590 (class 0 OID 0)
-- Dependencies: 326
-- Name: ana1_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ana1_ogc_fid_seq OWNED BY driftweb.ana1.ogc_fid;


--
-- TOC entry 329 (class 1259 OID 637247)
-- Name: ap; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ap (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_kt character varying,
    att_ue character varying,
    att_uer character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vvk character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 328 (class 1259 OID 637246)
-- Name: ap_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ap_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8591 (class 0 OID 0)
-- Dependencies: 328
-- Name: ap_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ap_ogc_fid_seq OWNED BY driftweb.ap.ogc_fid;


--
-- TOC entry 333 (class 1259 OID 637272)
-- Name: asf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.asf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_gfbm character varying,
    att_spe character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vvk character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 332 (class 1259 OID 637271)
-- Name: asf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.asf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8592 (class 0 OID 0)
-- Dependencies: 332
-- Name: asf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.asf_ogc_fid_seq OWNED BY driftweb.asf.ogc_fid;


--
-- TOC entry 649 (class 1259 OID 646311)
-- Name: asfob; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.asfob (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_type character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 648 (class 1259 OID 646310)
-- Name: asfob_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.asfob_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8593 (class 0 OID 0)
-- Dependencies: 648
-- Name: asfob_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.asfob_ogc_fid_seq OWNED BY driftweb.asfob.ogc_fid;


--
-- TOC entry 337 (class 1259 OID 637590)
-- Name: av; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.av (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_avpu character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 336 (class 1259 OID 637589)
-- Name: av_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.av_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8594 (class 0 OID 0)
-- Dependencies: 336
-- Name: av_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.av_ogc_fid_seq OWNED BY driftweb.av.ogc_fid;


--
-- TOC entry 359 (class 1259 OID 637921)
-- Name: b; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.b (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 358 (class 1259 OID 637920)
-- Name: b_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.b_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8595 (class 0 OID 0)
-- Dependencies: 358
-- Name: b_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.b_ogc_fid_seq OWNED BY driftweb.b.ogc_fid;


--
-- TOC entry 381 (class 1259 OID 639065)
-- Name: bb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_hb character varying,
    att_tisy character varying,
    att_tls_ character varying,
    att_ub character varying,
    att_ue character varying,
    att_uer character varying,
    attachment1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 380 (class 1259 OID 639064)
-- Name: bb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8596 (class 0 OID 0)
-- Dependencies: 380
-- Name: bb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bb_ogc_fid_seq OWNED BY driftweb.bb.ogc_fid;


--
-- TOC entry 367 (class 1259 OID 637974)
-- Name: bbs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bbs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 366 (class 1259 OID 637973)
-- Name: bbs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bbs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8597 (class 0 OID 0)
-- Dependencies: 366
-- Name: bbs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bbs_ogc_fid_seq OWNED BY driftweb.bbs.ogc_fid;


--
-- TOC entry 365 (class 1259 OID 637964)
-- Name: bd; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bd (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 364 (class 1259 OID 637963)
-- Name: bd_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bd_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8598 (class 0 OID 0)
-- Dependencies: 364
-- Name: bd_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bd_ogc_fid_seq OWNED BY driftweb.bd.ogc_fid;


--
-- TOC entry 377 (class 1259 OID 638809)
-- Name: bdl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bdl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 376 (class 1259 OID 638808)
-- Name: bdl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bdl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8599 (class 0 OID 0)
-- Dependencies: 376
-- Name: bdl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bdl_ogc_fid_seq OWNED BY driftweb.bdl.ogc_fid;


--
-- TOC entry 357 (class 1259 OID 637911)
-- Name: be; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.be (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_mh character varying,
    att_sd character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 356 (class 1259 OID 637910)
-- Name: be_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.be_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8600 (class 0 OID 0)
-- Dependencies: 356
-- Name: be_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.be_ogc_fid_seq OWNED BY driftweb.be.ogc_fid;


--
-- TOC entry 345 (class 1259 OID 637720)
-- Name: bebs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bebs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 344 (class 1259 OID 637719)
-- Name: bebs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bebs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8601 (class 0 OID 0)
-- Dependencies: 344
-- Name: bebs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bebs_ogc_fid_seq OWNED BY driftweb.bebs.ogc_fid;


--
-- TOC entry 347 (class 1259 OID 637841)
-- Name: befl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.befl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_tur character varying,
    att_virusf character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 346 (class 1259 OID 637840)
-- Name: befl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.befl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8602 (class 0 OID 0)
-- Dependencies: 346
-- Name: befl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.befl_ogc_fid_seq OWNED BY driftweb.befl.ogc_fid;


--
-- TOC entry 351 (class 1259 OID 637881)
-- Name: bepl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bepl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 350 (class 1259 OID 637880)
-- Name: bepl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bepl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8603 (class 0 OID 0)
-- Dependencies: 350
-- Name: bepl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bepl_ogc_fid_seq OWNED BY driftweb.bepl.ogc_fid;


--
-- TOC entry 355 (class 1259 OID 637901)
-- Name: bist; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bist (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 354 (class 1259 OID 637900)
-- Name: bist_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bist_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8604 (class 0 OID 0)
-- Dependencies: 354
-- Name: bist_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bist_ogc_fid_seq OWNED BY driftweb.bist.ogc_fid;


--
-- TOC entry 353 (class 1259 OID 637891)
-- Name: bistr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bistr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_gst character varying,
    att_kt character varying,
    att_rosl character varying,
    att_skr character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 352 (class 1259 OID 637890)
-- Name: bistr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bistr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8605 (class 0 OID 0)
-- Dependencies: 352
-- Name: bistr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bistr_ogc_fid_seq OWNED BY driftweb.bistr.ogc_fid;


--
-- TOC entry 397 (class 1259 OID 639331)
-- Name: bk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 396 (class 1259 OID 639330)
-- Name: bk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8606 (class 0 OID 0)
-- Dependencies: 396
-- Name: bk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bk_ogc_fid_seq OWNED BY driftweb.bk.ogc_fid;


--
-- TOC entry 349 (class 1259 OID 637851)
-- Name: bks; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bks (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 348 (class 1259 OID 637850)
-- Name: bks_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bks_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8607 (class 0 OID 0)
-- Dependencies: 348
-- Name: bks_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bks_ogc_fid_seq OWNED BY driftweb.bks.ogc_fid;


--
-- TOC entry 395 (class 1259 OID 639321)
-- Name: blp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.blp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 394 (class 1259 OID 639320)
-- Name: blp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.blp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8608 (class 0 OID 0)
-- Dependencies: 394
-- Name: blp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.blp_ogc_fid_seq OWNED BY driftweb.blp.ogc_fid;


--
-- TOC entry 385 (class 1259 OID 639247)
-- Name: bls; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bls (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_rkf character varying,
    att_rvsf character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 384 (class 1259 OID 639246)
-- Name: bls_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bls_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8609 (class 0 OID 0)
-- Dependencies: 384
-- Name: bls_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bls_ogc_fid_seq OWNED BY driftweb.bls.ogc_fid;


--
-- TOC entry 363 (class 1259 OID 637952)
-- Name: bm; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bm (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 362 (class 1259 OID 637951)
-- Name: bm_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bm_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8610 (class 0 OID 0)
-- Dependencies: 362
-- Name: bm_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bm_ogc_fid_seq OWNED BY driftweb.bm.ogc_fid;


--
-- TOC entry 369 (class 1259 OID 638004)
-- Name: borks; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.borks (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 368 (class 1259 OID 638003)
-- Name: borks_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.borks_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8611 (class 0 OID 0)
-- Dependencies: 368
-- Name: borks_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.borks_ogc_fid_seq OWNED BY driftweb.borks.ogc_fid;


--
-- TOC entry 375 (class 1259 OID 638053)
-- Name: bp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bpgs character varying,
    "att_eÅ" character varying,
    att_fre_ren1 character varying,
    att_fre_ren2 character varying,
    att_refb character varying,
    att_skr character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 374 (class 1259 OID 638052)
-- Name: bp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8612 (class 0 OID 0)
-- Dependencies: 374
-- Name: bp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bp_ogc_fid_seq OWNED BY driftweb.bp.ogc_fid;


--
-- TOC entry 393 (class 1259 OID 639311)
-- Name: br; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.br (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_blt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 392 (class 1259 OID 639310)
-- Name: br_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.br_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8613 (class 0 OID 0)
-- Dependencies: 392
-- Name: br_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.br_ogc_fid_seq OWNED BY driftweb.br.ogc_fid;


--
-- TOC entry 373 (class 1259 OID 638043)
-- Name: brl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.brl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 372 (class 1259 OID 638042)
-- Name: brl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.brl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8614 (class 0 OID 0)
-- Dependencies: 372
-- Name: brl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.brl_ogc_fid_seq OWNED BY driftweb.brl.ogc_fid;


--
-- TOC entry 371 (class 1259 OID 638014)
-- Name: bs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 370 (class 1259 OID 638013)
-- Name: bs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8615 (class 0 OID 0)
-- Dependencies: 370
-- Name: bs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bs_ogc_fid_seq OWNED BY driftweb.bs.ogc_fid;


--
-- TOC entry 343 (class 1259 OID 637710)
-- Name: bt; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bt (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_type character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 342 (class 1259 OID 637709)
-- Name: bt_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bt_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8616 (class 0 OID 0)
-- Dependencies: 342
-- Name: bt_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bt_ogc_fid_seq OWNED BY driftweb.bt.ogc_fid;


--
-- TOC entry 383 (class 1259 OID 639147)
-- Name: bu; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bu (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_fb character varying,
    att_hb character varying,
    "att_svÆ" character varying,
    att_tisy character varying,
    att_tls_ character varying,
    att_ub character varying,
    att_ue character varying,
    att_uer character varying,
    attachment1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 382 (class 1259 OID 639146)
-- Name: bu_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bu_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8617 (class 0 OID 0)
-- Dependencies: 382
-- Name: bu_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bu_ogc_fid_seq OWNED BY driftweb.bu.ogc_fid;


--
-- TOC entry 379 (class 1259 OID 639055)
-- Name: bud; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bud (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_mh character varying,
    att_oa character varying,
    att_opgprio character varying,
    att_ue character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 378 (class 1259 OID 639054)
-- Name: bud_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bud_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8618 (class 0 OID 0)
-- Dependencies: 378
-- Name: bud_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bud_ogc_fid_seq OWNED BY driftweb.bud.ogc_fid;


--
-- TOC entry 387 (class 1259 OID 639259)
-- Name: bus; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bus (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_bust character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 386 (class 1259 OID 639258)
-- Name: bus_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bus_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8619 (class 0 OID 0)
-- Dependencies: 386
-- Name: bus_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bus_ogc_fid_seq OWNED BY driftweb.bus.ogc_fid;


--
-- TOC entry 389 (class 1259 OID 639274)
-- Name: bygn; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.bygn (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 388 (class 1259 OID 639273)
-- Name: bygn_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.bygn_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8620 (class 0 OID 0)
-- Dependencies: 388
-- Name: bygn_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.bygn_ogc_fid_seq OWNED BY driftweb.bygn.ogc_fid;


--
-- TOC entry 399 (class 1259 OID 639363)
-- Name: cs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.cs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 398 (class 1259 OID 639362)
-- Name: cs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.cs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8621 (class 0 OID 0)
-- Dependencies: 398
-- Name: cs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.cs_ogc_fid_seq OWNED BY driftweb.cs.ogc_fid;


--
-- TOC entry 401 (class 1259 OID 639660)
-- Name: csr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.csr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 400 (class 1259 OID 639659)
-- Name: csr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.csr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8622 (class 0 OID 0)
-- Dependencies: 400
-- Name: csr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.csr_ogc_fid_seq OWNED BY driftweb.csr.ogc_fid;


--
-- TOC entry 409 (class 1259 OID 640132)
-- Name: cykelsti_vinterklasse_i_028; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.cykelsti_vinterklasse_i_028 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 408 (class 1259 OID 640131)
-- Name: cykelsti_vinterklasse_i_028_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.cykelsti_vinterklasse_i_028_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8623 (class 0 OID 0)
-- Dependencies: 408
-- Name: cykelsti_vinterklasse_i_028_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.cykelsti_vinterklasse_i_028_ogc_fid_seq OWNED BY driftweb.cykelsti_vinterklasse_i_028.ogc_fid;


--
-- TOC entry 405 (class 1259 OID 639936)
-- Name: cyse; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.cyse (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tur character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 404 (class 1259 OID 639935)
-- Name: cyse_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.cyse_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8624 (class 0 OID 0)
-- Dependencies: 404
-- Name: cyse_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.cyse_ogc_fid_seq OWNED BY driftweb.cyse.ogc_fid;


--
-- TOC entry 403 (class 1259 OID 639914)
-- Name: cysr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.cysr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 402 (class 1259 OID 639913)
-- Name: cysr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.cysr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8625 (class 0 OID 0)
-- Dependencies: 402
-- Name: cysr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.cysr_ogc_fid_seq OWNED BY driftweb.cysr.ogc_fid;


--
-- TOC entry 407 (class 1259 OID 639948)
-- Name: cyst; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.cyst (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_scs character varying,
    att_sty character varying,
    att_tisy character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 406 (class 1259 OID 639947)
-- Name: cyst_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.cyst_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8626 (class 0 OID 0)
-- Dependencies: 406
-- Name: cyst_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.cyst_ogc_fid_seq OWNED BY driftweb.cyst.ogc_fid;


--
-- TOC entry 413 (class 1259 OID 640173)
-- Name: dk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.dk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_ue character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 412 (class 1259 OID 640172)
-- Name: dk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.dk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8627 (class 0 OID 0)
-- Dependencies: 412
-- Name: dk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.dk_ogc_fid_seq OWNED BY driftweb.dk.ogc_fid;


--
-- TOC entry 415 (class 1259 OID 640183)
-- Name: eut; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.eut (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 414 (class 1259 OID 640182)
-- Name: eut_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.eut_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8628 (class 0 OID 0)
-- Dependencies: 414
-- Name: eut_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.eut_ogc_fid_seq OWNED BY driftweb.eut.ogc_fid;


--
-- TOC entry 447 (class 1259 OID 641004)
-- Name: fabos; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fabos (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fs character varying,
    att_uef character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 446 (class 1259 OID 641003)
-- Name: fabos_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fabos_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8629 (class 0 OID 0)
-- Dependencies: 446
-- Name: fabos_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fabos_ogc_fid_seq OWNED BY driftweb.fabos.ogc_fid;


--
-- TOC entry 449 (class 1259 OID 641014)
-- Name: fafag; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fafag (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fs character varying,
    att_uef character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 448 (class 1259 OID 641013)
-- Name: fafag_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fafag_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8630 (class 0 OID 0)
-- Dependencies: 448
-- Name: fafag_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fafag_ogc_fid_seq OWNED BY driftweb.fafag.ogc_fid;


--
-- TOC entry 451 (class 1259 OID 641024)
-- Name: fafagos; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fafagos (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fs character varying,
    att_uef character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 450 (class 1259 OID 641023)
-- Name: fafagos_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fafagos_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8631 (class 0 OID 0)
-- Dependencies: 450
-- Name: fafagos_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fafagos_ogc_fid_seq OWNED BY driftweb.fafagos.ogc_fid;


--
-- TOC entry 453 (class 1259 OID 641034)
-- Name: fagobos; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fagobos (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fs character varying,
    att_uef character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 452 (class 1259 OID 641033)
-- Name: fagobos_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fagobos_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8632 (class 0 OID 0)
-- Dependencies: 452
-- Name: fagobos_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fagobos_ogc_fid_seq OWNED BY driftweb.fagobos.ogc_fid;


--
-- TOC entry 455 (class 1259 OID 641044)
-- Name: fagos; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fagos (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fs character varying,
    att_uef character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 454 (class 1259 OID 641043)
-- Name: fagos_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fagos_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8633 (class 0 OID 0)
-- Dependencies: 454
-- Name: fagos_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fagos_ogc_fid_seq OWNED BY driftweb.fagos.ogc_fid;


--
-- TOC entry 467 (class 1259 OID 641246)
-- Name: fb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_art character varying,
    att_b character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_mh character varying,
    att_opgudf character varying,
    att_sd character varying,
    att_tisy character varying,
    att_tls_ character varying,
    att_ue character varying,
    att_uer character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 466 (class 1259 OID 641245)
-- Name: fb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8634 (class 0 OID 0)
-- Dependencies: 466
-- Name: fb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fb_ogc_fid_seq OWNED BY driftweb.fb.ogc_fid;


--
-- TOC entry 463 (class 1259 OID 641204)
-- Name: fbmv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fbmv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_aot2 character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 462 (class 1259 OID 641203)
-- Name: fbmv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fbmv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8635 (class 0 OID 0)
-- Dependencies: 462
-- Name: fbmv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fbmv_ogc_fid_seq OWNED BY driftweb.fbmv.ogc_fid;


--
-- TOC entry 457 (class 1259 OID 641054)
-- Name: fdf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fdf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_belty character varying,
    att_blt character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_gaaga character varying,
    att_hbr character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vest character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 456 (class 1259 OID 641053)
-- Name: fdf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fdf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8636 (class 0 OID 0)
-- Dependencies: 456
-- Name: fdf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fdf_ogc_fid_seq OWNED BY driftweb.fdf.ogc_fid;


--
-- TOC entry 459 (class 1259 OID 641112)
-- Name: fdl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fdl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_belty character varying,
    att_blt character varying,
    att_fkl character varying,
    att_flr character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_gaaga character varying,
    att_hbr character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vest character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 458 (class 1259 OID 641111)
-- Name: fdl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fdl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8637 (class 0 OID 0)
-- Dependencies: 458
-- Name: fdl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fdl_ogc_fid_seq OWNED BY driftweb.fdl.ogc_fid;


--
-- TOC entry 473 (class 1259 OID 641290)
-- Name: fg; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fg (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 481 (class 1259 OID 641490)
-- Name: fg1; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fg1 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_eig character varying,
    att_gst character varying,
    att_rosl character varying,
    att_skr character varying,
    att_ua character varying,
    att_udb character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 480 (class 1259 OID 641489)
-- Name: fg1_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fg1_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8638 (class 0 OID 0)
-- Dependencies: 480
-- Name: fg1_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fg1_ogc_fid_seq OWNED BY driftweb.fg1.ogc_fid;


--
-- TOC entry 483 (class 1259 OID 641977)
-- Name: fg1no; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fg1no (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    "att_fgasÅ" character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 482 (class 1259 OID 641976)
-- Name: fg1no_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fg1no_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8639 (class 0 OID 0)
-- Dependencies: 482
-- Name: fg1no_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fg1no_ogc_fid_seq OWNED BY driftweb.fg1no.ogc_fid;


--
-- TOC entry 485 (class 1259 OID 641987)
-- Name: fg2; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fg2 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_eig character varying,
    att_gst character varying,
    att_kv character varying,
    att_skr character varying,
    att_ua character varying,
    att_udb character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 484 (class 1259 OID 641986)
-- Name: fg2_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fg2_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8640 (class 0 OID 0)
-- Dependencies: 484
-- Name: fg2_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fg2_ogc_fid_seq OWNED BY driftweb.fg2.ogc_fid;


--
-- TOC entry 487 (class 1259 OID 642128)
-- Name: fg2no; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fg2no (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    "att_fgasÅ" character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 486 (class 1259 OID 642127)
-- Name: fg2no_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fg2no_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8641 (class 0 OID 0)
-- Dependencies: 486
-- Name: fg2no_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fg2no_ogc_fid_seq OWNED BY driftweb.fg2no.ogc_fid;


--
-- TOC entry 472 (class 1259 OID 641289)
-- Name: fg_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fg_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8642 (class 0 OID 0)
-- Dependencies: 472
-- Name: fg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fg_ogc_fid_seq OWNED BY driftweb.fg.ogc_fid;


--
-- TOC entry 475 (class 1259 OID 641435)
-- Name: fgg; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fgg (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fre_ren1 character varying,
    att_fre_ren2 character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 474 (class 1259 OID 641434)
-- Name: fgg_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fgg_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8643 (class 0 OID 0)
-- Dependencies: 474
-- Name: fgg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fgg_ogc_fid_seq OWNED BY driftweb.fgg.ogc_fid;


--
-- TOC entry 477 (class 1259 OID 641445)
-- Name: fgv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fgv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_eig character varying,
    att_gst character varying,
    att_ua character varying,
    att_udb character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 476 (class 1259 OID 641444)
-- Name: fgv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fgv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8644 (class 0 OID 0)
-- Dependencies: 476
-- Name: fgv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fgv_ogc_fid_seq OWNED BY driftweb.fgv.ogc_fid;


--
-- TOC entry 479 (class 1259 OID 641480)
-- Name: fgvno; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fgvno (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    "att_fgasÅ" character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 478 (class 1259 OID 641479)
-- Name: fgvno_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fgvno_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8645 (class 0 OID 0)
-- Dependencies: 478
-- Name: fgvno_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fgvno_ogc_fid_seq OWNED BY driftweb.fgvno.ogc_fid;


--
-- TOC entry 437 (class 1259 OID 640773)
-- Name: fh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 436 (class 1259 OID 640772)
-- Name: fh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8646 (class 0 OID 0)
-- Dependencies: 436
-- Name: fh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fh_ogc_fid_seq OWNED BY driftweb.fh.ogc_fid;


--
-- TOC entry 435 (class 1259 OID 640306)
-- Name: flb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.flb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fvt character varying,
    att_ifhi character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_ukb character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 434 (class 1259 OID 640305)
-- Name: flb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.flb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8647 (class 0 OID 0)
-- Dependencies: 434
-- Name: flb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.flb_ogc_fid_seq OWNED BY driftweb.flb.ogc_fid;


--
-- TOC entry 465 (class 1259 OID 641224)
-- Name: fm; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fm (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 464 (class 1259 OID 641223)
-- Name: fm_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fm_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8648 (class 0 OID 0)
-- Dependencies: 464
-- Name: fm_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fm_ogc_fid_seq OWNED BY driftweb.fm.ogc_fid;


--
-- TOC entry 439 (class 1259 OID 640798)
-- Name: fo; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fo (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 438 (class 1259 OID 640797)
-- Name: fo_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fo_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8649 (class 0 OID 0)
-- Dependencies: 438
-- Name: fo_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fo_ogc_fid_seq OWNED BY driftweb.fo.ogc_fid;


--
-- TOC entry 443 (class 1259 OID 640975)
-- Name: foh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.foh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_ue character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 442 (class 1259 OID 640974)
-- Name: foh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.foh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8650 (class 0 OID 0)
-- Dependencies: 442
-- Name: foh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.foh_ogc_fid_seq OWNED BY driftweb.foh.ogc_fid;


--
-- TOC entry 441 (class 1259 OID 640962)
-- Name: fok; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fok (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 440 (class 1259 OID 640961)
-- Name: fok_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fok_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8651 (class 0 OID 0)
-- Dependencies: 440
-- Name: fok_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fok_ogc_fid_seq OWNED BY driftweb.fok.ogc_fid;


--
-- TOC entry 491 (class 1259 OID 642192)
-- Name: fri; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fri (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 490 (class 1259 OID 642191)
-- Name: fri_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fri_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8652 (class 0 OID 0)
-- Dependencies: 490
-- Name: fri_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fri_ogc_fid_seq OWNED BY driftweb.fri.ogc_fid;


--
-- TOC entry 651 (class 1259 OID 646323)
-- Name: fsa; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fsa (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fs character varying,
    att_ue character varying,
    att_uef character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 650 (class 1259 OID 646322)
-- Name: fsa_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fsa_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8653 (class 0 OID 0)
-- Dependencies: 650
-- Name: fsa_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fsa_ogc_fid_seq OWNED BY driftweb.fsa.ogc_fid;


--
-- TOC entry 433 (class 1259 OID 640293)
-- Name: fst; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fst (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 432 (class 1259 OID 640292)
-- Name: fst_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fst_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8654 (class 0 OID 0)
-- Dependencies: 432
-- Name: fst_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fst_ogc_fid_seq OWNED BY driftweb.fst.ogc_fid;


--
-- TOC entry 489 (class 1259 OID 642138)
-- Name: ftav; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ftav (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 488 (class 1259 OID 642137)
-- Name: ftav_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ftav_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8655 (class 0 OID 0)
-- Dependencies: 488
-- Name: ftav_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ftav_ogc_fid_seq OWNED BY driftweb.ftav.ogc_fid;


--
-- TOC entry 417 (class 1259 OID 640193)
-- Name: ful; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ful (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_lu character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 416 (class 1259 OID 640192)
-- Name: ful_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ful_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8656 (class 0 OID 0)
-- Dependencies: 416
-- Name: ful_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ful_ogc_fid_seq OWNED BY driftweb.ful.ogc_fid;


--
-- TOC entry 471 (class 1259 OID 641280)
-- Name: fut; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fut (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 470 (class 1259 OID 641279)
-- Name: fut_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fut_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8657 (class 0 OID 0)
-- Dependencies: 470
-- Name: fut_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fut_ogc_fid_seq OWNED BY driftweb.fut.ogc_fid;


--
-- TOC entry 469 (class 1259 OID 641270)
-- Name: fvh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.fvh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 468 (class 1259 OID 641269)
-- Name: fvh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.fvh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8658 (class 0 OID 0)
-- Dependencies: 468
-- Name: fvh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.fvh_ogc_fid_seq OWNED BY driftweb.fvh.ogc_fid;


--
-- TOC entry 499 (class 1259 OID 642344)
-- Name: g; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.g (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fs character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_kt character varying,
    att_kval character varying,
    att_mr character varying,
    att_sn character varying,
    att_tur character varying,
    att_ue character varying,
    att_uef character varying,
    att_uer character varying,
    att_ukb character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vl character varying,
    att_vtj character varying,
    att_vtjx character varying,
    att_vvk character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 498 (class 1259 OID 642343)
-- Name: g_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.g_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8659 (class 0 OID 0)
-- Dependencies: 498
-- Name: g_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.g_ogc_fid_seq OWNED BY driftweb.g.ogc_fid;


--
-- TOC entry 507 (class 1259 OID 643202)
-- Name: gasf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.gasf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_type character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 506 (class 1259 OID 643201)
-- Name: gasf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.gasf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8660 (class 0 OID 0)
-- Dependencies: 506
-- Name: gasf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.gasf_ogc_fid_seq OWNED BY driftweb.gasf.ogc_fid;


--
-- TOC entry 493 (class 1259 OID 642202)
-- Name: gb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.gb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 492 (class 1259 OID 642201)
-- Name: gb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.gb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8661 (class 0 OID 0)
-- Dependencies: 492
-- Name: gb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.gb_ogc_fid_seq OWNED BY driftweb.gb.ogc_fid;


--
-- TOC entry 509 (class 1259 OID 643288)
-- Name: gfl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.gfl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 508 (class 1259 OID 643287)
-- Name: gfl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.gfl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8662 (class 0 OID 0)
-- Dependencies: 508
-- Name: gfl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.gfl_ogc_fid_seq OWNED BY driftweb.gfl.ogc_fid;


--
-- TOC entry 685 (class 1259 OID 646722)
-- Name: ggrg; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ggrg (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 684 (class 1259 OID 646721)
-- Name: ggrg_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ggrg_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8663 (class 0 OID 0)
-- Dependencies: 684
-- Name: ggrg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ggrg_ogc_fid_seq OWNED BY driftweb.ggrg.ogc_fid;


--
-- TOC entry 497 (class 1259 OID 642235)
-- Name: gks; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.gks (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 496 (class 1259 OID 642234)
-- Name: gks_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.gks_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8664 (class 0 OID 0)
-- Dependencies: 496
-- Name: gks_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.gks_ogc_fid_seq OWNED BY driftweb.gks.ogc_fid;


--
-- TOC entry 501 (class 1259 OID 642864)
-- Name: gra; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.gra (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_type character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 500 (class 1259 OID 642863)
-- Name: gra_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.gra_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8665 (class 0 OID 0)
-- Dependencies: 500
-- Name: gra_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.gra_ogc_fid_seq OWNED BY driftweb.gra.ogc_fid;


--
-- TOC entry 495 (class 1259 OID 642212)
-- Name: grf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.grf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 494 (class 1259 OID 642211)
-- Name: grf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.grf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8666 (class 0 OID 0)
-- Dependencies: 494
-- Name: grf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.grf_ogc_fid_seq OWNED BY driftweb.grf.ogc_fid;


--
-- TOC entry 505 (class 1259 OID 643192)
-- Name: groeft_054; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.groeft_054 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_kotr character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 504 (class 1259 OID 643191)
-- Name: groeft_054_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.groeft_054_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8667 (class 0 OID 0)
-- Dependencies: 504
-- Name: groeft_054_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.groeft_054_ogc_fid_seq OWNED BY driftweb.groeft_054.ogc_fid;


--
-- TOC entry 515 (class 1259 OID 643321)
-- Name: ha; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ha (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 514 (class 1259 OID 643320)
-- Name: ha_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ha_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8668 (class 0 OID 0)
-- Dependencies: 514
-- Name: ha_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ha_ogc_fid_seq OWNED BY driftweb.ha.ogc_fid;


--
-- TOC entry 511 (class 1259 OID 643298)
-- Name: havelod_057; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.havelod_057 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 510 (class 1259 OID 643297)
-- Name: havelod_057_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.havelod_057_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8669 (class 0 OID 0)
-- Dependencies: 510
-- Name: havelod_057_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.havelod_057_ogc_fid_seq OWNED BY driftweb.havelod_057.ogc_fid;


--
-- TOC entry 519 (class 1259 OID 643374)
-- Name: hb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.hb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 518 (class 1259 OID 643373)
-- Name: hb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.hb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8670 (class 0 OID 0)
-- Dependencies: 518
-- Name: hb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.hb_ogc_fid_seq OWNED BY driftweb.hb.ogc_fid;


--
-- TOC entry 335 (class 1259 OID 637580)
-- Name: hd24; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.hd24 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 334 (class 1259 OID 637579)
-- Name: hd24_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.hd24_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8671 (class 0 OID 0)
-- Dependencies: 334
-- Name: hd24_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.hd24_ogc_fid_seq OWNED BY driftweb.hd24.ogc_fid;


--
-- TOC entry 513 (class 1259 OID 643308)
-- Name: he; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.he (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 512 (class 1259 OID 643307)
-- Name: he_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.he_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8672 (class 0 OID 0)
-- Dependencies: 512
-- Name: he_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.he_ogc_fid_seq OWNED BY driftweb.he.ogc_fid;


--
-- TOC entry 525 (class 1259 OID 643415)
-- Name: ib; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ib (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fkl character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vvk character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 524 (class 1259 OID 643414)
-- Name: ib_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ib_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8673 (class 0 OID 0)
-- Dependencies: 524
-- Name: ib_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ib_ogc_fid_seq OWNED BY driftweb.ib.ogc_fid;


--
-- TOC entry 527 (class 1259 OID 643425)
-- Name: if; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.if (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fkl character varying,
    att_fr character varying,
    att_kt character varying,
    att_tur character varying,
    att_type character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 526 (class 1259 OID 643424)
-- Name: if_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.if_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8674 (class 0 OID 0)
-- Dependencies: 526
-- Name: if_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.if_ogc_fid_seq OWNED BY driftweb.if.ogc_fid;


--
-- TOC entry 529 (class 1259 OID 643435)
-- Name: inst; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.inst (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_aot2 character varying,
    att_belty character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_uer character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_vtj character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 528 (class 1259 OID 643434)
-- Name: inst_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.inst_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8675 (class 0 OID 0)
-- Dependencies: 528
-- Name: inst_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.inst_ogc_fid_seq OWNED BY driftweb.inst.ogc_fid;


--
-- TOC entry 531 (class 1259 OID 643472)
-- Name: instpl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.instpl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_aot2 character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_uer character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_vtj character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 530 (class 1259 OID 643471)
-- Name: instpl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.instpl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8676 (class 0 OID 0)
-- Dependencies: 530
-- Name: instpl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.instpl_ogc_fid_seq OWNED BY driftweb.instpl.ogc_fid;


--
-- TOC entry 533 (class 1259 OID 643485)
-- Name: inve; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.inve (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    att_vvk character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 532 (class 1259 OID 643484)
-- Name: inve_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.inve_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8677 (class 0 OID 0)
-- Dependencies: 532
-- Name: inve_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.inve_ogc_fid_seq OWNED BY driftweb.inve.ogc_fid;


--
-- TOC entry 523 (class 1259 OID 643405)
-- Name: iv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.iv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 522 (class 1259 OID 643404)
-- Name: iv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.iv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8678 (class 0 OID 0)
-- Dependencies: 522
-- Name: iv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.iv_ogc_fid_seq OWNED BY driftweb.iv.ogc_fid;


--
-- TOC entry 535 (class 1259 OID 643495)
-- Name: j; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.j (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 534 (class 1259 OID 643494)
-- Name: j_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.j_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8679 (class 0 OID 0)
-- Dependencies: 534
-- Name: j_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.j_ogc_fid_seq OWNED BY driftweb.j.ogc_fid;


--
-- TOC entry 579 (class 1259 OID 645098)
-- Name: k; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.k (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 578 (class 1259 OID 645097)
-- Name: k_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.k_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8680 (class 0 OID 0)
-- Dependencies: 578
-- Name: k_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.k_ogc_fid_seq OWNED BY driftweb.k.ogc_fid;


--
-- TOC entry 577 (class 1259 OID 645083)
-- Name: kg; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kg (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 576 (class 1259 OID 645082)
-- Name: kg_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kg_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8681 (class 0 OID 0)
-- Dependencies: 576
-- Name: kg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kg_ogc_fid_seq OWNED BY driftweb.kg.ogc_fid;


--
-- TOC entry 517 (class 1259 OID 643349)
-- Name: kh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_h character varying,
    att_hkl character varying,
    att_hs character varying,
    att_kl1 character varying,
    att_kl2 character varying,
    att_lug character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 516 (class 1259 OID 643348)
-- Name: kh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8682 (class 0 OID 0)
-- Dependencies: 516
-- Name: kh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kh_ogc_fid_seq OWNED BY driftweb.kh.ogc_fid;


--
-- TOC entry 581 (class 1259 OID 645116)
-- Name: kl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 580 (class 1259 OID 645115)
-- Name: kl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8683 (class 0 OID 0)
-- Dependencies: 580
-- Name: kl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kl_ogc_fid_seq OWNED BY driftweb.kl.ogc_fid;


--
-- TOC entry 543 (class 1259 OID 644446)
-- Name: kli; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kli (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_type character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 542 (class 1259 OID 644445)
-- Name: kli_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kli_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8684 (class 0 OID 0)
-- Dependencies: 542
-- Name: kli_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kli_ogc_fid_seq OWNED BY driftweb.kli.ogc_fid;


--
-- TOC entry 681 (class 1259 OID 646686)
-- Name: klp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.klp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_h character varying,
    att_hkl character varying,
    att_kl1 character varying,
    att_kl2 character varying,
    att_lug character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 680 (class 1259 OID 646685)
-- Name: klp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.klp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8685 (class 0 OID 0)
-- Dependencies: 680
-- Name: klp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.klp_ogc_fid_seq OWNED BY driftweb.klp.ogc_fid;


--
-- TOC entry 541 (class 1259 OID 644425)
-- Name: kp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_klp character varying,
    att_kt character varying,
    att_mh character varying,
    att_opf character varying,
    att_sd character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 540 (class 1259 OID 644424)
-- Name: kp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8686 (class 0 OID 0)
-- Dependencies: 540
-- Name: kp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kp_ogc_fid_seq OWNED BY driftweb.kp.ogc_fid;


--
-- TOC entry 539 (class 1259 OID 644413)
-- Name: kpl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kpl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 538 (class 1259 OID 644412)
-- Name: kpl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kpl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8687 (class 0 OID 0)
-- Dependencies: 538
-- Name: kpl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kpl_ogc_fid_seq OWNED BY driftweb.kpl.ogc_fid;


--
-- TOC entry 545 (class 1259 OID 644459)
-- Name: kps; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.kps (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_type character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 544 (class 1259 OID 644458)
-- Name: kps_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.kps_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8688 (class 0 OID 0)
-- Dependencies: 544
-- Name: kps_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.kps_ogc_fid_seq OWNED BY driftweb.kps.ogc_fid;


--
-- TOC entry 537 (class 1259 OID 643518)
-- Name: ks; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ks (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 536 (class 1259 OID 643517)
-- Name: ks_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ks_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8689 (class 0 OID 0)
-- Dependencies: 536
-- Name: ks_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ks_ogc_fid_seq OWNED BY driftweb.ks.ogc_fid;


--
-- TOC entry 597 (class 1259 OID 645566)
-- Name: l; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.l (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_dh character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 596 (class 1259 OID 645565)
-- Name: l_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.l_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8690 (class 0 OID 0)
-- Dependencies: 596
-- Name: l_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.l_ogc_fid_seq OWNED BY driftweb.l.ogc_fid;


--
-- TOC entry 599 (class 1259 OID 645623)
-- Name: lak; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lak (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_dh character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 598 (class 1259 OID 645622)
-- Name: lak_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lak_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8691 (class 0 OID 0)
-- Dependencies: 598
-- Name: lak_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lak_ogc_fid_seq OWNED BY driftweb.lak.ogc_fid;


--
-- TOC entry 601 (class 1259 OID 645660)
-- Name: lb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 600 (class 1259 OID 645659)
-- Name: lb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8692 (class 0 OID 0)
-- Dependencies: 600
-- Name: lb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lb_ogc_fid_seq OWNED BY driftweb.lb.ogc_fid;


--
-- TOC entry 607 (class 1259 OID 645699)
-- Name: lful; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lful (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 606 (class 1259 OID 645698)
-- Name: lful_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lful_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8693 (class 0 OID 0)
-- Dependencies: 606
-- Name: lful_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lful_ogc_fid_seq OWNED BY driftweb.lful.ogc_fid;


--
-- TOC entry 593 (class 1259 OID 645218)
-- Name: lhk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lhk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_frb character varying,
    att_kri character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 592 (class 1259 OID 645217)
-- Name: lhk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lhk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8694 (class 0 OID 0)
-- Dependencies: 592
-- Name: lhk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lhk_ogc_fid_seq OWNED BY driftweb.lhk.ogc_fid;


--
-- TOC entry 595 (class 1259 OID 645555)
-- Name: lia; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lia (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 594 (class 1259 OID 645554)
-- Name: lia_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lia_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8695 (class 0 OID 0)
-- Dependencies: 594
-- Name: lia_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lia_ogc_fid_seq OWNED BY driftweb.lia.ogc_fid;


--
-- TOC entry 583 (class 1259 OID 645128)
-- Name: ll; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ll (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 582 (class 1259 OID 645127)
-- Name: ll_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ll_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8696 (class 0 OID 0)
-- Dependencies: 582
-- Name: ll_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ll_ogc_fid_seq OWNED BY driftweb.ll.ogc_fid;


--
-- TOC entry 585 (class 1259 OID 645138)
-- Name: lmu; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lmu (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 584 (class 1259 OID 645137)
-- Name: lmu_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lmu_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8697 (class 0 OID 0)
-- Dependencies: 584
-- Name: lmu_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lmu_ogc_fid_seq OWNED BY driftweb.lmu.ogc_fid;


--
-- TOC entry 587 (class 1259 OID 645180)
-- Name: lr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    attachment1 character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 586 (class 1259 OID 645179)
-- Name: lr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8698 (class 0 OID 0)
-- Dependencies: 586
-- Name: lr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lr_ogc_fid_seq OWNED BY driftweb.lr.ogc_fid;


--
-- TOC entry 589 (class 1259 OID 645190)
-- Name: lrf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lrf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 588 (class 1259 OID 645189)
-- Name: lrf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lrf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8699 (class 0 OID 0)
-- Dependencies: 588
-- Name: lrf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lrf_ogc_fid_seq OWNED BY driftweb.lrf.ogc_fid;


--
-- TOC entry 603 (class 1259 OID 645670)
-- Name: ls; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ls (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 602 (class 1259 OID 645669)
-- Name: ls_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ls_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8700 (class 0 OID 0)
-- Dependencies: 602
-- Name: ls_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ls_ogc_fid_seq OWNED BY driftweb.ls.ogc_fid;


--
-- TOC entry 881 (class 1259 OID 650278)
-- Name: lt; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lt (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    attachment1 character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 880 (class 1259 OID 650277)
-- Name: lt_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lt_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8701 (class 0 OID 0)
-- Dependencies: 880
-- Name: lt_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lt_ogc_fid_seq OWNED BY driftweb.lt.ogc_fid;


--
-- TOC entry 605 (class 1259 OID 645680)
-- Name: lv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.lv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_sd character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 604 (class 1259 OID 645679)
-- Name: lv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.lv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8702 (class 0 OID 0)
-- Dependencies: 604
-- Name: lv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.lv_ogc_fid_seq OWNED BY driftweb.lv.ogc_fid;


--
-- TOC entry 623 (class 1259 OID 645996)
-- Name: m; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.m (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 622 (class 1259 OID 645995)
-- Name: m_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.m_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8703 (class 0 OID 0)
-- Dependencies: 622
-- Name: m_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.m_ogc_fid_seq OWNED BY driftweb.m.ogc_fid;


--
-- TOC entry 613 (class 1259 OID 645804)
-- Name: markvej_077; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.markvej_077 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 612 (class 1259 OID 645803)
-- Name: markvej_077_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.markvej_077_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8704 (class 0 OID 0)
-- Dependencies: 612
-- Name: markvej_077_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.markvej_077_ogc_fid_seq OWNED BY driftweb.markvej_077.ogc_fid;


--
-- TOC entry 615 (class 1259 OID 645814)
-- Name: me; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.me (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_type character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 614 (class 1259 OID 645813)
-- Name: me_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.me_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8705 (class 0 OID 0)
-- Dependencies: 614
-- Name: me_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.me_ogc_fid_seq OWNED BY driftweb.me.ogc_fid;


--
-- TOC entry 611 (class 1259 OID 645749)
-- Name: mk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.mk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 610 (class 1259 OID 645748)
-- Name: mk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.mk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8706 (class 0 OID 0)
-- Dependencies: 610
-- Name: mk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.mk_ogc_fid_seq OWNED BY driftweb.mk.ogc_fid;


--
-- TOC entry 625 (class 1259 OID 646012)
-- Name: ml; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ml (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    attachment1 character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 624 (class 1259 OID 646011)
-- Name: ml_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ml_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8707 (class 0 OID 0)
-- Dependencies: 624
-- Name: ml_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ml_ogc_fid_seq OWNED BY driftweb.ml.ogc_fid;


--
-- TOC entry 619 (class 1259 OID 645848)
-- Name: mose_078; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.mose_078 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 618 (class 1259 OID 645847)
-- Name: mose_078_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.mose_078_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8708 (class 0 OID 0)
-- Dependencies: 618
-- Name: mose_078_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.mose_078_ogc_fid_seq OWNED BY driftweb.mose_078.ogc_fid;


--
-- TOC entry 621 (class 1259 OID 645981)
-- Name: mu; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.mu (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    attachment1 character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 620 (class 1259 OID 645980)
-- Name: mu_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.mu_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8709 (class 0 OID 0)
-- Dependencies: 620
-- Name: mu_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.mu_ogc_fid_seq OWNED BY driftweb.mu.ogc_fid;


--
-- TOC entry 645 (class 1259 OID 646199)
-- Name: nac; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.nac (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_uer character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 644 (class 1259 OID 646198)
-- Name: nac_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.nac_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8710 (class 0 OID 0)
-- Dependencies: 644
-- Name: nac_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.nac_ogc_fid_seq OWNED BY driftweb.nac.ogc_fid;


--
-- TOC entry 627 (class 1259 OID 646022)
-- Name: ng; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ng (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 626 (class 1259 OID 646021)
-- Name: ng_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ng_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8711 (class 0 OID 0)
-- Dependencies: 626
-- Name: ng_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ng_ogc_fid_seq OWNED BY driftweb.ng.ogc_fid;


--
-- TOC entry 647 (class 1259 OID 646209)
-- Name: nr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.nr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 646 (class 1259 OID 646208)
-- Name: nr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.nr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8712 (class 0 OID 0)
-- Dependencies: 646
-- Name: nr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.nr_ogc_fid_seq OWNED BY driftweb.nr.ogc_fid;


--
-- TOC entry 643 (class 1259 OID 646189)
-- Name: ns; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ns (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_ua character varying,
    att_ue character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 642 (class 1259 OID 646188)
-- Name: ns_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ns_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8713 (class 0 OID 0)
-- Dependencies: 642
-- Name: ns_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ns_ogc_fid_seq OWNED BY driftweb.ns.ogc_fid;


--
-- TOC entry 887 (class 1259 OID 650313)
-- Name: olb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.olb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 886 (class 1259 OID 650312)
-- Name: olb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.olb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8714 (class 0 OID 0)
-- Dependencies: 886
-- Name: olb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.olb_ogc_fid_seq OWNED BY driftweb.olb.ogc_fid;


--
-- TOC entry 883 (class 1259 OID 650288)
-- Name: os; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.os (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 882 (class 1259 OID 650287)
-- Name: os_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.os_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8715 (class 0 OID 0)
-- Dependencies: 882
-- Name: os_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.os_ogc_fid_seq OWNED BY driftweb.os.ogc_fid;


--
-- TOC entry 675 (class 1259 OID 646624)
-- Name: p; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.p (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_pt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 674 (class 1259 OID 646623)
-- Name: p_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.p_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8716 (class 0 OID 0)
-- Dependencies: 674
-- Name: p_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.p_ogc_fid_seq OWNED BY driftweb.p.ogc_fid;


--
-- TOC entry 679 (class 1259 OID 646676)
-- Name: pa; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pa (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 678 (class 1259 OID 646675)
-- Name: pa_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pa_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8717 (class 0 OID 0)
-- Dependencies: 678
-- Name: pa_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pa_ogc_fid_seq OWNED BY driftweb.pa.ogc_fid;


--
-- TOC entry 677 (class 1259 OID 646666)
-- Name: pb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 676 (class 1259 OID 646665)
-- Name: pb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8718 (class 0 OID 0)
-- Dependencies: 676
-- Name: pb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pb_ogc_fid_seq OWNED BY driftweb.pb.ogc_fid;


--
-- TOC entry 659 (class 1259 OID 646538)
-- Name: pga; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pga (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 658 (class 1259 OID 646537)
-- Name: pga_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pga_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8719 (class 0 OID 0)
-- Dependencies: 658
-- Name: pga_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pga_ogc_fid_seq OWNED BY driftweb.pga.ogc_fid;


--
-- TOC entry 667 (class 1259 OID 646584)
-- Name: pk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_pkm character varying,
    att_pkp character varying,
    att_sd character varying,
    att_ue character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 666 (class 1259 OID 646583)
-- Name: pk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8720 (class 0 OID 0)
-- Dependencies: 666
-- Name: pk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pk_ogc_fid_seq OWNED BY driftweb.pk.ogc_fid;


--
-- TOC entry 657 (class 1259 OID 646379)
-- Name: pkp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pkp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_kt character varying,
    att_ue character varying,
    att_uer character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vvk character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 656 (class 1259 OID 646378)
-- Name: pkp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pkp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8721 (class 0 OID 0)
-- Dependencies: 656
-- Name: pkp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pkp_ogc_fid_seq OWNED BY driftweb.pkp.ogc_fid;


--
-- TOC entry 665 (class 1259 OID 646568)
-- Name: plankevaerk_089; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.plankevaerk_089 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 664 (class 1259 OID 646567)
-- Name: plankevaerk_089_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.plankevaerk_089_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8722 (class 0 OID 0)
-- Dependencies: 664
-- Name: plankevaerk_089_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.plankevaerk_089_ogc_fid_seq OWNED BY driftweb.plankevaerk_089.ogc_fid;


--
-- TOC entry 683 (class 1259 OID 646712)
-- Name: pn; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pn (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 682 (class 1259 OID 646711)
-- Name: pn_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pn_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8723 (class 0 OID 0)
-- Dependencies: 682
-- Name: pn_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pn_ogc_fid_seq OWNED BY driftweb.pn.ogc_fid;


--
-- TOC entry 661 (class 1259 OID 646548)
-- Name: ps; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ps (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vl character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 660 (class 1259 OID 646547)
-- Name: ps_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ps_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8724 (class 0 OID 0)
-- Dependencies: 660
-- Name: ps_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ps_ogc_fid_seq OWNED BY driftweb.ps.ogc_fid;


--
-- TOC entry 663 (class 1259 OID 646558)
-- Name: pst; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pst (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ue character varying,
    att_ukb character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 662 (class 1259 OID 646557)
-- Name: pst_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pst_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8725 (class 0 OID 0)
-- Dependencies: 662
-- Name: pst_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pst_ogc_fid_seq OWNED BY driftweb.pst.ogc_fid;


--
-- TOC entry 673 (class 1259 OID 646614)
-- Name: pvl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.pvl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 672 (class 1259 OID 646613)
-- Name: pvl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.pvl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8726 (class 0 OID 0)
-- Dependencies: 672
-- Name: pvl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.pvl_ogc_fid_seq OWNED BY driftweb.pvl.ogc_fid;


--
-- TOC entry 707 (class 1259 OID 647952)
-- Name: rb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_sf character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 706 (class 1259 OID 647951)
-- Name: rb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8727 (class 0 OID 0)
-- Dependencies: 706
-- Name: rb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rb_ogc_fid_seq OWNED BY driftweb.rb.ogc_fid;


--
-- TOC entry 715 (class 1259 OID 648146)
-- Name: rbe; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rbe (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_art character varying,
    "att_eÅ" character varying,
    att_kt character varying,
    att_mh character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vs character varying,
    att_vt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 714 (class 1259 OID 648145)
-- Name: rbe_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rbe_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8728 (class 0 OID 0)
-- Dependencies: 714
-- Name: rbe_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rbe_ogc_fid_seq OWNED BY driftweb.rbe.ogc_fid;


--
-- TOC entry 687 (class 1259 OID 646732)
-- Name: rg; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rg (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fre_ren1 character varying,
    att_fre_ren2 character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 689 (class 1259 OID 646742)
-- Name: rg1; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rg1 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_eig character varying,
    att_fh character varying,
    att_fs character varying,
    att_gst character varying,
    att_rosl character varying,
    att_skr character varying,
    att_ue character varying,
    att_uef character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 688 (class 1259 OID 646741)
-- Name: rg1_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rg1_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8729 (class 0 OID 0)
-- Dependencies: 688
-- Name: rg1_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rg1_ogc_fid_seq OWNED BY driftweb.rg1.ogc_fid;


--
-- TOC entry 691 (class 1259 OID 646915)
-- Name: rg2; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rg2 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_fh character varying,
    att_fs character varying,
    att_gst character varying,
    att_oga character varying,
    att_skr character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 690 (class 1259 OID 646914)
-- Name: rg2_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rg2_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8730 (class 0 OID 0)
-- Dependencies: 690
-- Name: rg2_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rg2_ogc_fid_seq OWNED BY driftweb.rg2.ogc_fid;


--
-- TOC entry 695 (class 1259 OID 647035)
-- Name: rg3; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rg3 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_eig character varying,
    att_fh character varying,
    att_gst character varying,
    att_skr character varying,
    att_ue character varying,
    att_uer character varying,
    attachment1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 694 (class 1259 OID 647034)
-- Name: rg3_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rg3_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8731 (class 0 OID 0)
-- Dependencies: 694
-- Name: rg3_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rg3_ogc_fid_seq OWNED BY driftweb.rg3.ogc_fid;


--
-- TOC entry 697 (class 1259 OID 647570)
-- Name: rg5; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rg5 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_eig character varying,
    att_fh character varying,
    att_gst character varying,
    att_skr character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 696 (class 1259 OID 647569)
-- Name: rg5_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rg5_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8732 (class 0 OID 0)
-- Dependencies: 696
-- Name: rg5_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rg5_ogc_fid_seq OWNED BY driftweb.rg5.ogc_fid;


--
-- TOC entry 686 (class 1259 OID 646731)
-- Name: rg_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rg_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8733 (class 0 OID 0)
-- Dependencies: 686
-- Name: rg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rg_ogc_fid_seq OWNED BY driftweb.rg.ogc_fid;


--
-- TOC entry 693 (class 1259 OID 647019)
-- Name: rgb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rgb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_fh character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 692 (class 1259 OID 647018)
-- Name: rgb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rgb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8734 (class 0 OID 0)
-- Dependencies: 692
-- Name: rgb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rgb_ogc_fid_seq OWNED BY driftweb.rgb.ogc_fid;


--
-- TOC entry 701 (class 1259 OID 647922)
-- Name: rgt; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rgt (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aor character varying,
    att_aot1 character varying,
    att_fh character varying,
    att_skr character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 700 (class 1259 OID 647921)
-- Name: rgt_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rgt_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8735 (class 0 OID 0)
-- Dependencies: 700
-- Name: rgt_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rgt_ogc_fid_seq OWNED BY driftweb.rgt.ogc_fid;


--
-- TOC entry 713 (class 1259 OID 648136)
-- Name: rob; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rob (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_rbt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 712 (class 1259 OID 648135)
-- Name: rob_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rob_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8736 (class 0 OID 0)
-- Dependencies: 712
-- Name: rob_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rob_ogc_fid_seq OWNED BY driftweb.rob.ogc_fid;


--
-- TOC entry 721 (class 1259 OID 648181)
-- Name: roersump_098; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.roersump_098 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 720 (class 1259 OID 648180)
-- Name: roersump_098_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.roersump_098_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8737 (class 0 OID 0)
-- Dependencies: 720
-- Name: roersump_098_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.roersump_098_ogc_fid_seq OWNED BY driftweb.roersump_098.ogc_fid;


--
-- TOC entry 703 (class 1259 OID 647932)
-- Name: rpf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rpf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_blt character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_vtj character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 702 (class 1259 OID 647931)
-- Name: rpf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rpf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8738 (class 0 OID 0)
-- Dependencies: 702
-- Name: rpf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rpf_ogc_fid_seq OWNED BY driftweb.rpf.ogc_fid;


--
-- TOC entry 705 (class 1259 OID 647942)
-- Name: rpl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rpl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_blt character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_vtj character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 704 (class 1259 OID 647941)
-- Name: rpl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rpl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8739 (class 0 OID 0)
-- Dependencies: 704
-- Name: rpl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rpl_ogc_fid_seq OWNED BY driftweb.rpl.ogc_fid;


--
-- TOC entry 699 (class 1259 OID 647618)
-- Name: rskr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rskr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 698 (class 1259 OID 647617)
-- Name: rskr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rskr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8740 (class 0 OID 0)
-- Dependencies: 698
-- Name: rskr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rskr_ogc_fid_seq OWNED BY driftweb.rskr.ogc_fid;


--
-- TOC entry 719 (class 1259 OID 648171)
-- Name: rv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.rv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_mt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 718 (class 1259 OID 648170)
-- Name: rv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.rv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8741 (class 0 OID 0)
-- Dependencies: 718
-- Name: rv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.rv_ogc_fid_seq OWNED BY driftweb.rv.ogc_fid;


--
-- TOC entry 775 (class 1259 OID 648938)
-- Name: s; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.s (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 774 (class 1259 OID 648937)
-- Name: s_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.s_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8742 (class 0 OID 0)
-- Dependencies: 774
-- Name: s_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.s_ogc_fid_seq OWNED BY driftweb.s.ogc_fid;


--
-- TOC entry 743 (class 1259 OID 648458)
-- Name: sa; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sa (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 742 (class 1259 OID 648457)
-- Name: sa_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sa_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8743 (class 0 OID 0)
-- Dependencies: 742
-- Name: sa_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sa_ogc_fid_seq OWNED BY driftweb.sa.ogc_fid;


--
-- TOC entry 735 (class 1259 OID 648400)
-- Name: sak; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sak (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_efs character varying,
    att_ue character varying,
    att_uer character varying,
    att_us character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 734 (class 1259 OID 648399)
-- Name: sak_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sak_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8744 (class 0 OID 0)
-- Dependencies: 734
-- Name: sak_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sak_ogc_fid_seq OWNED BY driftweb.sak.ogc_fid;


--
-- TOC entry 731 (class 1259 OID 648378)
-- Name: sand; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sand (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 730 (class 1259 OID 648377)
-- Name: sand_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sand_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8745 (class 0 OID 0)
-- Dependencies: 730
-- Name: sand_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sand_ogc_fid_seq OWNED BY driftweb.sand.ogc_fid;


--
-- TOC entry 727 (class 1259 OID 648358)
-- Name: sasi; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sasi (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_in character varying,
    att_st character varying,
    attachment1 character varying,
    attachment2 character varying,
    attachment3 character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 726 (class 1259 OID 648357)
-- Name: sasi_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sasi_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8746 (class 0 OID 0)
-- Dependencies: 726
-- Name: sasi_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sasi_ogc_fid_seq OWNED BY driftweb.sasi.ogc_fid;


--
-- TOC entry 777 (class 1259 OID 648992)
-- Name: sd; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sd (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_kt character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 776 (class 1259 OID 648991)
-- Name: sd_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sd_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8747 (class 0 OID 0)
-- Dependencies: 776
-- Name: sd_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sd_ogc_fid_seq OWNED BY driftweb.sd.ogc_fid;


--
-- TOC entry 733 (class 1259 OID 648388)
-- Name: sf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ue character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 732 (class 1259 OID 648387)
-- Name: sf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8748 (class 0 OID 0)
-- Dependencies: 732
-- Name: sf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sf_ogc_fid_seq OWNED BY driftweb.sf.ogc_fid;


--
-- TOC entry 739 (class 1259 OID 648438)
-- Name: sfb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sfb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_type character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 738 (class 1259 OID 648437)
-- Name: sfb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sfb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8749 (class 0 OID 0)
-- Dependencies: 738
-- Name: sfb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sfb_ogc_fid_seq OWNED BY driftweb.sfb.ogc_fid;


--
-- TOC entry 723 (class 1259 OID 648191)
-- Name: sfs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sfs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fr character varying,
    att_tur character varying,
    att_type character varying,
    att_uer character varying,
    att_ukb character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 722 (class 1259 OID 648190)
-- Name: sfs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sfs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8750 (class 0 OID 0)
-- Dependencies: 722
-- Name: sfs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sfs_ogc_fid_seq OWNED BY driftweb.sfs.ogc_fid;


--
-- TOC entry 781 (class 1259 OID 649012)
-- Name: sh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    att_ue character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 780 (class 1259 OID 649011)
-- Name: sh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8751 (class 0 OID 0)
-- Dependencies: 780
-- Name: sh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sh_ogc_fid_seq OWNED BY driftweb.sh.ogc_fid;


--
-- TOC entry 737 (class 1259 OID 648428)
-- Name: shb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.shb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_sktkl character varying,
    att_ua character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 736 (class 1259 OID 648427)
-- Name: shb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.shb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8752 (class 0 OID 0)
-- Dependencies: 736
-- Name: shb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.shb_ogc_fid_seq OWNED BY driftweb.shb.ogc_fid;


--
-- TOC entry 741 (class 1259 OID 648448)
-- Name: she; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.she (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 740 (class 1259 OID 648447)
-- Name: she_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.she_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8753 (class 0 OID 0)
-- Dependencies: 740
-- Name: she_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.she_ogc_fid_seq OWNED BY driftweb.she.ogc_fid;


--
-- TOC entry 747 (class 1259 OID 648518)
-- Name: sk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    "att_eÅ" character varying,
    att_frb character varying,
    att_kri character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 746 (class 1259 OID 648517)
-- Name: sk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8754 (class 0 OID 0)
-- Dependencies: 746
-- Name: sk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sk_ogc_fid_seq OWNED BY driftweb.sk.ogc_fid;


--
-- TOC entry 751 (class 1259 OID 648735)
-- Name: skur; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.skur (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ue character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 750 (class 1259 OID 648734)
-- Name: skur_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.skur_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8755 (class 0 OID 0)
-- Dependencies: 750
-- Name: skur_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.skur_ogc_fid_seq OWNED BY driftweb.skur.ogc_fid;


--
-- TOC entry 765 (class 1259 OID 648864)
-- Name: sm; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sm (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 764 (class 1259 OID 648863)
-- Name: sm_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sm_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8756 (class 0 OID 0)
-- Dependencies: 764
-- Name: sm_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sm_ogc_fid_seq OWNED BY driftweb.sm.ogc_fid;


--
-- TOC entry 757 (class 1259 OID 648777)
-- Name: snf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.snf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ua character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 756 (class 1259 OID 648776)
-- Name: snf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.snf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8757 (class 0 OID 0)
-- Dependencies: 756
-- Name: snf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.snf_ogc_fid_seq OWNED BY driftweb.snf.ogc_fid;


--
-- TOC entry 759 (class 1259 OID 648796)
-- Name: sns; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sns (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_ua character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 758 (class 1259 OID 648795)
-- Name: sns_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sns_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8758 (class 0 OID 0)
-- Dependencies: 758
-- Name: sns_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sns_ogc_fid_seq OWNED BY driftweb.sns.ogc_fid;


--
-- TOC entry 725 (class 1259 OID 648348)
-- Name: sobo; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sobo (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 724 (class 1259 OID 648347)
-- Name: sobo_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sobo_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8759 (class 0 OID 0)
-- Dependencies: 724
-- Name: sobo_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sobo_ogc_fid_seq OWNED BY driftweb.sobo.ogc_fid;


--
-- TOC entry 795 (class 1259 OID 649140)
-- Name: soe; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.soe (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 794 (class 1259 OID 649137)
-- Name: soe_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.soe_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8760 (class 0 OID 0)
-- Dependencies: 794
-- Name: soe_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.soe_ogc_fid_seq OWNED BY driftweb.soe.ogc_fid;


--
-- TOC entry 767 (class 1259 OID 648882)
-- Name: sp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 766 (class 1259 OID 648881)
-- Name: sp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8761 (class 0 OID 0)
-- Dependencies: 766
-- Name: sp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sp_ogc_fid_seq OWNED BY driftweb.sp.ogc_fid;


--
-- TOC entry 769 (class 1259 OID 648895)
-- Name: spl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.spl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 768 (class 1259 OID 648894)
-- Name: spl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.spl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8762 (class 0 OID 0)
-- Dependencies: 768
-- Name: spl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.spl_ogc_fid_seq OWNED BY driftweb.spl.ogc_fid;


--
-- TOC entry 753 (class 1259 OID 648745)
-- Name: sps; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sps (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 752 (class 1259 OID 648744)
-- Name: sps_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sps_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8763 (class 0 OID 0)
-- Dependencies: 752
-- Name: sps_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sps_ogc_fid_seq OWNED BY driftweb.sps.ogc_fid;


--
-- TOC entry 761 (class 1259 OID 648821)
-- Name: sr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_tur character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 760 (class 1259 OID 648820)
-- Name: sr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8764 (class 0 OID 0)
-- Dependencies: 760
-- Name: sr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sr_ogc_fid_seq OWNED BY driftweb.sr.ogc_fid;


--
-- TOC entry 755 (class 1259 OID 648755)
-- Name: ss; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ss (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_fre_ren1 character varying,
    att_fre_ren2 character varying,
    att_ua character varying,
    att_ue character varying,
    att_uer character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 754 (class 1259 OID 648754)
-- Name: ss_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ss_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8765 (class 0 OID 0)
-- Dependencies: 754
-- Name: ss_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ss_ogc_fid_seq OWNED BY driftweb.ss.ogc_fid;


--
-- TOC entry 773 (class 1259 OID 648915)
-- Name: st; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.st (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bl character varying,
    "att_etår" character varying,
    att_kt character varying,
    att_nvn character varying,
    att_tls_ character varying,
    att_ue character varying,
    att_uer character varying,
    att_vt character varying,
    attachment1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 772 (class 1259 OID 648914)
-- Name: st_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.st_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8766 (class 0 OID 0)
-- Dependencies: 772
-- Name: st_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.st_ogc_fid_seq OWNED BY driftweb.st.ogc_fid;


--
-- TOC entry 783 (class 1259 OID 649022)
-- Name: stk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.stk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_tur character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 782 (class 1259 OID 649021)
-- Name: stk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.stk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8767 (class 0 OID 0)
-- Dependencies: 782
-- Name: stk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.stk_ogc_fid_seq OWNED BY driftweb.stk.ogc_fid;


--
-- TOC entry 779 (class 1259 OID 649002)
-- Name: stm; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.stm (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_2fre character varying,
    att_aot1 character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vtjx character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 778 (class 1259 OID 649001)
-- Name: stm_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.stm_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8768 (class 0 OID 0)
-- Dependencies: 778
-- Name: stm_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.stm_ogc_fid_seq OWNED BY driftweb.stm.ogc_fid;


--
-- TOC entry 785 (class 1259 OID 649032)
-- Name: stsk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.stsk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 784 (class 1259 OID 649031)
-- Name: stsk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.stsk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8769 (class 0 OID 0)
-- Dependencies: 784
-- Name: stsk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.stsk_ogc_fid_seq OWNED BY driftweb.stsk.ogc_fid;


--
-- TOC entry 771 (class 1259 OID 648905)
-- Name: sv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 770 (class 1259 OID 648904)
-- Name: sv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8770 (class 0 OID 0)
-- Dependencies: 770
-- Name: sv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sv_ogc_fid_seq OWNED BY driftweb.sv.ogc_fid;


--
-- TOC entry 763 (class 1259 OID 648831)
-- Name: svb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.svb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 762 (class 1259 OID 648830)
-- Name: svb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.svb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8771 (class 0 OID 0)
-- Dependencies: 762
-- Name: svb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.svb_ogc_fid_seq OWNED BY driftweb.svb.ogc_fid;


--
-- TOC entry 793 (class 1259 OID 649122)
-- Name: sveller_119; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.sveller_119 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 792 (class 1259 OID 649121)
-- Name: sveller_119_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.sveller_119_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8772 (class 0 OID 0)
-- Dependencies: 792
-- Name: sveller_119_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.sveller_119_ogc_fid_seq OWNED BY driftweb.sveller_119.ogc_fid;


--
-- TOC entry 829 (class 1259 OID 649711)
-- Name: tb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.tb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_type character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 828 (class 1259 OID 649710)
-- Name: tb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.tb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8773 (class 0 OID 0)
-- Dependencies: 828
-- Name: tb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.tb_ogc_fid_seq OWNED BY driftweb.tb.ogc_fid;


--
-- TOC entry 801 (class 1259 OID 649323)
-- Name: terraenbygvaerker_121; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.terraenbygvaerker_121 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 800 (class 1259 OID 649322)
-- Name: terraenbygvaerker_121_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.terraenbygvaerker_121_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8774 (class 0 OID 0)
-- Dependencies: 800
-- Name: terraenbygvaerker_121_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.terraenbygvaerker_121_ogc_fid_seq OWNED BY driftweb.terraenbygvaerker_121.ogc_fid;


--
-- TOC entry 805 (class 1259 OID 649346)
-- Name: terraenudstyr_122; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.terraenudstyr_122 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 804 (class 1259 OID 649345)
-- Name: terraenudstyr_122_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.terraenudstyr_122_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8775 (class 0 OID 0)
-- Dependencies: 804
-- Name: terraenudstyr_122_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.terraenudstyr_122_ogc_fid_seq OWNED BY driftweb.terraenudstyr_122.ogc_fid;


--
-- TOC entry 807 (class 1259 OID 649356)
-- Name: terraenudstyr_l_123; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.terraenudstyr_l_123 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 806 (class 1259 OID 649355)
-- Name: terraenudstyr_l_123_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.terraenudstyr_l_123_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8776 (class 0 OID 0)
-- Dependencies: 806
-- Name: terraenudstyr_l_123_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.terraenudstyr_l_123_ogc_fid_seq OWNED BY driftweb.terraenudstyr_l_123.ogc_fid;


--
-- TOC entry 825 (class 1259 OID 649539)
-- Name: th; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.th (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 824 (class 1259 OID 649538)
-- Name: th_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.th_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8777 (class 0 OID 0)
-- Dependencies: 824
-- Name: th_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.th_ogc_fid_seq OWNED BY driftweb.th.ogc_fid;


--
-- TOC entry 827 (class 1259 OID 649571)
-- Name: tr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.tr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_agvt character varying,
    att_aot1 character varying,
    att_bm character varying,
    att_lot character varying,
    att_oft character varying,
    att_ot character varying,
    att_pl character varying,
    att_plm character varying,
    att_plmt character varying,
    att_paa character varying,
    att_tad character varying,
    att_tal character varying,
    att_ti character varying,
    att_tj character varying,
    att_trs character varying,
    att_trsl character varying,
    att_tsvp character varying,
    att_tt character varying,
    att_ue character varying,
    att_uer character varying,
    att_vtr character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 826 (class 1259 OID 649570)
-- Name: tr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.tr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8778 (class 0 OID 0)
-- Dependencies: 826
-- Name: tr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.tr_ogc_fid_seq OWNED BY driftweb.tr.ogc_fid;


--
-- TOC entry 803 (class 1259 OID 649336)
-- Name: trm; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.trm (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_bebr character varying,
    att_tur character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 802 (class 1259 OID 649335)
-- Name: trm_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.trm_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8779 (class 0 OID 0)
-- Dependencies: 802
-- Name: trm_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.trm_ogc_fid_seq OWNED BY driftweb.trm.ogc_fid;


--
-- TOC entry 819 (class 1259 OID 649503)
-- Name: trpb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.trpb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_aot2 character varying,
    att_fr character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_ifhi character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tur character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 818 (class 1259 OID 649502)
-- Name: trpb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.trpb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8780 (class 0 OID 0)
-- Dependencies: 818
-- Name: trpb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.trpb_ogc_fid_seq OWNED BY driftweb.trpb.ogc_fid;


--
-- TOC entry 821 (class 1259 OID 649513)
-- Name: trpf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.trpf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_blt character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_ifhi character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_tur character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_vtj character varying,
    attachment1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 820 (class 1259 OID 649512)
-- Name: trpf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.trpf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8781 (class 0 OID 0)
-- Dependencies: 820
-- Name: trpf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.trpf_ogc_fid_seq OWNED BY driftweb.trpf.ogc_fid;


--
-- TOC entry 823 (class 1259 OID 649526)
-- Name: trpl; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.trpl (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_blt character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_hbr character varying,
    att_ifhi character varying,
    att_kt character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_tur character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vihar character varying,
    att_viruh character varying,
    att_virusf character varying,
    att_vtj character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 822 (class 1259 OID 649525)
-- Name: trpl_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.trpl_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8782 (class 0 OID 0)
-- Dependencies: 822
-- Name: trpl_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.trpl_ogc_fid_seq OWNED BY driftweb.trpl.ogc_fid;


--
-- TOC entry 831 (class 1259 OID 649721)
-- Name: trr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.trr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 830 (class 1259 OID 649720)
-- Name: trr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.trr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8783 (class 0 OID 0)
-- Dependencies: 830
-- Name: trr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.trr_ogc_fid_seq OWNED BY driftweb.trr.ogc_fid;


--
-- TOC entry 835 (class 1259 OID 649805)
-- Name: trte; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.trte (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 834 (class 1259 OID 649804)
-- Name: trte_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.trte_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8784 (class 0 OID 0)
-- Dependencies: 834
-- Name: trte_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.trte_ogc_fid_seq OWNED BY driftweb.trte.ogc_fid;


--
-- TOC entry 817 (class 1259 OID 649493)
-- Name: ts; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.ts (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 816 (class 1259 OID 649492)
-- Name: ts_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.ts_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8785 (class 0 OID 0)
-- Dependencies: 816
-- Name: ts_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.ts_ogc_fid_seq OWNED BY driftweb.ts.ogc_fid;


--
-- TOC entry 833 (class 1259 OID 649795)
-- Name: tst; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.tst (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 832 (class 1259 OID 649794)
-- Name: tst_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.tst_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8786 (class 0 OID 0)
-- Dependencies: 832
-- Name: tst_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.tst_ogc_fid_seq OWNED BY driftweb.tst.ogc_fid;


--
-- TOC entry 809 (class 1259 OID 649366)
-- Name: tu; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.tu (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 808 (class 1259 OID 649365)
-- Name: tu_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.tu_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8787 (class 0 OID 0)
-- Dependencies: 808
-- Name: tu_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.tu_ogc_fid_seq OWNED BY driftweb.tu.ogc_fid;


--
-- TOC entry 849 (class 1259 OID 649925)
-- Name: v2s; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.v2s (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_gaaga character varying,
    att_kt character varying,
    att_pviv character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    att_vvk character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 848 (class 1259 OID 649924)
-- Name: v2s_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.v2s_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8788 (class 0 OID 0)
-- Dependencies: 848
-- Name: v2s_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.v2s_ogc_fid_seq OWNED BY driftweb.v2s.ogc_fid;


--
-- TOC entry 851 (class 1259 OID 650057)
-- Name: v2smr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.v2smr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_kt character varying,
    att_pviv character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    att_vvk character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 850 (class 1259 OID 650056)
-- Name: v2smr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.v2smr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8789 (class 0 OID 0)
-- Dependencies: 850
-- Name: v2smr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.v2smr_ogc_fid_seq OWNED BY driftweb.v2smr.ogc_fid;


--
-- TOC entry 853 (class 1259 OID 650069)
-- Name: v4s; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.v4s (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_kt character varying,
    att_pviv character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    att_vvk character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 852 (class 1259 OID 650068)
-- Name: v4s_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.v4s_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8790 (class 0 OID 0)
-- Dependencies: 852
-- Name: v4s_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.v4s_ogc_fid_seq OWNED BY driftweb.v4s.ogc_fid;


--
-- TOC entry 855 (class 1259 OID 650079)
-- Name: v4smr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.v4smr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_belty character varying,
    att_fkl character varying,
    att_fr character varying,
    att_ftvr character varying,
    att_gfbm character varying,
    att_kt character varying,
    att_pviv character varying,
    att_rvsf character varying,
    att_tisy character varying,
    att_ue character varying,
    att_uer character varying,
    att_vest character varying,
    att_virusf character varying,
    att_viruv character varying,
    att_vtj character varying,
    att_vvk character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 854 (class 1259 OID 650078)
-- Name: v4smr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.v4smr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8791 (class 0 OID 0)
-- Dependencies: 854
-- Name: v4smr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.v4smr_ogc_fid_seq OWNED BY driftweb.v4smr.ogc_fid;


--
-- TOC entry 845 (class 1259 OID 649904)
-- Name: vandloeb_137; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vandloeb_137 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 844 (class 1259 OID 649903)
-- Name: vandloeb_137_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vandloeb_137_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8792 (class 0 OID 0)
-- Dependencies: 844
-- Name: vandloeb_137_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vandloeb_137_ogc_fid_seq OWNED BY driftweb.vandloeb_137.ogc_fid;


--
-- TOC entry 857 (class 1259 OID 650113)
-- Name: vbf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vbf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_aot1 character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 856 (class 1259 OID 650112)
-- Name: vbf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vbf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8793 (class 0 OID 0)
-- Dependencies: 856
-- Name: vbf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vbf_ogc_fid_seq OWNED BY driftweb.vbf.ogc_fid;


--
-- TOC entry 461 (class 1259 OID 641194)
-- Name: vfdldobbelt; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vfdldobbelt (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 460 (class 1259 OID 641193)
-- Name: vfdldobbelt_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vfdldobbelt_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8794 (class 0 OID 0)
-- Dependencies: 460
-- Name: vfdldobbelt_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vfdldobbelt_ogc_fid_seq OWNED BY driftweb.vfdldobbelt.ogc_fid;


--
-- TOC entry 859 (class 1259 OID 650123)
-- Name: vns; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vns (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 858 (class 1259 OID 650122)
-- Name: vns_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vns_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8795 (class 0 OID 0)
-- Dependencies: 858
-- Name: vns_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vns_ogc_fid_seq OWNED BY driftweb.vns.ogc_fid;


--
-- TOC entry 847 (class 1259 OID 649914)
-- Name: vr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_aot1 character varying,
    att_bebr character varying,
    att_blt character varying,
    att_fr character varying,
    att_hbr character varying,
    att_kt character varying,
    att_tur character varying,
    att_ue character varying,
    att_uer character varying,
    att_ukb character varying,
    att_vr character varying,
    att_vtjx character varying,
    geom public.geometry(MultiLineString,25832)
);


--
-- TOC entry 846 (class 1259 OID 649913)
-- Name: vr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8796 (class 0 OID 0)
-- Dependencies: 846
-- Name: vr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vr_ogc_fid_seq OWNED BY driftweb.vr.ogc_fid;


--
-- TOC entry 863 (class 1259 OID 650143)
-- Name: vs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(Point,25832)
);


--
-- TOC entry 862 (class 1259 OID 650142)
-- Name: vs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8797 (class 0 OID 0)
-- Dependencies: 862
-- Name: vs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vs_ogc_fid_seq OWNED BY driftweb.vs.ogc_fid;


--
-- TOC entry 879 (class 1259 OID 650268)
-- Name: vtg; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vtg (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_art character varying,
    att_atitg character varying,
    att_bg character varying,
    att_ibr character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 878 (class 1259 OID 650267)
-- Name: vtg_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vtg_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8798 (class 0 OID 0)
-- Dependencies: 878
-- Name: vtg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vtg_ogc_fid_seq OWNED BY driftweb.vtg.ogc_fid;


--
-- TOC entry 317 (class 1259 OID 637164)
-- Name: vvk1_2; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vvk1_2 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 316 (class 1259 OID 637163)
-- Name: vvk1_2_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vvk1_2_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8799 (class 0 OID 0)
-- Dependencies: 316
-- Name: vvk1_2_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vvk1_2_ogc_fid_seq OWNED BY driftweb.vvk1_2.ogc_fid;


--
-- TOC entry 319 (class 1259 OID 637174)
-- Name: vvk1_2m; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vvk1_2m (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 318 (class 1259 OID 637173)
-- Name: vvk1_2m_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vvk1_2m_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8800 (class 0 OID 0)
-- Dependencies: 318
-- Name: vvk1_2m_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vvk1_2m_ogc_fid_seq OWNED BY driftweb.vvk1_2m.ogc_fid;


--
-- TOC entry 321 (class 1259 OID 637184)
-- Name: vvk1_4; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vvk1_4 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 320 (class 1259 OID 637183)
-- Name: vvk1_4_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vvk1_4_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8801 (class 0 OID 0)
-- Dependencies: 320
-- Name: vvk1_4_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vvk1_4_ogc_fid_seq OWNED BY driftweb.vvk1_4.ogc_fid;


--
-- TOC entry 323 (class 1259 OID 637194)
-- Name: vvk1_4m; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vvk1_4m (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 322 (class 1259 OID 637193)
-- Name: vvk1_4m_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vvk1_4m_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8802 (class 0 OID 0)
-- Dependencies: 322
-- Name: vvk1_4m_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vvk1_4m_ogc_fid_seq OWNED BY driftweb.vvk1_4m.ogc_fid;


--
-- TOC entry 877 (class 1259 OID 650258)
-- Name: vvk2f; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vvk2f (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 876 (class 1259 OID 650257)
-- Name: vvk2f_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vvk2f_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8803 (class 0 OID 0)
-- Dependencies: 876
-- Name: vvk2f_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vvk2f_ogc_fid_seq OWNED BY driftweb.vvk2f.ogc_fid;


--
-- TOC entry 655 (class 1259 OID 646369)
-- Name: vvk3p; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.vvk3p (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    elementid character varying,
    elementname character varying,
    measure double precision,
    perimeter double precision,
    element_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    origin character varying,
    elementtypekey character varying,
    elementtypename character varying,
    unittype character varying,
    geometrytype character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    days_from_creation double precision,
    days_from_update double precision,
    level_1_workareas character varying,
    level_1_workareatypes character varying,
    level_2_workareas character varying,
    level_2_workareatypes character varying,
    att_1fre character varying,
    att_1opg character varying,
    att_2fre character varying,
    att_2opg character varying,
    att_kt character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 654 (class 1259 OID 646368)
-- Name: vvk3p_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.vvk3p_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8804 (class 0 OID 0)
-- Dependencies: 654
-- Name: vvk3p_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.vvk3p_ogc_fid_seq OWNED BY driftweb.vvk3p.ogc_fid;


--
-- TOC entry 361 (class 1259 OID 637936)
-- Name: workarea_bb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_bb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 360 (class 1259 OID 637935)
-- Name: workarea_bb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_bb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8805 (class 0 OID 0)
-- Dependencies: 360
-- Name: workarea_bb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_bb_ogc_fid_seq OWNED BY driftweb.workarea_bb.ogc_fid;


--
-- TOC entry 339 (class 1259 OID 637630)
-- Name: workarea_bi; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_bi (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 338 (class 1259 OID 637629)
-- Name: workarea_bi_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_bi_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8806 (class 0 OID 0)
-- Dependencies: 338
-- Name: workarea_bi_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_bi_ogc_fid_seq OWNED BY driftweb.workarea_bi.ogc_fid;


--
-- TOC entry 391 (class 1259 OID 639290)
-- Name: workarea_bls; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_bls (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 390 (class 1259 OID 639289)
-- Name: workarea_bls_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_bls_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8807 (class 0 OID 0)
-- Dependencies: 390
-- Name: workarea_bls_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_bls_ogc_fid_seq OWNED BY driftweb.workarea_bls.ogc_fid;


--
-- TOC entry 341 (class 1259 OID 637643)
-- Name: workarea_bv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_bv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 340 (class 1259 OID 637642)
-- Name: workarea_bv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_bv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8808 (class 0 OID 0)
-- Dependencies: 340
-- Name: workarea_bv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_bv_ogc_fid_seq OWNED BY driftweb.workarea_bv.ogc_fid;


--
-- TOC entry 411 (class 1259 OID 640142)
-- Name: workarea_di; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_di (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 410 (class 1259 OID 640141)
-- Name: workarea_di_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_di_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8809 (class 0 OID 0)
-- Dependencies: 410
-- Name: workarea_di_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_di_ogc_fid_seq OWNED BY driftweb.workarea_di.ogc_fid;


--
-- TOC entry 861 (class 1259 OID 650133)
-- Name: workarea_evr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_evr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 860 (class 1259 OID 650132)
-- Name: workarea_evr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_evr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8810 (class 0 OID 0)
-- Dependencies: 860
-- Name: workarea_evr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_evr_ogc_fid_seq OWNED BY driftweb.workarea_evr.ogc_fid;


--
-- TOC entry 425 (class 1259 OID 640233)
-- Name: workarea_fejcs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fejcs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 424 (class 1259 OID 640232)
-- Name: workarea_fejcs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fejcs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8811 (class 0 OID 0)
-- Dependencies: 424
-- Name: workarea_fejcs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fejcs_ogc_fid_seq OWNED BY driftweb.workarea_fejcs.ogc_fid;


--
-- TOC entry 427 (class 1259 OID 640251)
-- Name: workarea_fejf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fejf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 426 (class 1259 OID 640250)
-- Name: workarea_fejf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fejf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8812 (class 0 OID 0)
-- Dependencies: 426
-- Name: workarea_fejf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fejf_ogc_fid_seq OWNED BY driftweb.workarea_fejf.ogc_fid;


--
-- TOC entry 429 (class 1259 OID 640265)
-- Name: workarea_fejv1; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fejv1 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 428 (class 1259 OID 640264)
-- Name: workarea_fejv1_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fejv1_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8813 (class 0 OID 0)
-- Dependencies: 428
-- Name: workarea_fejv1_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fejv1_ogc_fid_seq OWNED BY driftweb.workarea_fejv1.ogc_fid;


--
-- TOC entry 431 (class 1259 OID 640279)
-- Name: workarea_fejv2; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fejv2 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 430 (class 1259 OID 640278)
-- Name: workarea_fejv2_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fejv2_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8814 (class 0 OID 0)
-- Dependencies: 430
-- Name: workarea_fejv2_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fejv2_ogc_fid_seq OWNED BY driftweb.workarea_fejv2.ogc_fid;


--
-- TOC entry 423 (class 1259 OID 640223)
-- Name: workarea_fm; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fm (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 422 (class 1259 OID 640222)
-- Name: workarea_fm_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fm_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8815 (class 0 OID 0)
-- Dependencies: 422
-- Name: workarea_fm_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fm_ogc_fid_seq OWNED BY driftweb.workarea_fm.ogc_fid;


--
-- TOC entry 421 (class 1259 OID 640213)
-- Name: workarea_fr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 420 (class 1259 OID 640212)
-- Name: workarea_fr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8816 (class 0 OID 0)
-- Dependencies: 420
-- Name: workarea_fr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fr_ogc_fid_seq OWNED BY driftweb.workarea_fr.ogc_fid;


--
-- TOC entry 445 (class 1259 OID 640994)
-- Name: workarea_fs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_fs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 444 (class 1259 OID 640993)
-- Name: workarea_fs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_fs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8817 (class 0 OID 0)
-- Dependencies: 444
-- Name: workarea_fs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_fs_ogc_fid_seq OWNED BY driftweb.workarea_fs.ogc_fid;


--
-- TOC entry 419 (class 1259 OID 640203)
-- Name: workarea_ful; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ful (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 418 (class 1259 OID 640202)
-- Name: workarea_ful_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ful_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8818 (class 0 OID 0)
-- Dependencies: 418
-- Name: workarea_ful_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ful_ogc_fid_seq OWNED BY driftweb.workarea_ful.ogc_fid;


--
-- TOC entry 503 (class 1259 OID 642953)
-- Name: workarea_gv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_gv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 502 (class 1259 OID 642952)
-- Name: workarea_gv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_gv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8819 (class 0 OID 0)
-- Dependencies: 502
-- Name: workarea_gv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_gv_ogc_fid_seq OWNED BY driftweb.workarea_gv.ogc_fid;


--
-- TOC entry 521 (class 1259 OID 643387)
-- Name: workarea_is; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_is (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 520 (class 1259 OID 643386)
-- Name: workarea_is_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_is_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8820 (class 0 OID 0)
-- Dependencies: 520
-- Name: workarea_is_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_is_ogc_fid_seq OWNED BY driftweb.workarea_is.ogc_fid;


--
-- TOC entry 547 (class 1259 OID 644469)
-- Name: workarea_kbb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 546 (class 1259 OID 644468)
-- Name: workarea_kbb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8821 (class 0 OID 0)
-- Dependencies: 546
-- Name: workarea_kbb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbb_ogc_fid_seq OWNED BY driftweb.workarea_kbb.ogc_fid;


--
-- TOC entry 549 (class 1259 OID 644488)
-- Name: workarea_kbbv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbbv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 548 (class 1259 OID 644487)
-- Name: workarea_kbbv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbbv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8822 (class 0 OID 0)
-- Dependencies: 548
-- Name: workarea_kbbv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbbv_ogc_fid_seq OWNED BY driftweb.workarea_kbbv.ogc_fid;


--
-- TOC entry 551 (class 1259 OID 644522)
-- Name: workarea_kbc; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbc (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 550 (class 1259 OID 644521)
-- Name: workarea_kbc_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbc_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8823 (class 0 OID 0)
-- Dependencies: 550
-- Name: workarea_kbc_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbc_ogc_fid_seq OWNED BY driftweb.workarea_kbc.ogc_fid;


--
-- TOC entry 553 (class 1259 OID 644542)
-- Name: workarea_kbi; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbi (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 552 (class 1259 OID 644541)
-- Name: workarea_kbi_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbi_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8824 (class 0 OID 0)
-- Dependencies: 552
-- Name: workarea_kbi_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbi_ogc_fid_seq OWNED BY driftweb.workarea_kbi.ogc_fid;


--
-- TOC entry 555 (class 1259 OID 644558)
-- Name: workarea_kbn; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbn (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 554 (class 1259 OID 644557)
-- Name: workarea_kbn_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbn_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8825 (class 0 OID 0)
-- Dependencies: 554
-- Name: workarea_kbn_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbn_ogc_fid_seq OWNED BY driftweb.workarea_kbn.ogc_fid;


--
-- TOC entry 557 (class 1259 OID 644629)
-- Name: workarea_kbr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 556 (class 1259 OID 644628)
-- Name: workarea_kbr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8826 (class 0 OID 0)
-- Dependencies: 556
-- Name: workarea_kbr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbr_ogc_fid_seq OWNED BY driftweb.workarea_kbr.ogc_fid;


--
-- TOC entry 559 (class 1259 OID 644639)
-- Name: workarea_kbs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kbs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 558 (class 1259 OID 644638)
-- Name: workarea_kbs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kbs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8827 (class 0 OID 0)
-- Dependencies: 558
-- Name: workarea_kbs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kbs_ogc_fid_seq OWNED BY driftweb.workarea_kbs.ogc_fid;


--
-- TOC entry 561 (class 1259 OID 644709)
-- Name: workarea_keb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_keb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 560 (class 1259 OID 644708)
-- Name: workarea_keb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_keb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8828 (class 0 OID 0)
-- Dependencies: 560
-- Name: workarea_keb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_keb_ogc_fid_seq OWNED BY driftweb.workarea_keb.ogc_fid;


--
-- TOC entry 563 (class 1259 OID 644767)
-- Name: workarea_klp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_klp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 562 (class 1259 OID 644766)
-- Name: workarea_klp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_klp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8829 (class 0 OID 0)
-- Dependencies: 562
-- Name: workarea_klp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_klp_ogc_fid_seq OWNED BY driftweb.workarea_klp.ogc_fid;


--
-- TOC entry 567 (class 1259 OID 644843)
-- Name: workarea_km; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_km (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 566 (class 1259 OID 644842)
-- Name: workarea_km_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_km_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8830 (class 0 OID 0)
-- Dependencies: 566
-- Name: workarea_km_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_km_ogc_fid_seq OWNED BY driftweb.workarea_km.ogc_fid;


--
-- TOC entry 569 (class 1259 OID 644916)
-- Name: workarea_kmb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kmb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 568 (class 1259 OID 644915)
-- Name: workarea_kmb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kmb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8831 (class 0 OID 0)
-- Dependencies: 568
-- Name: workarea_kmb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kmb_ogc_fid_seq OWNED BY driftweb.workarea_kmb.ogc_fid;


--
-- TOC entry 565 (class 1259 OID 644833)
-- Name: workarea_kms; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kms (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 564 (class 1259 OID 644832)
-- Name: workarea_kms_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kms_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8832 (class 0 OID 0)
-- Dependencies: 564
-- Name: workarea_kms_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kms_ogc_fid_seq OWNED BY driftweb.workarea_kms.ogc_fid;


--
-- TOC entry 571 (class 1259 OID 644964)
-- Name: workarea_ks; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ks (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 570 (class 1259 OID 644963)
-- Name: workarea_ks_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ks_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8833 (class 0 OID 0)
-- Dependencies: 570
-- Name: workarea_ks_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ks_ogc_fid_seq OWNED BY driftweb.workarea_ks.ogc_fid;


--
-- TOC entry 573 (class 1259 OID 645022)
-- Name: workarea_ksb; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ksb (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 572 (class 1259 OID 645021)
-- Name: workarea_ksb_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ksb_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8834 (class 0 OID 0)
-- Dependencies: 572
-- Name: workarea_ksb_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ksb_ogc_fid_seq OWNED BY driftweb.workarea_ksb.ogc_fid;


--
-- TOC entry 575 (class 1259 OID 645073)
-- Name: workarea_kss; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_kss (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 574 (class 1259 OID 645072)
-- Name: workarea_kss_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_kss_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8835 (class 0 OID 0)
-- Dependencies: 574
-- Name: workarea_kss_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_kss_ogc_fid_seq OWNED BY driftweb.workarea_kss.ogc_fid;


--
-- TOC entry 609 (class 1259 OID 645739)
-- Name: workarea_lfu; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_lfu (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 608 (class 1259 OID 645738)
-- Name: workarea_lfu_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_lfu_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8836 (class 0 OID 0)
-- Dependencies: 608
-- Name: workarea_lfu_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_lfu_ogc_fid_seq OWNED BY driftweb.workarea_lfu.ogc_fid;


--
-- TOC entry 591 (class 1259 OID 645203)
-- Name: workarea_lr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_lr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 590 (class 1259 OID 645202)
-- Name: workarea_lr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_lr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8837 (class 0 OID 0)
-- Dependencies: 590
-- Name: workarea_lr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_lr_ogc_fid_seq OWNED BY driftweb.workarea_lr.ogc_fid;


--
-- TOC entry 617 (class 1259 OID 645824)
-- Name: workarea_mh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_mh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 616 (class 1259 OID 645823)
-- Name: workarea_mh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_mh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8838 (class 0 OID 0)
-- Dependencies: 616
-- Name: workarea_mh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_mh_ogc_fid_seq OWNED BY driftweb.workarea_mh.ogc_fid;


--
-- TOC entry 635 (class 1259 OID 646071)
-- Name: workarea_ngr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ngr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 634 (class 1259 OID 646070)
-- Name: workarea_ngr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ngr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8839 (class 0 OID 0)
-- Dependencies: 634
-- Name: workarea_ngr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ngr_ogc_fid_seq OWNED BY driftweb.workarea_ngr.ogc_fid;


--
-- TOC entry 629 (class 1259 OID 646032)
-- Name: workarea_nh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_nh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 628 (class 1259 OID 646031)
-- Name: workarea_nh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_nh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8840 (class 0 OID 0)
-- Dependencies: 628
-- Name: workarea_nh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_nh_ogc_fid_seq OWNED BY driftweb.workarea_nh.ogc_fid;


--
-- TOC entry 633 (class 1259 OID 646061)
-- Name: workarea_no; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_no (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 632 (class 1259 OID 646060)
-- Name: workarea_no_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_no_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8841 (class 0 OID 0)
-- Dependencies: 632
-- Name: workarea_no_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_no_ogc_fid_seq OWNED BY driftweb.workarea_no.ogc_fid;


--
-- TOC entry 637 (class 1259 OID 646082)
-- Name: workarea_nog; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_nog (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 636 (class 1259 OID 646081)
-- Name: workarea_nog_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_nog_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8842 (class 0 OID 0)
-- Dependencies: 636
-- Name: workarea_nog_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_nog_ogc_fid_seq OWNED BY driftweb.workarea_nog.ogc_fid;


--
-- TOC entry 641 (class 1259 OID 646131)
-- Name: workarea_nogr; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_nogr (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 640 (class 1259 OID 646130)
-- Name: workarea_nogr_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_nogr_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8843 (class 0 OID 0)
-- Dependencies: 640
-- Name: workarea_nogr_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_nogr_ogc_fid_seq OWNED BY driftweb.workarea_nogr.ogc_fid;


--
-- TOC entry 639 (class 1259 OID 646100)
-- Name: workarea_nohd; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_nohd (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 631 (class 1259 OID 646051)
-- Name: workarea_nohd1; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_nohd1 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 630 (class 1259 OID 646050)
-- Name: workarea_nohd1_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_nohd1_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8844 (class 0 OID 0)
-- Dependencies: 630
-- Name: workarea_nohd1_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_nohd1_ogc_fid_seq OWNED BY driftweb.workarea_nohd1.ogc_fid;


--
-- TOC entry 638 (class 1259 OID 646099)
-- Name: workarea_nohd_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_nohd_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8845 (class 0 OID 0)
-- Dependencies: 638
-- Name: workarea_nohd_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_nohd_ogc_fid_seq OWNED BY driftweb.workarea_nohd.ogc_fid;


--
-- TOC entry 889 (class 1259 OID 650323)
-- Name: workarea_oi; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_oi (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 888 (class 1259 OID 650322)
-- Name: workarea_oi_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_oi_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8846 (class 0 OID 0)
-- Dependencies: 888
-- Name: workarea_oi_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_oi_ogc_fid_seq OWNED BY driftweb.workarea_oi.ogc_fid;


--
-- TOC entry 669 (class 1259 OID 646594)
-- Name: workarea_pc; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_pc (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 668 (class 1259 OID 646593)
-- Name: workarea_pc_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_pc_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8847 (class 0 OID 0)
-- Dependencies: 668
-- Name: workarea_pc_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_pc_ogc_fid_seq OWNED BY driftweb.workarea_pc.ogc_fid;


--
-- TOC entry 671 (class 1259 OID 646604)
-- Name: workarea_pcx; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_pcx (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 670 (class 1259 OID 646603)
-- Name: workarea_pcx_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_pcx_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8848 (class 0 OID 0)
-- Dependencies: 670
-- Name: workarea_pcx_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_pcx_ogc_fid_seq OWNED BY driftweb.workarea_pcx.ogc_fid;


--
-- TOC entry 653 (class 1259 OID 646333)
-- Name: workarea_pk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_pk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 652 (class 1259 OID 646332)
-- Name: workarea_pk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_pk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8849 (class 0 OID 0)
-- Dependencies: 652
-- Name: workarea_pk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_pk_ogc_fid_seq OWNED BY driftweb.workarea_pk.ogc_fid;


--
-- TOC entry 709 (class 1259 OID 647982)
-- Name: workarea_rv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_rv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 708 (class 1259 OID 647981)
-- Name: workarea_rv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_rv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8850 (class 0 OID 0)
-- Dependencies: 708
-- Name: workarea_rv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_rv_ogc_fid_seq OWNED BY driftweb.workarea_rv.ogc_fid;


--
-- TOC entry 711 (class 1259 OID 648058)
-- Name: workarea_rvms; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_rvms (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 710 (class 1259 OID 648057)
-- Name: workarea_rvms_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_rvms_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8851 (class 0 OID 0)
-- Dependencies: 710
-- Name: workarea_rvms_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_rvms_ogc_fid_seq OWNED BY driftweb.workarea_rvms.ogc_fid;


--
-- TOC entry 717 (class 1259 OID 648156)
-- Name: workarea_rw; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_rw (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 716 (class 1259 OID 648155)
-- Name: workarea_rw_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_rw_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8852 (class 0 OID 0)
-- Dependencies: 716
-- Name: workarea_rw_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_rw_ogc_fid_seq OWNED BY driftweb.workarea_rw.ogc_fid;


--
-- TOC entry 749 (class 1259 OID 648725)
-- Name: workarea_sc; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_sc (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 748 (class 1259 OID 648724)
-- Name: workarea_sc_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_sc_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8853 (class 0 OID 0)
-- Dependencies: 748
-- Name: workarea_sc_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_sc_ogc_fid_seq OWNED BY driftweb.workarea_sc.ogc_fid;


--
-- TOC entry 745 (class 1259 OID 648488)
-- Name: workarea_sk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_sk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 744 (class 1259 OID 648487)
-- Name: workarea_sk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_sk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8854 (class 0 OID 0)
-- Dependencies: 744
-- Name: workarea_sk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_sk_ogc_fid_seq OWNED BY driftweb.workarea_sk.ogc_fid;


--
-- TOC entry 729 (class 1259 OID 648368)
-- Name: workarea_smhd; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_smhd (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 728 (class 1259 OID 648367)
-- Name: workarea_smhd_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_smhd_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8855 (class 0 OID 0)
-- Dependencies: 728
-- Name: workarea_smhd_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_smhd_ogc_fid_seq OWNED BY driftweb.workarea_smhd.ogc_fid;


--
-- TOC entry 787 (class 1259 OID 649045)
-- Name: workarea_sum; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_sum (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 789 (class 1259 OID 649102)
-- Name: workarea_sum1; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_sum1 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 788 (class 1259 OID 649101)
-- Name: workarea_sum1_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_sum1_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8856 (class 0 OID 0)
-- Dependencies: 788
-- Name: workarea_sum1_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_sum1_ogc_fid_seq OWNED BY driftweb.workarea_sum1.ogc_fid;


--
-- TOC entry 786 (class 1259 OID 649044)
-- Name: workarea_sum_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_sum_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8857 (class 0 OID 0)
-- Dependencies: 786
-- Name: workarea_sum_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_sum_ogc_fid_seq OWNED BY driftweb.workarea_sum.ogc_fid;


--
-- TOC entry 791 (class 1259 OID 649112)
-- Name: workarea_sumo; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_sumo (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 790 (class 1259 OID 649111)
-- Name: workarea_sumo_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_sumo_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8858 (class 0 OID 0)
-- Dependencies: 790
-- Name: workarea_sumo_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_sumo_ogc_fid_seq OWNED BY driftweb.workarea_sumo.ogc_fid;


--
-- TOC entry 811 (class 1259 OID 649384)
-- Name: workarea_to; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_to (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 813 (class 1259 OID 649452)
-- Name: workarea_to2; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_to2 (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 812 (class 1259 OID 649451)
-- Name: workarea_to2_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_to2_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8859 (class 0 OID 0)
-- Dependencies: 812
-- Name: workarea_to2_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_to2_ogc_fid_seq OWNED BY driftweb.workarea_to2.ogc_fid;


--
-- TOC entry 810 (class 1259 OID 649383)
-- Name: workarea_to_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_to_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8860 (class 0 OID 0)
-- Dependencies: 810
-- Name: workarea_to_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_to_ogc_fid_seq OWNED BY driftweb.workarea_to.ogc_fid;


--
-- TOC entry 815 (class 1259 OID 649462)
-- Name: workarea_tp; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_tp (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    attachment1 character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 814 (class 1259 OID 649461)
-- Name: workarea_tp_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_tp_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8861 (class 0 OID 0)
-- Dependencies: 814
-- Name: workarea_tp_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_tp_ogc_fid_seq OWNED BY driftweb.workarea_tp.ogc_fid;


--
-- TOC entry 797 (class 1259 OID 649263)
-- Name: workarea_tu; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_tu (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 796 (class 1259 OID 649262)
-- Name: workarea_tu_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_tu_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8862 (class 0 OID 0)
-- Dependencies: 796
-- Name: workarea_tu_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_tu_ogc_fid_seq OWNED BY driftweb.workarea_tu.ogc_fid;


--
-- TOC entry 799 (class 1259 OID 649276)
-- Name: workarea_tuvs; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_tuvs (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 798 (class 1259 OID 649275)
-- Name: workarea_tuvs_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_tuvs_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8863 (class 0 OID 0)
-- Dependencies: 798
-- Name: workarea_tuvs_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_tuvs_ogc_fid_seq OWNED BY driftweb.workarea_tuvs.ogc_fid;


--
-- TOC entry 837 (class 1259 OID 649824)
-- Name: workarea_ub; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ub (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 836 (class 1259 OID 649823)
-- Name: workarea_ub_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ub_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8864 (class 0 OID 0)
-- Dependencies: 836
-- Name: workarea_ub_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ub_ogc_fid_seq OWNED BY driftweb.workarea_ub.ogc_fid;


--
-- TOC entry 843 (class 1259 OID 649857)
-- Name: workarea_ubf; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ubf (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 842 (class 1259 OID 649856)
-- Name: workarea_ubf_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ubf_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8865 (class 0 OID 0)
-- Dependencies: 842
-- Name: workarea_ubf_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ubf_ogc_fid_seq OWNED BY driftweb.workarea_ubf.ogc_fid;


--
-- TOC entry 839 (class 1259 OID 649834)
-- Name: workarea_ufk; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_ufk (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 838 (class 1259 OID 649833)
-- Name: workarea_ufk_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_ufk_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8866 (class 0 OID 0)
-- Dependencies: 838
-- Name: workarea_ufk_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_ufk_ogc_fid_seq OWNED BY driftweb.workarea_ufk.ogc_fid;


--
-- TOC entry 841 (class 1259 OID 649847)
-- Name: workarea_uhv; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_uhv (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 840 (class 1259 OID 649846)
-- Name: workarea_uhv_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_uhv_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8867 (class 0 OID 0)
-- Dependencies: 840
-- Name: workarea_uhv_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_uhv_ogc_fid_seq OWNED BY driftweb.workarea_uhv.ogc_fid;


--
-- TOC entry 865 (class 1259 OID 650153)
-- Name: workarea_vdih; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_vdih (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 864 (class 1259 OID 650152)
-- Name: workarea_vdih_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_vdih_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8868 (class 0 OID 0)
-- Dependencies: 864
-- Name: workarea_vdih_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_vdih_ogc_fid_seq OWNED BY driftweb.workarea_vdih.ogc_fid;


--
-- TOC entry 867 (class 1259 OID 650179)
-- Name: workarea_veuh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_veuh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 866 (class 1259 OID 650178)
-- Name: workarea_veuh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_veuh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8869 (class 0 OID 0)
-- Dependencies: 866
-- Name: workarea_veuh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_veuh_ogc_fid_seq OWNED BY driftweb.workarea_veuh.ogc_fid;


--
-- TOC entry 871 (class 1259 OID 650199)
-- Name: workarea_vsoi; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_vsoi (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 870 (class 1259 OID 650198)
-- Name: workarea_vsoi_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_vsoi_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8870 (class 0 OID 0)
-- Dependencies: 870
-- Name: workarea_vsoi_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_vsoi_ogc_fid_seq OWNED BY driftweb.workarea_vsoi.ogc_fid;


--
-- TOC entry 869 (class 1259 OID 650189)
-- Name: workarea_vsoih; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_vsoih (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 868 (class 1259 OID 650188)
-- Name: workarea_vsoih_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_vsoih_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8871 (class 0 OID 0)
-- Dependencies: 868
-- Name: workarea_vsoih_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_vsoih_ogc_fid_seq OWNED BY driftweb.workarea_vsoih.ogc_fid;


--
-- TOC entry 875 (class 1259 OID 650248)
-- Name: workarea_vt; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_vt (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 874 (class 1259 OID 650247)
-- Name: workarea_vt_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_vt_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8872 (class 0 OID 0)
-- Dependencies: 874
-- Name: workarea_vt_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_vt_ogc_fid_seq OWNED BY driftweb.workarea_vt.ogc_fid;


--
-- TOC entry 873 (class 1259 OID 650238)
-- Name: workarea_vvh; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workarea_vvh (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 872 (class 1259 OID 650237)
-- Name: workarea_vvh_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workarea_vvh_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8873 (class 0 OID 0)
-- Dependencies: 872
-- Name: workarea_vvh_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workarea_vvh_ogc_fid_seq OWNED BY driftweb.workarea_vvh.ogc_fid;


--
-- TOC entry 315 (class 1259 OID 635758)
-- Name: workareas; Type: TABLE; Schema: driftweb; Owner: -
--

CREATE TABLE driftweb.workareas (
    ogc_fid integer NOT NULL,
    gml_id character varying NOT NULL,
    workareaid character varying,
    workareakey integer,
    workareaname character varying,
    measure double precision,
    workareanumber character varying,
    workarea_description character varying,
    address character varying,
    created character varying,
    updated character varying,
    workareatypekey character varying,
    workareatypename character varying,
    perimeter double precision,
    type character varying,
    renhold character varying,
    eannumber character varying,
    responsible character varying,
    handler character varying,
    handlercontact1 character varying,
    handlercontact2 character varying,
    customercontact character varying,
    link character varying,
    status character varying,
    createdby character varying,
    updatedby character varying,
    level_2_workareas character varying,
    geom public.geometry(MultiPolygon,25832)
);


--
-- TOC entry 314 (class 1259 OID 635757)
-- Name: workareas_ogc_fid_seq; Type: SEQUENCE; Schema: driftweb; Owner: -
--

CREATE SEQUENCE driftweb.workareas_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 8874 (class 0 OID 0)
-- Dependencies: 314
-- Name: workareas_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: driftweb; Owner: -
--

ALTER SEQUENCE driftweb.workareas_ogc_fid_seq OWNED BY driftweb.workareas.ogc_fid;


--
-- TOC entry 7232 (class 2604 OID 637207)
-- Name: a ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.a ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.a_ogc_fid_seq'::regclass);


--
-- TOC entry 7512 (class 2604 OID 650306)
-- Name: aest ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.aest ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.aest_ogc_fid_seq'::regclass);


--
-- TOC entry 7235 (class 2604 OID 637260)
-- Name: ag ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ag ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ag_ogc_fid_seq'::regclass);


--
-- TOC entry 7233 (class 2604 OID 637240)
-- Name: ana1 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ana1 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ana1_ogc_fid_seq'::regclass);


--
-- TOC entry 7234 (class 2604 OID 637250)
-- Name: ap ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ap ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ap_ogc_fid_seq'::regclass);


--
-- TOC entry 7236 (class 2604 OID 637275)
-- Name: asf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.asf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.asf_ogc_fid_seq'::regclass);


--
-- TOC entry 7394 (class 2604 OID 646314)
-- Name: asfob ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.asfob ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.asfob_ogc_fid_seq'::regclass);


--
-- TOC entry 7238 (class 2604 OID 637593)
-- Name: av ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.av ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.av_ogc_fid_seq'::regclass);


--
-- TOC entry 7249 (class 2604 OID 637924)
-- Name: b ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.b ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.b_ogc_fid_seq'::regclass);


--
-- TOC entry 7260 (class 2604 OID 639068)
-- Name: bb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bb_ogc_fid_seq'::regclass);


--
-- TOC entry 7253 (class 2604 OID 637977)
-- Name: bbs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bbs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bbs_ogc_fid_seq'::regclass);


--
-- TOC entry 7252 (class 2604 OID 637967)
-- Name: bd ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bd ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bd_ogc_fid_seq'::regclass);


--
-- TOC entry 7258 (class 2604 OID 638812)
-- Name: bdl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bdl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bdl_ogc_fid_seq'::regclass);


--
-- TOC entry 7248 (class 2604 OID 637914)
-- Name: be ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.be ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.be_ogc_fid_seq'::regclass);


--
-- TOC entry 7242 (class 2604 OID 637723)
-- Name: bebs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bebs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bebs_ogc_fid_seq'::regclass);


--
-- TOC entry 7243 (class 2604 OID 637844)
-- Name: befl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.befl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.befl_ogc_fid_seq'::regclass);


--
-- TOC entry 7245 (class 2604 OID 637884)
-- Name: bepl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bepl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bepl_ogc_fid_seq'::regclass);


--
-- TOC entry 7247 (class 2604 OID 637904)
-- Name: bist ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bist ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bist_ogc_fid_seq'::regclass);


--
-- TOC entry 7246 (class 2604 OID 637894)
-- Name: bistr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bistr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bistr_ogc_fid_seq'::regclass);


--
-- TOC entry 7268 (class 2604 OID 639334)
-- Name: bk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bk_ogc_fid_seq'::regclass);


--
-- TOC entry 7244 (class 2604 OID 637854)
-- Name: bks ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bks ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bks_ogc_fid_seq'::regclass);


--
-- TOC entry 7267 (class 2604 OID 639324)
-- Name: blp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.blp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.blp_ogc_fid_seq'::regclass);


--
-- TOC entry 7262 (class 2604 OID 639250)
-- Name: bls ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bls ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bls_ogc_fid_seq'::regclass);


--
-- TOC entry 7251 (class 2604 OID 637955)
-- Name: bm ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bm ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bm_ogc_fid_seq'::regclass);


--
-- TOC entry 7254 (class 2604 OID 638007)
-- Name: borks ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.borks ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.borks_ogc_fid_seq'::regclass);


--
-- TOC entry 7257 (class 2604 OID 638056)
-- Name: bp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bp_ogc_fid_seq'::regclass);


--
-- TOC entry 7266 (class 2604 OID 639314)
-- Name: br ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.br ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.br_ogc_fid_seq'::regclass);


--
-- TOC entry 7256 (class 2604 OID 638046)
-- Name: brl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.brl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.brl_ogc_fid_seq'::regclass);


--
-- TOC entry 7255 (class 2604 OID 638017)
-- Name: bs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bs_ogc_fid_seq'::regclass);


--
-- TOC entry 7241 (class 2604 OID 637713)
-- Name: bt ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bt ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bt_ogc_fid_seq'::regclass);


--
-- TOC entry 7261 (class 2604 OID 639150)
-- Name: bu ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bu ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bu_ogc_fid_seq'::regclass);


--
-- TOC entry 7259 (class 2604 OID 639058)
-- Name: bud ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bud ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bud_ogc_fid_seq'::regclass);


--
-- TOC entry 7263 (class 2604 OID 639262)
-- Name: bus ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bus ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bus_ogc_fid_seq'::regclass);


--
-- TOC entry 7264 (class 2604 OID 639277)
-- Name: bygn ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bygn ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.bygn_ogc_fid_seq'::regclass);


--
-- TOC entry 7269 (class 2604 OID 639366)
-- Name: cs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.cs_ogc_fid_seq'::regclass);


--
-- TOC entry 7270 (class 2604 OID 639663)
-- Name: csr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.csr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.csr_ogc_fid_seq'::regclass);


--
-- TOC entry 7274 (class 2604 OID 640135)
-- Name: cykelsti_vinterklasse_i_028 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cykelsti_vinterklasse_i_028 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.cykelsti_vinterklasse_i_028_ogc_fid_seq'::regclass);


--
-- TOC entry 7272 (class 2604 OID 639939)
-- Name: cyse ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cyse ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.cyse_ogc_fid_seq'::regclass);


--
-- TOC entry 7271 (class 2604 OID 639917)
-- Name: cysr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cysr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.cysr_ogc_fid_seq'::regclass);


--
-- TOC entry 7273 (class 2604 OID 639951)
-- Name: cyst ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cyst ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.cyst_ogc_fid_seq'::regclass);


--
-- TOC entry 7276 (class 2604 OID 640176)
-- Name: dk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.dk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.dk_ogc_fid_seq'::regclass);


--
-- TOC entry 7277 (class 2604 OID 640186)
-- Name: eut ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.eut ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.eut_ogc_fid_seq'::regclass);


--
-- TOC entry 7293 (class 2604 OID 641007)
-- Name: fabos ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fabos ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fabos_ogc_fid_seq'::regclass);


--
-- TOC entry 7294 (class 2604 OID 641017)
-- Name: fafag ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fafag ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fafag_ogc_fid_seq'::regclass);


--
-- TOC entry 7295 (class 2604 OID 641027)
-- Name: fafagos ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fafagos ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fafagos_ogc_fid_seq'::regclass);


--
-- TOC entry 7296 (class 2604 OID 641037)
-- Name: fagobos ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fagobos ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fagobos_ogc_fid_seq'::regclass);


--
-- TOC entry 7297 (class 2604 OID 641047)
-- Name: fagos ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fagos ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fagos_ogc_fid_seq'::regclass);


--
-- TOC entry 7303 (class 2604 OID 641249)
-- Name: fb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fb_ogc_fid_seq'::regclass);


--
-- TOC entry 7301 (class 2604 OID 641207)
-- Name: fbmv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fbmv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fbmv_ogc_fid_seq'::regclass);


--
-- TOC entry 7298 (class 2604 OID 641057)
-- Name: fdf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fdf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fdf_ogc_fid_seq'::regclass);


--
-- TOC entry 7299 (class 2604 OID 641115)
-- Name: fdl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fdl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fdl_ogc_fid_seq'::regclass);


--
-- TOC entry 7306 (class 2604 OID 641293)
-- Name: fg ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fg_ogc_fid_seq'::regclass);


--
-- TOC entry 7310 (class 2604 OID 641493)
-- Name: fg1 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg1 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fg1_ogc_fid_seq'::regclass);


--
-- TOC entry 7311 (class 2604 OID 641980)
-- Name: fg1no ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg1no ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fg1no_ogc_fid_seq'::regclass);


--
-- TOC entry 7312 (class 2604 OID 641990)
-- Name: fg2 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg2 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fg2_ogc_fid_seq'::regclass);


--
-- TOC entry 7313 (class 2604 OID 642131)
-- Name: fg2no ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg2no ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fg2no_ogc_fid_seq'::regclass);


--
-- TOC entry 7307 (class 2604 OID 641438)
-- Name: fgg ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fgg ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fgg_ogc_fid_seq'::regclass);


--
-- TOC entry 7308 (class 2604 OID 641448)
-- Name: fgv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fgv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fgv_ogc_fid_seq'::regclass);


--
-- TOC entry 7309 (class 2604 OID 641483)
-- Name: fgvno ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fgvno ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fgvno_ogc_fid_seq'::regclass);


--
-- TOC entry 7288 (class 2604 OID 640776)
-- Name: fh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fh_ogc_fid_seq'::regclass);


--
-- TOC entry 7287 (class 2604 OID 640309)
-- Name: flb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.flb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.flb_ogc_fid_seq'::regclass);


--
-- TOC entry 7302 (class 2604 OID 641227)
-- Name: fm ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fm ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fm_ogc_fid_seq'::regclass);


--
-- TOC entry 7289 (class 2604 OID 640801)
-- Name: fo ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fo ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fo_ogc_fid_seq'::regclass);


--
-- TOC entry 7291 (class 2604 OID 640978)
-- Name: foh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.foh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.foh_ogc_fid_seq'::regclass);


--
-- TOC entry 7290 (class 2604 OID 640965)
-- Name: fok ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fok ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fok_ogc_fid_seq'::regclass);


--
-- TOC entry 7315 (class 2604 OID 642195)
-- Name: fri ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fri ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fri_ogc_fid_seq'::regclass);


--
-- TOC entry 7395 (class 2604 OID 646326)
-- Name: fsa ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fsa ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fsa_ogc_fid_seq'::regclass);


--
-- TOC entry 7286 (class 2604 OID 640296)
-- Name: fst ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fst ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fst_ogc_fid_seq'::regclass);


--
-- TOC entry 7314 (class 2604 OID 642141)
-- Name: ftav ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ftav ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ftav_ogc_fid_seq'::regclass);


--
-- TOC entry 7278 (class 2604 OID 640196)
-- Name: ful ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ful ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ful_ogc_fid_seq'::regclass);


--
-- TOC entry 7305 (class 2604 OID 641283)
-- Name: fut ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fut ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fut_ogc_fid_seq'::regclass);


--
-- TOC entry 7304 (class 2604 OID 641273)
-- Name: fvh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fvh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.fvh_ogc_fid_seq'::regclass);


--
-- TOC entry 7319 (class 2604 OID 642347)
-- Name: g ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.g ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.g_ogc_fid_seq'::regclass);


--
-- TOC entry 7323 (class 2604 OID 643205)
-- Name: gasf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gasf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.gasf_ogc_fid_seq'::regclass);


--
-- TOC entry 7316 (class 2604 OID 642205)
-- Name: gb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.gb_ogc_fid_seq'::regclass);


--
-- TOC entry 7324 (class 2604 OID 643291)
-- Name: gfl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gfl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.gfl_ogc_fid_seq'::regclass);


--
-- TOC entry 7412 (class 2604 OID 646725)
-- Name: ggrg ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ggrg ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ggrg_ogc_fid_seq'::regclass);


--
-- TOC entry 7318 (class 2604 OID 642238)
-- Name: gks ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gks ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.gks_ogc_fid_seq'::regclass);


--
-- TOC entry 7320 (class 2604 OID 642867)
-- Name: gra ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gra ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.gra_ogc_fid_seq'::regclass);


--
-- TOC entry 7317 (class 2604 OID 642215)
-- Name: grf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.grf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.grf_ogc_fid_seq'::regclass);


--
-- TOC entry 7322 (class 2604 OID 643195)
-- Name: groeft_054 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.groeft_054 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.groeft_054_ogc_fid_seq'::regclass);


--
-- TOC entry 7327 (class 2604 OID 643324)
-- Name: ha ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ha ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ha_ogc_fid_seq'::regclass);


--
-- TOC entry 7325 (class 2604 OID 643301)
-- Name: havelod_057 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.havelod_057 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.havelod_057_ogc_fid_seq'::regclass);


--
-- TOC entry 7329 (class 2604 OID 643377)
-- Name: hb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.hb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.hb_ogc_fid_seq'::regclass);


--
-- TOC entry 7237 (class 2604 OID 637583)
-- Name: hd24 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.hd24 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.hd24_ogc_fid_seq'::regclass);


--
-- TOC entry 7326 (class 2604 OID 643311)
-- Name: he ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.he ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.he_ogc_fid_seq'::regclass);


--
-- TOC entry 7332 (class 2604 OID 643418)
-- Name: ib ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ib ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ib_ogc_fid_seq'::regclass);


--
-- TOC entry 7333 (class 2604 OID 643428)
-- Name: if ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.if ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.if_ogc_fid_seq'::regclass);


--
-- TOC entry 7334 (class 2604 OID 643438)
-- Name: inst ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.inst ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.inst_ogc_fid_seq'::regclass);


--
-- TOC entry 7335 (class 2604 OID 643475)
-- Name: instpl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.instpl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.instpl_ogc_fid_seq'::regclass);


--
-- TOC entry 7336 (class 2604 OID 643488)
-- Name: inve ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.inve ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.inve_ogc_fid_seq'::regclass);


--
-- TOC entry 7331 (class 2604 OID 643408)
-- Name: iv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.iv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.iv_ogc_fid_seq'::regclass);


--
-- TOC entry 7337 (class 2604 OID 643498)
-- Name: j ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.j ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.j_ogc_fid_seq'::regclass);


--
-- TOC entry 7359 (class 2604 OID 645101)
-- Name: k ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.k ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.k_ogc_fid_seq'::regclass);


--
-- TOC entry 7358 (class 2604 OID 645086)
-- Name: kg ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kg ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kg_ogc_fid_seq'::regclass);


--
-- TOC entry 7328 (class 2604 OID 643352)
-- Name: kh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kh_ogc_fid_seq'::regclass);


--
-- TOC entry 7360 (class 2604 OID 645119)
-- Name: kl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kl_ogc_fid_seq'::regclass);


--
-- TOC entry 7341 (class 2604 OID 644449)
-- Name: kli ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kli ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kli_ogc_fid_seq'::regclass);


--
-- TOC entry 7410 (class 2604 OID 646689)
-- Name: klp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.klp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.klp_ogc_fid_seq'::regclass);


--
-- TOC entry 7340 (class 2604 OID 644428)
-- Name: kp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kp_ogc_fid_seq'::regclass);


--
-- TOC entry 7339 (class 2604 OID 644416)
-- Name: kpl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kpl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kpl_ogc_fid_seq'::regclass);


--
-- TOC entry 7342 (class 2604 OID 644462)
-- Name: kps ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kps ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.kps_ogc_fid_seq'::regclass);


--
-- TOC entry 7338 (class 2604 OID 643521)
-- Name: ks ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ks ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ks_ogc_fid_seq'::regclass);


--
-- TOC entry 7368 (class 2604 OID 645569)
-- Name: l ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.l ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.l_ogc_fid_seq'::regclass);


--
-- TOC entry 7369 (class 2604 OID 645626)
-- Name: lak ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lak ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lak_ogc_fid_seq'::regclass);


--
-- TOC entry 7370 (class 2604 OID 645663)
-- Name: lb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lb_ogc_fid_seq'::regclass);


--
-- TOC entry 7373 (class 2604 OID 645702)
-- Name: lful ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lful ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lful_ogc_fid_seq'::regclass);


--
-- TOC entry 7366 (class 2604 OID 645221)
-- Name: lhk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lhk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lhk_ogc_fid_seq'::regclass);


--
-- TOC entry 7367 (class 2604 OID 645558)
-- Name: lia ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lia ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lia_ogc_fid_seq'::regclass);


--
-- TOC entry 7361 (class 2604 OID 645131)
-- Name: ll ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ll ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ll_ogc_fid_seq'::regclass);


--
-- TOC entry 7362 (class 2604 OID 645141)
-- Name: lmu ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lmu ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lmu_ogc_fid_seq'::regclass);


--
-- TOC entry 7363 (class 2604 OID 645183)
-- Name: lr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lr_ogc_fid_seq'::regclass);


--
-- TOC entry 7364 (class 2604 OID 645193)
-- Name: lrf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lrf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lrf_ogc_fid_seq'::regclass);


--
-- TOC entry 7371 (class 2604 OID 645673)
-- Name: ls ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ls ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ls_ogc_fid_seq'::regclass);


--
-- TOC entry 7510 (class 2604 OID 650281)
-- Name: lt ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lt ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lt_ogc_fid_seq'::regclass);


--
-- TOC entry 7372 (class 2604 OID 645683)
-- Name: lv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.lv_ogc_fid_seq'::regclass);


--
-- TOC entry 7381 (class 2604 OID 645999)
-- Name: m ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.m ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.m_ogc_fid_seq'::regclass);


--
-- TOC entry 7376 (class 2604 OID 645807)
-- Name: markvej_077 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.markvej_077 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.markvej_077_ogc_fid_seq'::regclass);


--
-- TOC entry 7377 (class 2604 OID 645817)
-- Name: me ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.me ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.me_ogc_fid_seq'::regclass);


--
-- TOC entry 7375 (class 2604 OID 645752)
-- Name: mk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.mk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.mk_ogc_fid_seq'::regclass);


--
-- TOC entry 7382 (class 2604 OID 646015)
-- Name: ml ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ml ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ml_ogc_fid_seq'::regclass);


--
-- TOC entry 7379 (class 2604 OID 645851)
-- Name: mose_078 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.mose_078 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.mose_078_ogc_fid_seq'::regclass);


--
-- TOC entry 7380 (class 2604 OID 645984)
-- Name: mu ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.mu ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.mu_ogc_fid_seq'::regclass);


--
-- TOC entry 7392 (class 2604 OID 646202)
-- Name: nac ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.nac ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.nac_ogc_fid_seq'::regclass);


--
-- TOC entry 7383 (class 2604 OID 646025)
-- Name: ng ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ng ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ng_ogc_fid_seq'::regclass);


--
-- TOC entry 7393 (class 2604 OID 646212)
-- Name: nr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.nr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.nr_ogc_fid_seq'::regclass);


--
-- TOC entry 7391 (class 2604 OID 646192)
-- Name: ns ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ns ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ns_ogc_fid_seq'::regclass);


--
-- TOC entry 7513 (class 2604 OID 650316)
-- Name: olb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.olb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.olb_ogc_fid_seq'::regclass);


--
-- TOC entry 7511 (class 2604 OID 650291)
-- Name: os ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.os ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.os_ogc_fid_seq'::regclass);


--
-- TOC entry 7407 (class 2604 OID 646627)
-- Name: p ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.p ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.p_ogc_fid_seq'::regclass);


--
-- TOC entry 7409 (class 2604 OID 646679)
-- Name: pa ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pa ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pa_ogc_fid_seq'::regclass);


--
-- TOC entry 7408 (class 2604 OID 646669)
-- Name: pb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pb_ogc_fid_seq'::regclass);


--
-- TOC entry 7399 (class 2604 OID 646541)
-- Name: pga ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pga ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pga_ogc_fid_seq'::regclass);


--
-- TOC entry 7403 (class 2604 OID 646587)
-- Name: pk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pk_ogc_fid_seq'::regclass);


--
-- TOC entry 7398 (class 2604 OID 646382)
-- Name: pkp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pkp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pkp_ogc_fid_seq'::regclass);


--
-- TOC entry 7402 (class 2604 OID 646571)
-- Name: plankevaerk_089 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.plankevaerk_089 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.plankevaerk_089_ogc_fid_seq'::regclass);


--
-- TOC entry 7411 (class 2604 OID 646715)
-- Name: pn ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pn ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pn_ogc_fid_seq'::regclass);


--
-- TOC entry 7400 (class 2604 OID 646551)
-- Name: ps ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ps ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ps_ogc_fid_seq'::regclass);


--
-- TOC entry 7401 (class 2604 OID 646561)
-- Name: pst ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pst ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pst_ogc_fid_seq'::regclass);


--
-- TOC entry 7406 (class 2604 OID 646617)
-- Name: pvl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pvl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.pvl_ogc_fid_seq'::regclass);


--
-- TOC entry 7423 (class 2604 OID 647955)
-- Name: rb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rb_ogc_fid_seq'::regclass);


--
-- TOC entry 7427 (class 2604 OID 648149)
-- Name: rbe ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rbe ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rbe_ogc_fid_seq'::regclass);


--
-- TOC entry 7413 (class 2604 OID 646735)
-- Name: rg ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rg_ogc_fid_seq'::regclass);


--
-- TOC entry 7414 (class 2604 OID 646745)
-- Name: rg1 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg1 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rg1_ogc_fid_seq'::regclass);


--
-- TOC entry 7415 (class 2604 OID 646918)
-- Name: rg2 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg2 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rg2_ogc_fid_seq'::regclass);


--
-- TOC entry 7417 (class 2604 OID 647038)
-- Name: rg3 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg3 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rg3_ogc_fid_seq'::regclass);


--
-- TOC entry 7418 (class 2604 OID 647573)
-- Name: rg5 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg5 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rg5_ogc_fid_seq'::regclass);


--
-- TOC entry 7416 (class 2604 OID 647022)
-- Name: rgb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rgb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rgb_ogc_fid_seq'::regclass);


--
-- TOC entry 7420 (class 2604 OID 647925)
-- Name: rgt ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rgt ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rgt_ogc_fid_seq'::regclass);


--
-- TOC entry 7426 (class 2604 OID 648139)
-- Name: rob ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rob ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rob_ogc_fid_seq'::regclass);


--
-- TOC entry 7430 (class 2604 OID 648184)
-- Name: roersump_098 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.roersump_098 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.roersump_098_ogc_fid_seq'::regclass);


--
-- TOC entry 7421 (class 2604 OID 647935)
-- Name: rpf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rpf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rpf_ogc_fid_seq'::regclass);


--
-- TOC entry 7422 (class 2604 OID 647945)
-- Name: rpl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rpl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rpl_ogc_fid_seq'::regclass);


--
-- TOC entry 7419 (class 2604 OID 647621)
-- Name: rskr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rskr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rskr_ogc_fid_seq'::regclass);


--
-- TOC entry 7429 (class 2604 OID 648174)
-- Name: rv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.rv_ogc_fid_seq'::regclass);


--
-- TOC entry 7457 (class 2604 OID 648941)
-- Name: s ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.s ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.s_ogc_fid_seq'::regclass);


--
-- TOC entry 7441 (class 2604 OID 648461)
-- Name: sa ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sa ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sa_ogc_fid_seq'::regclass);


--
-- TOC entry 7437 (class 2604 OID 648403)
-- Name: sak ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sak ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sak_ogc_fid_seq'::regclass);


--
-- TOC entry 7435 (class 2604 OID 648381)
-- Name: sand ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sand ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sand_ogc_fid_seq'::regclass);


--
-- TOC entry 7433 (class 2604 OID 648361)
-- Name: sasi ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sasi ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sasi_ogc_fid_seq'::regclass);


--
-- TOC entry 7458 (class 2604 OID 648995)
-- Name: sd ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sd ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sd_ogc_fid_seq'::regclass);


--
-- TOC entry 7436 (class 2604 OID 648391)
-- Name: sf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sf_ogc_fid_seq'::regclass);


--
-- TOC entry 7439 (class 2604 OID 648441)
-- Name: sfb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sfb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sfb_ogc_fid_seq'::regclass);


--
-- TOC entry 7431 (class 2604 OID 648194)
-- Name: sfs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sfs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sfs_ogc_fid_seq'::regclass);


--
-- TOC entry 7460 (class 2604 OID 649015)
-- Name: sh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sh_ogc_fid_seq'::regclass);


--
-- TOC entry 7438 (class 2604 OID 648431)
-- Name: shb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.shb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.shb_ogc_fid_seq'::regclass);


--
-- TOC entry 7440 (class 2604 OID 648451)
-- Name: she ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.she ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.she_ogc_fid_seq'::regclass);


--
-- TOC entry 7443 (class 2604 OID 648521)
-- Name: sk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sk_ogc_fid_seq'::regclass);


--
-- TOC entry 7445 (class 2604 OID 648738)
-- Name: skur ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.skur ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.skur_ogc_fid_seq'::regclass);


--
-- TOC entry 7452 (class 2604 OID 648867)
-- Name: sm ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sm ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sm_ogc_fid_seq'::regclass);


--
-- TOC entry 7448 (class 2604 OID 648780)
-- Name: snf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.snf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.snf_ogc_fid_seq'::regclass);


--
-- TOC entry 7449 (class 2604 OID 648799)
-- Name: sns ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sns ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sns_ogc_fid_seq'::regclass);


--
-- TOC entry 7432 (class 2604 OID 648351)
-- Name: sobo ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sobo ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sobo_ogc_fid_seq'::regclass);


--
-- TOC entry 7467 (class 2604 OID 649144)
-- Name: soe ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.soe ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.soe_ogc_fid_seq'::regclass);


--
-- TOC entry 7453 (class 2604 OID 648885)
-- Name: sp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sp_ogc_fid_seq'::regclass);


--
-- TOC entry 7454 (class 2604 OID 648898)
-- Name: spl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.spl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.spl_ogc_fid_seq'::regclass);


--
-- TOC entry 7446 (class 2604 OID 648748)
-- Name: sps ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sps ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sps_ogc_fid_seq'::regclass);


--
-- TOC entry 7450 (class 2604 OID 648824)
-- Name: sr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sr_ogc_fid_seq'::regclass);


--
-- TOC entry 7447 (class 2604 OID 648758)
-- Name: ss ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ss ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ss_ogc_fid_seq'::regclass);


--
-- TOC entry 7456 (class 2604 OID 648918)
-- Name: st ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.st ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.st_ogc_fid_seq'::regclass);


--
-- TOC entry 7461 (class 2604 OID 649025)
-- Name: stk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.stk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.stk_ogc_fid_seq'::regclass);


--
-- TOC entry 7459 (class 2604 OID 649005)
-- Name: stm ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.stm ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.stm_ogc_fid_seq'::regclass);


--
-- TOC entry 7462 (class 2604 OID 649035)
-- Name: stsk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.stsk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.stsk_ogc_fid_seq'::regclass);


--
-- TOC entry 7455 (class 2604 OID 648908)
-- Name: sv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sv_ogc_fid_seq'::regclass);


--
-- TOC entry 7451 (class 2604 OID 648834)
-- Name: svb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.svb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.svb_ogc_fid_seq'::regclass);


--
-- TOC entry 7466 (class 2604 OID 649125)
-- Name: sveller_119 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sveller_119 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.sveller_119_ogc_fid_seq'::regclass);


--
-- TOC entry 7484 (class 2604 OID 649714)
-- Name: tb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.tb_ogc_fid_seq'::regclass);


--
-- TOC entry 7470 (class 2604 OID 649326)
-- Name: terraenbygvaerker_121 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.terraenbygvaerker_121 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.terraenbygvaerker_121_ogc_fid_seq'::regclass);


--
-- TOC entry 7472 (class 2604 OID 649349)
-- Name: terraenudstyr_122 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.terraenudstyr_122 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.terraenudstyr_122_ogc_fid_seq'::regclass);


--
-- TOC entry 7473 (class 2604 OID 649359)
-- Name: terraenudstyr_l_123 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.terraenudstyr_l_123 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.terraenudstyr_l_123_ogc_fid_seq'::regclass);


--
-- TOC entry 7482 (class 2604 OID 649542)
-- Name: th ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.th ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.th_ogc_fid_seq'::regclass);


--
-- TOC entry 7483 (class 2604 OID 649574)
-- Name: tr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.tr_ogc_fid_seq'::regclass);


--
-- TOC entry 7471 (class 2604 OID 649339)
-- Name: trm ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trm ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.trm_ogc_fid_seq'::regclass);


--
-- TOC entry 7479 (class 2604 OID 649506)
-- Name: trpb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trpb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.trpb_ogc_fid_seq'::regclass);


--
-- TOC entry 7480 (class 2604 OID 649516)
-- Name: trpf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trpf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.trpf_ogc_fid_seq'::regclass);


--
-- TOC entry 7481 (class 2604 OID 649529)
-- Name: trpl ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trpl ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.trpl_ogc_fid_seq'::regclass);


--
-- TOC entry 7485 (class 2604 OID 649724)
-- Name: trr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.trr_ogc_fid_seq'::regclass);


--
-- TOC entry 7487 (class 2604 OID 649808)
-- Name: trte ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trte ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.trte_ogc_fid_seq'::regclass);


--
-- TOC entry 7478 (class 2604 OID 649496)
-- Name: ts ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ts ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.ts_ogc_fid_seq'::regclass);


--
-- TOC entry 7486 (class 2604 OID 649798)
-- Name: tst ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tst ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.tst_ogc_fid_seq'::regclass);


--
-- TOC entry 7474 (class 2604 OID 649369)
-- Name: tu ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tu ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.tu_ogc_fid_seq'::regclass);


--
-- TOC entry 7494 (class 2604 OID 649928)
-- Name: v2s ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v2s ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.v2s_ogc_fid_seq'::regclass);


--
-- TOC entry 7495 (class 2604 OID 650060)
-- Name: v2smr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v2smr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.v2smr_ogc_fid_seq'::regclass);


--
-- TOC entry 7496 (class 2604 OID 650072)
-- Name: v4s ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v4s ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.v4s_ogc_fid_seq'::regclass);


--
-- TOC entry 7497 (class 2604 OID 650082)
-- Name: v4smr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v4smr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.v4smr_ogc_fid_seq'::regclass);


--
-- TOC entry 7492 (class 2604 OID 649907)
-- Name: vandloeb_137 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vandloeb_137 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vandloeb_137_ogc_fid_seq'::regclass);


--
-- TOC entry 7498 (class 2604 OID 650116)
-- Name: vbf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vbf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vbf_ogc_fid_seq'::regclass);


--
-- TOC entry 7300 (class 2604 OID 641197)
-- Name: vfdldobbelt ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vfdldobbelt ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vfdldobbelt_ogc_fid_seq'::regclass);


--
-- TOC entry 7499 (class 2604 OID 650126)
-- Name: vns ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vns ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vns_ogc_fid_seq'::regclass);


--
-- TOC entry 7493 (class 2604 OID 649917)
-- Name: vr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vr_ogc_fid_seq'::regclass);


--
-- TOC entry 7501 (class 2604 OID 650146)
-- Name: vs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vs_ogc_fid_seq'::regclass);


--
-- TOC entry 7509 (class 2604 OID 650271)
-- Name: vtg ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vtg ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vtg_ogc_fid_seq'::regclass);


--
-- TOC entry 7228 (class 2604 OID 637167)
-- Name: vvk1_2 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_2 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vvk1_2_ogc_fid_seq'::regclass);


--
-- TOC entry 7229 (class 2604 OID 637177)
-- Name: vvk1_2m ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_2m ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vvk1_2m_ogc_fid_seq'::regclass);


--
-- TOC entry 7230 (class 2604 OID 637187)
-- Name: vvk1_4 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_4 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vvk1_4_ogc_fid_seq'::regclass);


--
-- TOC entry 7231 (class 2604 OID 637197)
-- Name: vvk1_4m ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_4m ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vvk1_4m_ogc_fid_seq'::regclass);


--
-- TOC entry 7508 (class 2604 OID 650261)
-- Name: vvk2f ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk2f ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vvk2f_ogc_fid_seq'::regclass);


--
-- TOC entry 7397 (class 2604 OID 646372)
-- Name: vvk3p ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk3p ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.vvk3p_ogc_fid_seq'::regclass);


--
-- TOC entry 7250 (class 2604 OID 637939)
-- Name: workarea_bb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_bb_ogc_fid_seq'::regclass);


--
-- TOC entry 7239 (class 2604 OID 637633)
-- Name: workarea_bi ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bi ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_bi_ogc_fid_seq'::regclass);


--
-- TOC entry 7265 (class 2604 OID 639293)
-- Name: workarea_bls ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bls ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_bls_ogc_fid_seq'::regclass);


--
-- TOC entry 7240 (class 2604 OID 637646)
-- Name: workarea_bv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_bv_ogc_fid_seq'::regclass);


--
-- TOC entry 7275 (class 2604 OID 640145)
-- Name: workarea_di ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_di ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_di_ogc_fid_seq'::regclass);


--
-- TOC entry 7500 (class 2604 OID 650136)
-- Name: workarea_evr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_evr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_evr_ogc_fid_seq'::regclass);


--
-- TOC entry 7282 (class 2604 OID 640236)
-- Name: workarea_fejcs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejcs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fejcs_ogc_fid_seq'::regclass);


--
-- TOC entry 7283 (class 2604 OID 640254)
-- Name: workarea_fejf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fejf_ogc_fid_seq'::regclass);


--
-- TOC entry 7284 (class 2604 OID 640268)
-- Name: workarea_fejv1 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejv1 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fejv1_ogc_fid_seq'::regclass);


--
-- TOC entry 7285 (class 2604 OID 640282)
-- Name: workarea_fejv2 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejv2 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fejv2_ogc_fid_seq'::regclass);


--
-- TOC entry 7281 (class 2604 OID 640226)
-- Name: workarea_fm ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fm ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fm_ogc_fid_seq'::regclass);


--
-- TOC entry 7280 (class 2604 OID 640216)
-- Name: workarea_fr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fr_ogc_fid_seq'::regclass);


--
-- TOC entry 7292 (class 2604 OID 640997)
-- Name: workarea_fs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_fs_ogc_fid_seq'::regclass);


--
-- TOC entry 7279 (class 2604 OID 640206)
-- Name: workarea_ful ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ful ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ful_ogc_fid_seq'::regclass);


--
-- TOC entry 7321 (class 2604 OID 642956)
-- Name: workarea_gv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_gv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_gv_ogc_fid_seq'::regclass);


--
-- TOC entry 7330 (class 2604 OID 643390)
-- Name: workarea_is ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_is ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_is_ogc_fid_seq'::regclass);


--
-- TOC entry 7343 (class 2604 OID 644472)
-- Name: workarea_kbb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbb_ogc_fid_seq'::regclass);


--
-- TOC entry 7344 (class 2604 OID 644491)
-- Name: workarea_kbbv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbbv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbbv_ogc_fid_seq'::regclass);


--
-- TOC entry 7345 (class 2604 OID 644525)
-- Name: workarea_kbc ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbc ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbc_ogc_fid_seq'::regclass);


--
-- TOC entry 7346 (class 2604 OID 644545)
-- Name: workarea_kbi ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbi ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbi_ogc_fid_seq'::regclass);


--
-- TOC entry 7347 (class 2604 OID 644561)
-- Name: workarea_kbn ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbn ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbn_ogc_fid_seq'::regclass);


--
-- TOC entry 7348 (class 2604 OID 644632)
-- Name: workarea_kbr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbr_ogc_fid_seq'::regclass);


--
-- TOC entry 7349 (class 2604 OID 644642)
-- Name: workarea_kbs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kbs_ogc_fid_seq'::regclass);


--
-- TOC entry 7350 (class 2604 OID 644712)
-- Name: workarea_keb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_keb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_keb_ogc_fid_seq'::regclass);


--
-- TOC entry 7351 (class 2604 OID 644770)
-- Name: workarea_klp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_klp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_klp_ogc_fid_seq'::regclass);


--
-- TOC entry 7353 (class 2604 OID 644846)
-- Name: workarea_km ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_km ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_km_ogc_fid_seq'::regclass);


--
-- TOC entry 7354 (class 2604 OID 644919)
-- Name: workarea_kmb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kmb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kmb_ogc_fid_seq'::regclass);


--
-- TOC entry 7352 (class 2604 OID 644836)
-- Name: workarea_kms ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kms ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kms_ogc_fid_seq'::regclass);


--
-- TOC entry 7355 (class 2604 OID 644967)
-- Name: workarea_ks ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ks ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ks_ogc_fid_seq'::regclass);


--
-- TOC entry 7356 (class 2604 OID 645025)
-- Name: workarea_ksb ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ksb ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ksb_ogc_fid_seq'::regclass);


--
-- TOC entry 7357 (class 2604 OID 645076)
-- Name: workarea_kss ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kss ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_kss_ogc_fid_seq'::regclass);


--
-- TOC entry 7374 (class 2604 OID 645742)
-- Name: workarea_lfu ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_lfu ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_lfu_ogc_fid_seq'::regclass);


--
-- TOC entry 7365 (class 2604 OID 645206)
-- Name: workarea_lr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_lr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_lr_ogc_fid_seq'::regclass);


--
-- TOC entry 7378 (class 2604 OID 645827)
-- Name: workarea_mh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_mh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_mh_ogc_fid_seq'::regclass);


--
-- TOC entry 7387 (class 2604 OID 646074)
-- Name: workarea_ngr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ngr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ngr_ogc_fid_seq'::regclass);


--
-- TOC entry 7384 (class 2604 OID 646035)
-- Name: workarea_nh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_nh_ogc_fid_seq'::regclass);


--
-- TOC entry 7386 (class 2604 OID 646064)
-- Name: workarea_no ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_no ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_no_ogc_fid_seq'::regclass);


--
-- TOC entry 7388 (class 2604 OID 646085)
-- Name: workarea_nog ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nog ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_nog_ogc_fid_seq'::regclass);


--
-- TOC entry 7390 (class 2604 OID 646134)
-- Name: workarea_nogr ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nogr ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_nogr_ogc_fid_seq'::regclass);


--
-- TOC entry 7389 (class 2604 OID 646103)
-- Name: workarea_nohd ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nohd ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_nohd_ogc_fid_seq'::regclass);


--
-- TOC entry 7385 (class 2604 OID 646054)
-- Name: workarea_nohd1 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nohd1 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_nohd1_ogc_fid_seq'::regclass);


--
-- TOC entry 7514 (class 2604 OID 650326)
-- Name: workarea_oi ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_oi ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_oi_ogc_fid_seq'::regclass);


--
-- TOC entry 7404 (class 2604 OID 646597)
-- Name: workarea_pc ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_pc ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_pc_ogc_fid_seq'::regclass);


--
-- TOC entry 7405 (class 2604 OID 646607)
-- Name: workarea_pcx ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_pcx ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_pcx_ogc_fid_seq'::regclass);


--
-- TOC entry 7396 (class 2604 OID 646336)
-- Name: workarea_pk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_pk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_pk_ogc_fid_seq'::regclass);


--
-- TOC entry 7424 (class 2604 OID 647985)
-- Name: workarea_rv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_rv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_rv_ogc_fid_seq'::regclass);


--
-- TOC entry 7425 (class 2604 OID 648061)
-- Name: workarea_rvms ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_rvms ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_rvms_ogc_fid_seq'::regclass);


--
-- TOC entry 7428 (class 2604 OID 648159)
-- Name: workarea_rw ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_rw ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_rw_ogc_fid_seq'::regclass);


--
-- TOC entry 7444 (class 2604 OID 648728)
-- Name: workarea_sc ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sc ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_sc_ogc_fid_seq'::regclass);


--
-- TOC entry 7442 (class 2604 OID 648491)
-- Name: workarea_sk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_sk_ogc_fid_seq'::regclass);


--
-- TOC entry 7434 (class 2604 OID 648371)
-- Name: workarea_smhd ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_smhd ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_smhd_ogc_fid_seq'::regclass);


--
-- TOC entry 7463 (class 2604 OID 649048)
-- Name: workarea_sum ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sum ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_sum_ogc_fid_seq'::regclass);


--
-- TOC entry 7464 (class 2604 OID 649105)
-- Name: workarea_sum1 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sum1 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_sum1_ogc_fid_seq'::regclass);


--
-- TOC entry 7465 (class 2604 OID 649115)
-- Name: workarea_sumo ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sumo ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_sumo_ogc_fid_seq'::regclass);


--
-- TOC entry 7475 (class 2604 OID 649387)
-- Name: workarea_to ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_to ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_to_ogc_fid_seq'::regclass);


--
-- TOC entry 7476 (class 2604 OID 649455)
-- Name: workarea_to2 ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_to2 ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_to2_ogc_fid_seq'::regclass);


--
-- TOC entry 7477 (class 2604 OID 649465)
-- Name: workarea_tp ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_tp ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_tp_ogc_fid_seq'::regclass);


--
-- TOC entry 7468 (class 2604 OID 649266)
-- Name: workarea_tu ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_tu ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_tu_ogc_fid_seq'::regclass);


--
-- TOC entry 7469 (class 2604 OID 649279)
-- Name: workarea_tuvs ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_tuvs ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_tuvs_ogc_fid_seq'::regclass);


--
-- TOC entry 7488 (class 2604 OID 649827)
-- Name: workarea_ub ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ub ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ub_ogc_fid_seq'::regclass);


--
-- TOC entry 7491 (class 2604 OID 649860)
-- Name: workarea_ubf ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ubf ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ubf_ogc_fid_seq'::regclass);


--
-- TOC entry 7489 (class 2604 OID 649837)
-- Name: workarea_ufk ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ufk ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_ufk_ogc_fid_seq'::regclass);


--
-- TOC entry 7490 (class 2604 OID 649850)
-- Name: workarea_uhv ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_uhv ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_uhv_ogc_fid_seq'::regclass);


--
-- TOC entry 7502 (class 2604 OID 650156)
-- Name: workarea_vdih ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vdih ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_vdih_ogc_fid_seq'::regclass);


--
-- TOC entry 7503 (class 2604 OID 650182)
-- Name: workarea_veuh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_veuh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_veuh_ogc_fid_seq'::regclass);


--
-- TOC entry 7505 (class 2604 OID 650202)
-- Name: workarea_vsoi ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vsoi ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_vsoi_ogc_fid_seq'::regclass);


--
-- TOC entry 7504 (class 2604 OID 650192)
-- Name: workarea_vsoih ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vsoih ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_vsoih_ogc_fid_seq'::regclass);


--
-- TOC entry 7507 (class 2604 OID 650251)
-- Name: workarea_vt ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vt ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_vt_ogc_fid_seq'::regclass);


--
-- TOC entry 7506 (class 2604 OID 650241)
-- Name: workarea_vvh ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vvh ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workarea_vvh_ogc_fid_seq'::regclass);


--
-- TOC entry 7227 (class 2604 OID 635761)
-- Name: workareas ogc_fid; Type: DEFAULT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workareas ALTER COLUMN ogc_fid SET DEFAULT nextval('driftweb.workareas_ogc_fid_seq'::regclass);


--
-- TOC entry 7532 (class 2606 OID 637211)
-- Name: a a_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.a
    ADD CONSTRAINT a_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8372 (class 2606 OID 650310)
-- Name: aest aest_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.aest
    ADD CONSTRAINT aest_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7541 (class 2606 OID 637264)
-- Name: ag ag_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ag
    ADD CONSTRAINT ag_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7535 (class 2606 OID 637244)
-- Name: ana1 ana1_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ana1
    ADD CONSTRAINT ana1_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7538 (class 2606 OID 637254)
-- Name: ap ap_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ap
    ADD CONSTRAINT ap_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7544 (class 2606 OID 637279)
-- Name: asf asf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.asf
    ADD CONSTRAINT asf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8018 (class 2606 OID 646318)
-- Name: asfob asfob_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.asfob
    ADD CONSTRAINT asfob_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7550 (class 2606 OID 637597)
-- Name: av av_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.av
    ADD CONSTRAINT av_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7583 (class 2606 OID 637928)
-- Name: b b_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.b
    ADD CONSTRAINT b_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7616 (class 2606 OID 639072)
-- Name: bb bb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bb
    ADD CONSTRAINT bb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7595 (class 2606 OID 637981)
-- Name: bbs bbs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bbs
    ADD CONSTRAINT bbs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7592 (class 2606 OID 637971)
-- Name: bd bd_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bd
    ADD CONSTRAINT bd_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7610 (class 2606 OID 638816)
-- Name: bdl bdl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bdl
    ADD CONSTRAINT bdl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7580 (class 2606 OID 637918)
-- Name: be be_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.be
    ADD CONSTRAINT be_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7562 (class 2606 OID 637727)
-- Name: bebs bebs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bebs
    ADD CONSTRAINT bebs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7565 (class 2606 OID 637848)
-- Name: befl befl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.befl
    ADD CONSTRAINT befl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7571 (class 2606 OID 637888)
-- Name: bepl bepl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bepl
    ADD CONSTRAINT bepl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7577 (class 2606 OID 637908)
-- Name: bist bist_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bist
    ADD CONSTRAINT bist_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7574 (class 2606 OID 637898)
-- Name: bistr bistr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bistr
    ADD CONSTRAINT bistr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7640 (class 2606 OID 639338)
-- Name: bk bk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bk
    ADD CONSTRAINT bk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7568 (class 2606 OID 637858)
-- Name: bks bks_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bks
    ADD CONSTRAINT bks_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7637 (class 2606 OID 639328)
-- Name: blp blp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.blp
    ADD CONSTRAINT blp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7622 (class 2606 OID 639254)
-- Name: bls bls_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bls
    ADD CONSTRAINT bls_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7589 (class 2606 OID 637959)
-- Name: bm bm_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bm
    ADD CONSTRAINT bm_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7598 (class 2606 OID 638011)
-- Name: borks borks_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.borks
    ADD CONSTRAINT borks_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7607 (class 2606 OID 638060)
-- Name: bp bp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bp
    ADD CONSTRAINT bp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7634 (class 2606 OID 639318)
-- Name: br br_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.br
    ADD CONSTRAINT br_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7604 (class 2606 OID 638050)
-- Name: brl brl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.brl
    ADD CONSTRAINT brl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7601 (class 2606 OID 638021)
-- Name: bs bs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bs
    ADD CONSTRAINT bs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7559 (class 2606 OID 637717)
-- Name: bt bt_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bt
    ADD CONSTRAINT bt_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7619 (class 2606 OID 639154)
-- Name: bu bu_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bu
    ADD CONSTRAINT bu_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7613 (class 2606 OID 639062)
-- Name: bud bud_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bud
    ADD CONSTRAINT bud_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7625 (class 2606 OID 639266)
-- Name: bus bus_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bus
    ADD CONSTRAINT bus_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7628 (class 2606 OID 639281)
-- Name: bygn bygn_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.bygn
    ADD CONSTRAINT bygn_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7643 (class 2606 OID 639370)
-- Name: cs cs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cs
    ADD CONSTRAINT cs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7646 (class 2606 OID 639667)
-- Name: csr csr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.csr
    ADD CONSTRAINT csr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7658 (class 2606 OID 640139)
-- Name: cykelsti_vinterklasse_i_028 cykelsti_vinterklasse_i_028_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cykelsti_vinterklasse_i_028
    ADD CONSTRAINT cykelsti_vinterklasse_i_028_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7652 (class 2606 OID 639943)
-- Name: cyse cyse_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cyse
    ADD CONSTRAINT cyse_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7649 (class 2606 OID 639921)
-- Name: cysr cysr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cysr
    ADD CONSTRAINT cysr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7655 (class 2606 OID 639955)
-- Name: cyst cyst_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.cyst
    ADD CONSTRAINT cyst_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7664 (class 2606 OID 640180)
-- Name: dk dk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.dk
    ADD CONSTRAINT dk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7667 (class 2606 OID 640190)
-- Name: eut eut_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.eut
    ADD CONSTRAINT eut_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7715 (class 2606 OID 641011)
-- Name: fabos fabos_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fabos
    ADD CONSTRAINT fabos_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7718 (class 2606 OID 641021)
-- Name: fafag fafag_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fafag
    ADD CONSTRAINT fafag_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7721 (class 2606 OID 641031)
-- Name: fafagos fafagos_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fafagos
    ADD CONSTRAINT fafagos_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7724 (class 2606 OID 641041)
-- Name: fagobos fagobos_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fagobos
    ADD CONSTRAINT fagobos_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7727 (class 2606 OID 641051)
-- Name: fagos fagos_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fagos
    ADD CONSTRAINT fagos_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7745 (class 2606 OID 641253)
-- Name: fb fb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fb
    ADD CONSTRAINT fb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7739 (class 2606 OID 641211)
-- Name: fbmv fbmv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fbmv
    ADD CONSTRAINT fbmv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7730 (class 2606 OID 641061)
-- Name: fdf fdf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fdf
    ADD CONSTRAINT fdf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7733 (class 2606 OID 641119)
-- Name: fdl fdl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fdl
    ADD CONSTRAINT fdl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7766 (class 2606 OID 641497)
-- Name: fg1 fg1_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg1
    ADD CONSTRAINT fg1_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7769 (class 2606 OID 641984)
-- Name: fg1no fg1no_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg1no
    ADD CONSTRAINT fg1no_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7772 (class 2606 OID 641994)
-- Name: fg2 fg2_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg2
    ADD CONSTRAINT fg2_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7775 (class 2606 OID 642135)
-- Name: fg2no fg2no_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg2no
    ADD CONSTRAINT fg2no_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7754 (class 2606 OID 641297)
-- Name: fg fg_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fg
    ADD CONSTRAINT fg_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7757 (class 2606 OID 641442)
-- Name: fgg fgg_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fgg
    ADD CONSTRAINT fgg_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7760 (class 2606 OID 641452)
-- Name: fgv fgv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fgv
    ADD CONSTRAINT fgv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7763 (class 2606 OID 641487)
-- Name: fgvno fgvno_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fgvno
    ADD CONSTRAINT fgvno_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7700 (class 2606 OID 640780)
-- Name: fh fh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fh
    ADD CONSTRAINT fh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7697 (class 2606 OID 640313)
-- Name: flb flb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.flb
    ADD CONSTRAINT flb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7742 (class 2606 OID 641231)
-- Name: fm fm_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fm
    ADD CONSTRAINT fm_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7703 (class 2606 OID 640805)
-- Name: fo fo_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fo
    ADD CONSTRAINT fo_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7709 (class 2606 OID 640982)
-- Name: foh foh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.foh
    ADD CONSTRAINT foh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7706 (class 2606 OID 640969)
-- Name: fok fok_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fok
    ADD CONSTRAINT fok_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7781 (class 2606 OID 642199)
-- Name: fri fri_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fri
    ADD CONSTRAINT fri_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8021 (class 2606 OID 646330)
-- Name: fsa fsa_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fsa
    ADD CONSTRAINT fsa_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7694 (class 2606 OID 640300)
-- Name: fst fst_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fst
    ADD CONSTRAINT fst_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7778 (class 2606 OID 642145)
-- Name: ftav ftav_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ftav
    ADD CONSTRAINT ftav_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7670 (class 2606 OID 640200)
-- Name: ful ful_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ful
    ADD CONSTRAINT ful_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7751 (class 2606 OID 641287)
-- Name: fut fut_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fut
    ADD CONSTRAINT fut_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7748 (class 2606 OID 641277)
-- Name: fvh fvh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.fvh
    ADD CONSTRAINT fvh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7793 (class 2606 OID 642351)
-- Name: g g_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.g
    ADD CONSTRAINT g_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7805 (class 2606 OID 643209)
-- Name: gasf gasf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gasf
    ADD CONSTRAINT gasf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7784 (class 2606 OID 642209)
-- Name: gb gb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gb
    ADD CONSTRAINT gb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7808 (class 2606 OID 643295)
-- Name: gfl gfl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gfl
    ADD CONSTRAINT gfl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8072 (class 2606 OID 646729)
-- Name: ggrg ggrg_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ggrg
    ADD CONSTRAINT ggrg_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7790 (class 2606 OID 642242)
-- Name: gks gks_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gks
    ADD CONSTRAINT gks_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7796 (class 2606 OID 642871)
-- Name: gra gra_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.gra
    ADD CONSTRAINT gra_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7787 (class 2606 OID 642219)
-- Name: grf grf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.grf
    ADD CONSTRAINT grf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7802 (class 2606 OID 643199)
-- Name: groeft_054 groeft_054_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.groeft_054
    ADD CONSTRAINT groeft_054_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7817 (class 2606 OID 643328)
-- Name: ha ha_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ha
    ADD CONSTRAINT ha_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7811 (class 2606 OID 643305)
-- Name: havelod_057 havelod_057_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.havelod_057
    ADD CONSTRAINT havelod_057_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7823 (class 2606 OID 643381)
-- Name: hb hb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.hb
    ADD CONSTRAINT hb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7547 (class 2606 OID 637587)
-- Name: hd24 hd24_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.hd24
    ADD CONSTRAINT hd24_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7814 (class 2606 OID 643315)
-- Name: he he_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.he
    ADD CONSTRAINT he_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7832 (class 2606 OID 643422)
-- Name: ib ib_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ib
    ADD CONSTRAINT ib_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7835 (class 2606 OID 643432)
-- Name: if if_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.if
    ADD CONSTRAINT if_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7838 (class 2606 OID 643442)
-- Name: inst inst_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.inst
    ADD CONSTRAINT inst_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7841 (class 2606 OID 643479)
-- Name: instpl instpl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.instpl
    ADD CONSTRAINT instpl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7844 (class 2606 OID 643492)
-- Name: inve inve_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.inve
    ADD CONSTRAINT inve_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7829 (class 2606 OID 643412)
-- Name: iv iv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.iv
    ADD CONSTRAINT iv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7847 (class 2606 OID 643502)
-- Name: j j_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.j
    ADD CONSTRAINT j_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7913 (class 2606 OID 645105)
-- Name: k k_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.k
    ADD CONSTRAINT k_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7910 (class 2606 OID 645090)
-- Name: kg kg_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kg
    ADD CONSTRAINT kg_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7820 (class 2606 OID 643356)
-- Name: kh kh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kh
    ADD CONSTRAINT kh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7916 (class 2606 OID 645123)
-- Name: kl kl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kl
    ADD CONSTRAINT kl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7859 (class 2606 OID 644453)
-- Name: kli kli_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kli
    ADD CONSTRAINT kli_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8066 (class 2606 OID 646693)
-- Name: klp klp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.klp
    ADD CONSTRAINT klp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7856 (class 2606 OID 644432)
-- Name: kp kp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kp
    ADD CONSTRAINT kp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7853 (class 2606 OID 644420)
-- Name: kpl kpl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kpl
    ADD CONSTRAINT kpl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7862 (class 2606 OID 644466)
-- Name: kps kps_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.kps
    ADD CONSTRAINT kps_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7850 (class 2606 OID 643525)
-- Name: ks ks_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ks
    ADD CONSTRAINT ks_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7940 (class 2606 OID 645573)
-- Name: l l_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.l
    ADD CONSTRAINT l_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7943 (class 2606 OID 645630)
-- Name: lak lak_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lak
    ADD CONSTRAINT lak_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7946 (class 2606 OID 645667)
-- Name: lb lb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lb
    ADD CONSTRAINT lb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7955 (class 2606 OID 645706)
-- Name: lful lful_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lful
    ADD CONSTRAINT lful_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7934 (class 2606 OID 645225)
-- Name: lhk lhk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lhk
    ADD CONSTRAINT lhk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7937 (class 2606 OID 645562)
-- Name: lia lia_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lia
    ADD CONSTRAINT lia_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7919 (class 2606 OID 645135)
-- Name: ll ll_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ll
    ADD CONSTRAINT ll_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7922 (class 2606 OID 645145)
-- Name: lmu lmu_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lmu
    ADD CONSTRAINT lmu_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7925 (class 2606 OID 645187)
-- Name: lr lr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lr
    ADD CONSTRAINT lr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7928 (class 2606 OID 645197)
-- Name: lrf lrf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lrf
    ADD CONSTRAINT lrf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7949 (class 2606 OID 645677)
-- Name: ls ls_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ls
    ADD CONSTRAINT ls_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8366 (class 2606 OID 650285)
-- Name: lt lt_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lt
    ADD CONSTRAINT lt_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7952 (class 2606 OID 645687)
-- Name: lv lv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.lv
    ADD CONSTRAINT lv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7979 (class 2606 OID 646003)
-- Name: m m_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.m
    ADD CONSTRAINT m_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7964 (class 2606 OID 645811)
-- Name: markvej_077 markvej_077_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.markvej_077
    ADD CONSTRAINT markvej_077_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7967 (class 2606 OID 645821)
-- Name: me me_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.me
    ADD CONSTRAINT me_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7961 (class 2606 OID 645756)
-- Name: mk mk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.mk
    ADD CONSTRAINT mk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7982 (class 2606 OID 646019)
-- Name: ml ml_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ml
    ADD CONSTRAINT ml_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7973 (class 2606 OID 645855)
-- Name: mose_078 mose_078_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.mose_078
    ADD CONSTRAINT mose_078_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7976 (class 2606 OID 645988)
-- Name: mu mu_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.mu
    ADD CONSTRAINT mu_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8012 (class 2606 OID 646206)
-- Name: nac nac_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.nac
    ADD CONSTRAINT nac_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7985 (class 2606 OID 646029)
-- Name: ng ng_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ng
    ADD CONSTRAINT ng_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8015 (class 2606 OID 646216)
-- Name: nr nr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.nr
    ADD CONSTRAINT nr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8009 (class 2606 OID 646196)
-- Name: ns ns_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ns
    ADD CONSTRAINT ns_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8375 (class 2606 OID 650320)
-- Name: olb olb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.olb
    ADD CONSTRAINT olb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8369 (class 2606 OID 650295)
-- Name: os os_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.os
    ADD CONSTRAINT os_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8057 (class 2606 OID 646631)
-- Name: p p_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.p
    ADD CONSTRAINT p_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8063 (class 2606 OID 646683)
-- Name: pa pa_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pa
    ADD CONSTRAINT pa_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8060 (class 2606 OID 646673)
-- Name: pb pb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pb
    ADD CONSTRAINT pb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8033 (class 2606 OID 646545)
-- Name: pga pga_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pga
    ADD CONSTRAINT pga_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8045 (class 2606 OID 646591)
-- Name: pk pk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pk
    ADD CONSTRAINT pk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8030 (class 2606 OID 646386)
-- Name: pkp pkp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pkp
    ADD CONSTRAINT pkp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8042 (class 2606 OID 646575)
-- Name: plankevaerk_089 plankevaerk_089_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.plankevaerk_089
    ADD CONSTRAINT plankevaerk_089_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8069 (class 2606 OID 646719)
-- Name: pn pn_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pn
    ADD CONSTRAINT pn_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8036 (class 2606 OID 646555)
-- Name: ps ps_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ps
    ADD CONSTRAINT ps_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8039 (class 2606 OID 646565)
-- Name: pst pst_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pst
    ADD CONSTRAINT pst_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8054 (class 2606 OID 646621)
-- Name: pvl pvl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.pvl
    ADD CONSTRAINT pvl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8105 (class 2606 OID 647959)
-- Name: rb rb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rb
    ADD CONSTRAINT rb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8117 (class 2606 OID 648153)
-- Name: rbe rbe_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rbe
    ADD CONSTRAINT rbe_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8078 (class 2606 OID 646749)
-- Name: rg1 rg1_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg1
    ADD CONSTRAINT rg1_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8081 (class 2606 OID 646922)
-- Name: rg2 rg2_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg2
    ADD CONSTRAINT rg2_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8087 (class 2606 OID 647042)
-- Name: rg3 rg3_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg3
    ADD CONSTRAINT rg3_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8090 (class 2606 OID 647577)
-- Name: rg5 rg5_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg5
    ADD CONSTRAINT rg5_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8075 (class 2606 OID 646739)
-- Name: rg rg_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rg
    ADD CONSTRAINT rg_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8084 (class 2606 OID 647026)
-- Name: rgb rgb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rgb
    ADD CONSTRAINT rgb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8096 (class 2606 OID 647929)
-- Name: rgt rgt_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rgt
    ADD CONSTRAINT rgt_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8114 (class 2606 OID 648143)
-- Name: rob rob_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rob
    ADD CONSTRAINT rob_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8126 (class 2606 OID 648188)
-- Name: roersump_098 roersump_098_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.roersump_098
    ADD CONSTRAINT roersump_098_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8099 (class 2606 OID 647939)
-- Name: rpf rpf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rpf
    ADD CONSTRAINT rpf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8102 (class 2606 OID 647949)
-- Name: rpl rpl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rpl
    ADD CONSTRAINT rpl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8093 (class 2606 OID 647625)
-- Name: rskr rskr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rskr
    ADD CONSTRAINT rskr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8123 (class 2606 OID 648178)
-- Name: rv rv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.rv
    ADD CONSTRAINT rv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8207 (class 2606 OID 648945)
-- Name: s s_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.s
    ADD CONSTRAINT s_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8159 (class 2606 OID 648465)
-- Name: sa sa_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sa
    ADD CONSTRAINT sa_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8147 (class 2606 OID 648407)
-- Name: sak sak_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sak
    ADD CONSTRAINT sak_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8141 (class 2606 OID 648385)
-- Name: sand sand_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sand
    ADD CONSTRAINT sand_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8135 (class 2606 OID 648365)
-- Name: sasi sasi_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sasi
    ADD CONSTRAINT sasi_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8210 (class 2606 OID 648999)
-- Name: sd sd_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sd
    ADD CONSTRAINT sd_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8144 (class 2606 OID 648395)
-- Name: sf sf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sf
    ADD CONSTRAINT sf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8153 (class 2606 OID 648445)
-- Name: sfb sfb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sfb
    ADD CONSTRAINT sfb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8129 (class 2606 OID 648198)
-- Name: sfs sfs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sfs
    ADD CONSTRAINT sfs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8216 (class 2606 OID 649019)
-- Name: sh sh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sh
    ADD CONSTRAINT sh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8150 (class 2606 OID 648435)
-- Name: shb shb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.shb
    ADD CONSTRAINT shb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8156 (class 2606 OID 648455)
-- Name: she she_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.she
    ADD CONSTRAINT she_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8165 (class 2606 OID 648525)
-- Name: sk sk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sk
    ADD CONSTRAINT sk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8171 (class 2606 OID 648742)
-- Name: skur skur_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.skur
    ADD CONSTRAINT skur_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8192 (class 2606 OID 648871)
-- Name: sm sm_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sm
    ADD CONSTRAINT sm_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8180 (class 2606 OID 648784)
-- Name: snf snf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.snf
    ADD CONSTRAINT snf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8183 (class 2606 OID 648803)
-- Name: sns sns_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sns
    ADD CONSTRAINT sns_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8132 (class 2606 OID 648355)
-- Name: sobo sobo_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sobo
    ADD CONSTRAINT sobo_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8237 (class 2606 OID 649148)
-- Name: soe soe_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.soe
    ADD CONSTRAINT soe_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8195 (class 2606 OID 648889)
-- Name: sp sp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sp
    ADD CONSTRAINT sp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8198 (class 2606 OID 648902)
-- Name: spl spl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.spl
    ADD CONSTRAINT spl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8174 (class 2606 OID 648752)
-- Name: sps sps_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sps
    ADD CONSTRAINT sps_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8186 (class 2606 OID 648828)
-- Name: sr sr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sr
    ADD CONSTRAINT sr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8177 (class 2606 OID 648762)
-- Name: ss ss_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ss
    ADD CONSTRAINT ss_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8204 (class 2606 OID 648922)
-- Name: st st_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.st
    ADD CONSTRAINT st_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8219 (class 2606 OID 649029)
-- Name: stk stk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.stk
    ADD CONSTRAINT stk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8213 (class 2606 OID 649009)
-- Name: stm stm_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.stm
    ADD CONSTRAINT stm_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8222 (class 2606 OID 649039)
-- Name: stsk stsk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.stsk
    ADD CONSTRAINT stsk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8201 (class 2606 OID 648912)
-- Name: sv sv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sv
    ADD CONSTRAINT sv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8189 (class 2606 OID 648838)
-- Name: svb svb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.svb
    ADD CONSTRAINT svb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8234 (class 2606 OID 649129)
-- Name: sveller_119 sveller_119_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.sveller_119
    ADD CONSTRAINT sveller_119_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8288 (class 2606 OID 649718)
-- Name: tb tb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tb
    ADD CONSTRAINT tb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8246 (class 2606 OID 649330)
-- Name: terraenbygvaerker_121 terraenbygvaerker_121_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.terraenbygvaerker_121
    ADD CONSTRAINT terraenbygvaerker_121_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8252 (class 2606 OID 649353)
-- Name: terraenudstyr_122 terraenudstyr_122_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.terraenudstyr_122
    ADD CONSTRAINT terraenudstyr_122_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8255 (class 2606 OID 649363)
-- Name: terraenudstyr_l_123 terraenudstyr_l_123_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.terraenudstyr_l_123
    ADD CONSTRAINT terraenudstyr_l_123_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8282 (class 2606 OID 649546)
-- Name: th th_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.th
    ADD CONSTRAINT th_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8285 (class 2606 OID 649578)
-- Name: tr tr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tr
    ADD CONSTRAINT tr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8249 (class 2606 OID 649343)
-- Name: trm trm_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trm
    ADD CONSTRAINT trm_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8273 (class 2606 OID 649510)
-- Name: trpb trpb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trpb
    ADD CONSTRAINT trpb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8276 (class 2606 OID 649520)
-- Name: trpf trpf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trpf
    ADD CONSTRAINT trpf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8279 (class 2606 OID 649533)
-- Name: trpl trpl_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trpl
    ADD CONSTRAINT trpl_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8291 (class 2606 OID 649728)
-- Name: trr trr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trr
    ADD CONSTRAINT trr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8297 (class 2606 OID 649812)
-- Name: trte trte_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.trte
    ADD CONSTRAINT trte_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8270 (class 2606 OID 649500)
-- Name: ts ts_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.ts
    ADD CONSTRAINT ts_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8294 (class 2606 OID 649802)
-- Name: tst tst_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tst
    ADD CONSTRAINT tst_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8258 (class 2606 OID 649373)
-- Name: tu tu_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.tu
    ADD CONSTRAINT tu_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8318 (class 2606 OID 649932)
-- Name: v2s v2s_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v2s
    ADD CONSTRAINT v2s_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8321 (class 2606 OID 650064)
-- Name: v2smr v2smr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v2smr
    ADD CONSTRAINT v2smr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8324 (class 2606 OID 650076)
-- Name: v4s v4s_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v4s
    ADD CONSTRAINT v4s_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8327 (class 2606 OID 650086)
-- Name: v4smr v4smr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.v4smr
    ADD CONSTRAINT v4smr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8312 (class 2606 OID 649911)
-- Name: vandloeb_137 vandloeb_137_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vandloeb_137
    ADD CONSTRAINT vandloeb_137_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8330 (class 2606 OID 650120)
-- Name: vbf vbf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vbf
    ADD CONSTRAINT vbf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7736 (class 2606 OID 641201)
-- Name: vfdldobbelt vfdldobbelt_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vfdldobbelt
    ADD CONSTRAINT vfdldobbelt_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8333 (class 2606 OID 650130)
-- Name: vns vns_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vns
    ADD CONSTRAINT vns_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8315 (class 2606 OID 649921)
-- Name: vr vr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vr
    ADD CONSTRAINT vr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8339 (class 2606 OID 650150)
-- Name: vs vs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vs
    ADD CONSTRAINT vs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8363 (class 2606 OID 650275)
-- Name: vtg vtg_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vtg
    ADD CONSTRAINT vtg_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7520 (class 2606 OID 637171)
-- Name: vvk1_2 vvk1_2_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_2
    ADD CONSTRAINT vvk1_2_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7523 (class 2606 OID 637181)
-- Name: vvk1_2m vvk1_2m_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_2m
    ADD CONSTRAINT vvk1_2m_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7526 (class 2606 OID 637191)
-- Name: vvk1_4 vvk1_4_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_4
    ADD CONSTRAINT vvk1_4_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7529 (class 2606 OID 637201)
-- Name: vvk1_4m vvk1_4m_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk1_4m
    ADD CONSTRAINT vvk1_4m_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8360 (class 2606 OID 650265)
-- Name: vvk2f vvk2f_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk2f
    ADD CONSTRAINT vvk2f_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8027 (class 2606 OID 646376)
-- Name: vvk3p vvk3p_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.vvk3p
    ADD CONSTRAINT vvk3p_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7586 (class 2606 OID 637943)
-- Name: workarea_bb workarea_bb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bb
    ADD CONSTRAINT workarea_bb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7553 (class 2606 OID 637637)
-- Name: workarea_bi workarea_bi_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bi
    ADD CONSTRAINT workarea_bi_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7631 (class 2606 OID 639297)
-- Name: workarea_bls workarea_bls_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bls
    ADD CONSTRAINT workarea_bls_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7556 (class 2606 OID 637650)
-- Name: workarea_bv workarea_bv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_bv
    ADD CONSTRAINT workarea_bv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7661 (class 2606 OID 640149)
-- Name: workarea_di workarea_di_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_di
    ADD CONSTRAINT workarea_di_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8336 (class 2606 OID 650140)
-- Name: workarea_evr workarea_evr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_evr
    ADD CONSTRAINT workarea_evr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7682 (class 2606 OID 640240)
-- Name: workarea_fejcs workarea_fejcs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejcs
    ADD CONSTRAINT workarea_fejcs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7685 (class 2606 OID 640258)
-- Name: workarea_fejf workarea_fejf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejf
    ADD CONSTRAINT workarea_fejf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7688 (class 2606 OID 640272)
-- Name: workarea_fejv1 workarea_fejv1_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejv1
    ADD CONSTRAINT workarea_fejv1_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7691 (class 2606 OID 640286)
-- Name: workarea_fejv2 workarea_fejv2_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fejv2
    ADD CONSTRAINT workarea_fejv2_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7679 (class 2606 OID 640230)
-- Name: workarea_fm workarea_fm_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fm
    ADD CONSTRAINT workarea_fm_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7676 (class 2606 OID 640220)
-- Name: workarea_fr workarea_fr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fr
    ADD CONSTRAINT workarea_fr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7712 (class 2606 OID 641001)
-- Name: workarea_fs workarea_fs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_fs
    ADD CONSTRAINT workarea_fs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7673 (class 2606 OID 640210)
-- Name: workarea_ful workarea_ful_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ful
    ADD CONSTRAINT workarea_ful_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7799 (class 2606 OID 642960)
-- Name: workarea_gv workarea_gv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_gv
    ADD CONSTRAINT workarea_gv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7826 (class 2606 OID 643394)
-- Name: workarea_is workarea_is_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_is
    ADD CONSTRAINT workarea_is_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7865 (class 2606 OID 644476)
-- Name: workarea_kbb workarea_kbb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbb
    ADD CONSTRAINT workarea_kbb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7868 (class 2606 OID 644495)
-- Name: workarea_kbbv workarea_kbbv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbbv
    ADD CONSTRAINT workarea_kbbv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7871 (class 2606 OID 644529)
-- Name: workarea_kbc workarea_kbc_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbc
    ADD CONSTRAINT workarea_kbc_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7874 (class 2606 OID 644549)
-- Name: workarea_kbi workarea_kbi_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbi
    ADD CONSTRAINT workarea_kbi_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7877 (class 2606 OID 644565)
-- Name: workarea_kbn workarea_kbn_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbn
    ADD CONSTRAINT workarea_kbn_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7880 (class 2606 OID 644636)
-- Name: workarea_kbr workarea_kbr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbr
    ADD CONSTRAINT workarea_kbr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7883 (class 2606 OID 644646)
-- Name: workarea_kbs workarea_kbs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kbs
    ADD CONSTRAINT workarea_kbs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7886 (class 2606 OID 644716)
-- Name: workarea_keb workarea_keb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_keb
    ADD CONSTRAINT workarea_keb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7889 (class 2606 OID 644774)
-- Name: workarea_klp workarea_klp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_klp
    ADD CONSTRAINT workarea_klp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7895 (class 2606 OID 644850)
-- Name: workarea_km workarea_km_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_km
    ADD CONSTRAINT workarea_km_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7898 (class 2606 OID 644923)
-- Name: workarea_kmb workarea_kmb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kmb
    ADD CONSTRAINT workarea_kmb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7892 (class 2606 OID 644840)
-- Name: workarea_kms workarea_kms_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kms
    ADD CONSTRAINT workarea_kms_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7901 (class 2606 OID 644971)
-- Name: workarea_ks workarea_ks_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ks
    ADD CONSTRAINT workarea_ks_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7904 (class 2606 OID 645029)
-- Name: workarea_ksb workarea_ksb_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ksb
    ADD CONSTRAINT workarea_ksb_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7907 (class 2606 OID 645080)
-- Name: workarea_kss workarea_kss_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_kss
    ADD CONSTRAINT workarea_kss_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7958 (class 2606 OID 645746)
-- Name: workarea_lfu workarea_lfu_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_lfu
    ADD CONSTRAINT workarea_lfu_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7931 (class 2606 OID 645210)
-- Name: workarea_lr workarea_lr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_lr
    ADD CONSTRAINT workarea_lr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7970 (class 2606 OID 645831)
-- Name: workarea_mh workarea_mh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_mh
    ADD CONSTRAINT workarea_mh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7997 (class 2606 OID 646078)
-- Name: workarea_ngr workarea_ngr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ngr
    ADD CONSTRAINT workarea_ngr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7988 (class 2606 OID 646039)
-- Name: workarea_nh workarea_nh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nh
    ADD CONSTRAINT workarea_nh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7994 (class 2606 OID 646068)
-- Name: workarea_no workarea_no_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_no
    ADD CONSTRAINT workarea_no_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8000 (class 2606 OID 646089)
-- Name: workarea_nog workarea_nog_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nog
    ADD CONSTRAINT workarea_nog_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8006 (class 2606 OID 646138)
-- Name: workarea_nogr workarea_nogr_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nogr
    ADD CONSTRAINT workarea_nogr_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7991 (class 2606 OID 646058)
-- Name: workarea_nohd1 workarea_nohd1_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nohd1
    ADD CONSTRAINT workarea_nohd1_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8003 (class 2606 OID 646107)
-- Name: workarea_nohd workarea_nohd_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_nohd
    ADD CONSTRAINT workarea_nohd_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8378 (class 2606 OID 650330)
-- Name: workarea_oi workarea_oi_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_oi
    ADD CONSTRAINT workarea_oi_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8048 (class 2606 OID 646601)
-- Name: workarea_pc workarea_pc_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_pc
    ADD CONSTRAINT workarea_pc_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8051 (class 2606 OID 646611)
-- Name: workarea_pcx workarea_pcx_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_pcx
    ADD CONSTRAINT workarea_pcx_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8024 (class 2606 OID 646340)
-- Name: workarea_pk workarea_pk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_pk
    ADD CONSTRAINT workarea_pk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8108 (class 2606 OID 647989)
-- Name: workarea_rv workarea_rv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_rv
    ADD CONSTRAINT workarea_rv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8111 (class 2606 OID 648065)
-- Name: workarea_rvms workarea_rvms_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_rvms
    ADD CONSTRAINT workarea_rvms_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8120 (class 2606 OID 648163)
-- Name: workarea_rw workarea_rw_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_rw
    ADD CONSTRAINT workarea_rw_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8168 (class 2606 OID 648732)
-- Name: workarea_sc workarea_sc_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sc
    ADD CONSTRAINT workarea_sc_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8162 (class 2606 OID 648495)
-- Name: workarea_sk workarea_sk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sk
    ADD CONSTRAINT workarea_sk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8138 (class 2606 OID 648375)
-- Name: workarea_smhd workarea_smhd_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_smhd
    ADD CONSTRAINT workarea_smhd_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8228 (class 2606 OID 649109)
-- Name: workarea_sum1 workarea_sum1_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sum1
    ADD CONSTRAINT workarea_sum1_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8225 (class 2606 OID 649052)
-- Name: workarea_sum workarea_sum_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sum
    ADD CONSTRAINT workarea_sum_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8231 (class 2606 OID 649119)
-- Name: workarea_sumo workarea_sumo_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_sumo
    ADD CONSTRAINT workarea_sumo_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8264 (class 2606 OID 649459)
-- Name: workarea_to2 workarea_to2_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_to2
    ADD CONSTRAINT workarea_to2_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8261 (class 2606 OID 649391)
-- Name: workarea_to workarea_to_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_to
    ADD CONSTRAINT workarea_to_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8267 (class 2606 OID 649469)
-- Name: workarea_tp workarea_tp_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_tp
    ADD CONSTRAINT workarea_tp_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8240 (class 2606 OID 649270)
-- Name: workarea_tu workarea_tu_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_tu
    ADD CONSTRAINT workarea_tu_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8243 (class 2606 OID 649283)
-- Name: workarea_tuvs workarea_tuvs_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_tuvs
    ADD CONSTRAINT workarea_tuvs_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8300 (class 2606 OID 649831)
-- Name: workarea_ub workarea_ub_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ub
    ADD CONSTRAINT workarea_ub_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8309 (class 2606 OID 649864)
-- Name: workarea_ubf workarea_ubf_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ubf
    ADD CONSTRAINT workarea_ubf_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8303 (class 2606 OID 649841)
-- Name: workarea_ufk workarea_ufk_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_ufk
    ADD CONSTRAINT workarea_ufk_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8306 (class 2606 OID 649854)
-- Name: workarea_uhv workarea_uhv_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_uhv
    ADD CONSTRAINT workarea_uhv_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8342 (class 2606 OID 650160)
-- Name: workarea_vdih workarea_vdih_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vdih
    ADD CONSTRAINT workarea_vdih_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8345 (class 2606 OID 650186)
-- Name: workarea_veuh workarea_veuh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_veuh
    ADD CONSTRAINT workarea_veuh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8351 (class 2606 OID 650206)
-- Name: workarea_vsoi workarea_vsoi_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vsoi
    ADD CONSTRAINT workarea_vsoi_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8348 (class 2606 OID 650196)
-- Name: workarea_vsoih workarea_vsoih_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vsoih
    ADD CONSTRAINT workarea_vsoih_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8357 (class 2606 OID 650255)
-- Name: workarea_vt workarea_vt_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vt
    ADD CONSTRAINT workarea_vt_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 8354 (class 2606 OID 650245)
-- Name: workarea_vvh workarea_vvh_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workarea_vvh
    ADD CONSTRAINT workarea_vvh_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7517 (class 2606 OID 635765)
-- Name: workareas workareas_pkey; Type: CONSTRAINT; Schema: driftweb; Owner: -
--

ALTER TABLE ONLY driftweb.workareas
    ADD CONSTRAINT workareas_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 7530 (class 1259 OID 637212)
-- Name: a_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX a_geom_geom_idx ON driftweb.a USING gist (geom);


--
-- TOC entry 8370 (class 1259 OID 650311)
-- Name: aest_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX aest_geom_geom_idx ON driftweb.aest USING gist (geom);


--
-- TOC entry 7539 (class 1259 OID 637265)
-- Name: ag_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ag_geom_geom_idx ON driftweb.ag USING gist (geom);


--
-- TOC entry 7533 (class 1259 OID 637245)
-- Name: ana1_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ana1_geom_geom_idx ON driftweb.ana1 USING gist (geom);


--
-- TOC entry 7536 (class 1259 OID 637255)
-- Name: ap_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ap_geom_geom_idx ON driftweb.ap USING gist (geom);


--
-- TOC entry 7542 (class 1259 OID 637280)
-- Name: asf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX asf_geom_geom_idx ON driftweb.asf USING gist (geom);


--
-- TOC entry 8016 (class 1259 OID 646319)
-- Name: asfob_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX asfob_geom_geom_idx ON driftweb.asfob USING gist (geom);


--
-- TOC entry 7548 (class 1259 OID 637598)
-- Name: av_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX av_geom_geom_idx ON driftweb.av USING gist (geom);


--
-- TOC entry 7581 (class 1259 OID 637929)
-- Name: b_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX b_geom_geom_idx ON driftweb.b USING gist (geom);


--
-- TOC entry 7614 (class 1259 OID 639073)
-- Name: bb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bb_geom_geom_idx ON driftweb.bb USING gist (geom);


--
-- TOC entry 7593 (class 1259 OID 637982)
-- Name: bbs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bbs_geom_geom_idx ON driftweb.bbs USING gist (geom);


--
-- TOC entry 7590 (class 1259 OID 637972)
-- Name: bd_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bd_geom_geom_idx ON driftweb.bd USING gist (geom);


--
-- TOC entry 7608 (class 1259 OID 638817)
-- Name: bdl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bdl_geom_geom_idx ON driftweb.bdl USING gist (geom);


--
-- TOC entry 7578 (class 1259 OID 637919)
-- Name: be_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX be_geom_geom_idx ON driftweb.be USING gist (geom);


--
-- TOC entry 7560 (class 1259 OID 637728)
-- Name: bebs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bebs_geom_geom_idx ON driftweb.bebs USING gist (geom);


--
-- TOC entry 7563 (class 1259 OID 637849)
-- Name: befl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX befl_geom_geom_idx ON driftweb.befl USING gist (geom);


--
-- TOC entry 7569 (class 1259 OID 637889)
-- Name: bepl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bepl_geom_geom_idx ON driftweb.bepl USING gist (geom);


--
-- TOC entry 7575 (class 1259 OID 637909)
-- Name: bist_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bist_geom_geom_idx ON driftweb.bist USING gist (geom);


--
-- TOC entry 7572 (class 1259 OID 637899)
-- Name: bistr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bistr_geom_geom_idx ON driftweb.bistr USING gist (geom);


--
-- TOC entry 7638 (class 1259 OID 639339)
-- Name: bk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bk_geom_geom_idx ON driftweb.bk USING gist (geom);


--
-- TOC entry 7566 (class 1259 OID 637859)
-- Name: bks_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bks_geom_geom_idx ON driftweb.bks USING gist (geom);


--
-- TOC entry 7635 (class 1259 OID 639329)
-- Name: blp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX blp_geom_geom_idx ON driftweb.blp USING gist (geom);


--
-- TOC entry 7620 (class 1259 OID 639255)
-- Name: bls_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bls_geom_geom_idx ON driftweb.bls USING gist (geom);


--
-- TOC entry 7587 (class 1259 OID 637960)
-- Name: bm_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bm_geom_geom_idx ON driftweb.bm USING gist (geom);


--
-- TOC entry 7596 (class 1259 OID 638012)
-- Name: borks_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX borks_geom_geom_idx ON driftweb.borks USING gist (geom);


--
-- TOC entry 7605 (class 1259 OID 638061)
-- Name: bp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bp_geom_geom_idx ON driftweb.bp USING gist (geom);


--
-- TOC entry 7632 (class 1259 OID 639319)
-- Name: br_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX br_geom_geom_idx ON driftweb.br USING gist (geom);


--
-- TOC entry 7602 (class 1259 OID 638051)
-- Name: brl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX brl_geom_geom_idx ON driftweb.brl USING gist (geom);


--
-- TOC entry 7599 (class 1259 OID 638022)
-- Name: bs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bs_geom_geom_idx ON driftweb.bs USING gist (geom);


--
-- TOC entry 7557 (class 1259 OID 637718)
-- Name: bt_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bt_geom_geom_idx ON driftweb.bt USING gist (geom);


--
-- TOC entry 7617 (class 1259 OID 639155)
-- Name: bu_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bu_geom_geom_idx ON driftweb.bu USING gist (geom);


--
-- TOC entry 7611 (class 1259 OID 639063)
-- Name: bud_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bud_geom_geom_idx ON driftweb.bud USING gist (geom);


--
-- TOC entry 7623 (class 1259 OID 639267)
-- Name: bus_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bus_geom_geom_idx ON driftweb.bus USING gist (geom);


--
-- TOC entry 7626 (class 1259 OID 639282)
-- Name: bygn_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX bygn_geom_geom_idx ON driftweb.bygn USING gist (geom);


--
-- TOC entry 7641 (class 1259 OID 639371)
-- Name: cs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX cs_geom_geom_idx ON driftweb.cs USING gist (geom);


--
-- TOC entry 7644 (class 1259 OID 639668)
-- Name: csr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX csr_geom_geom_idx ON driftweb.csr USING gist (geom);


--
-- TOC entry 7656 (class 1259 OID 640140)
-- Name: cykelsti_vinterklasse_i_028_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX cykelsti_vinterklasse_i_028_geom_geom_idx ON driftweb.cykelsti_vinterklasse_i_028 USING gist (geom);


--
-- TOC entry 7650 (class 1259 OID 639944)
-- Name: cyse_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX cyse_geom_geom_idx ON driftweb.cyse USING gist (geom);


--
-- TOC entry 7647 (class 1259 OID 639922)
-- Name: cysr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX cysr_geom_geom_idx ON driftweb.cysr USING gist (geom);


--
-- TOC entry 7653 (class 1259 OID 639956)
-- Name: cyst_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX cyst_geom_geom_idx ON driftweb.cyst USING gist (geom);


--
-- TOC entry 7662 (class 1259 OID 640181)
-- Name: dk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX dk_geom_geom_idx ON driftweb.dk USING gist (geom);


--
-- TOC entry 7665 (class 1259 OID 640191)
-- Name: eut_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX eut_geom_geom_idx ON driftweb.eut USING gist (geom);


--
-- TOC entry 7713 (class 1259 OID 641012)
-- Name: fabos_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fabos_geom_geom_idx ON driftweb.fabos USING gist (geom);


--
-- TOC entry 7716 (class 1259 OID 641022)
-- Name: fafag_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fafag_geom_geom_idx ON driftweb.fafag USING gist (geom);


--
-- TOC entry 7719 (class 1259 OID 641032)
-- Name: fafagos_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fafagos_geom_geom_idx ON driftweb.fafagos USING gist (geom);


--
-- TOC entry 7722 (class 1259 OID 641042)
-- Name: fagobos_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fagobos_geom_geom_idx ON driftweb.fagobos USING gist (geom);


--
-- TOC entry 7725 (class 1259 OID 641052)
-- Name: fagos_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fagos_geom_geom_idx ON driftweb.fagos USING gist (geom);


--
-- TOC entry 7743 (class 1259 OID 641254)
-- Name: fb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fb_geom_geom_idx ON driftweb.fb USING gist (geom);


--
-- TOC entry 7737 (class 1259 OID 641212)
-- Name: fbmv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fbmv_geom_geom_idx ON driftweb.fbmv USING gist (geom);


--
-- TOC entry 7728 (class 1259 OID 641062)
-- Name: fdf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fdf_geom_geom_idx ON driftweb.fdf USING gist (geom);


--
-- TOC entry 7731 (class 1259 OID 641120)
-- Name: fdl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fdl_geom_geom_idx ON driftweb.fdl USING gist (geom);


--
-- TOC entry 7764 (class 1259 OID 641498)
-- Name: fg1_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fg1_geom_geom_idx ON driftweb.fg1 USING gist (geom);


--
-- TOC entry 7767 (class 1259 OID 641985)
-- Name: fg1no_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fg1no_geom_geom_idx ON driftweb.fg1no USING gist (geom);


--
-- TOC entry 7770 (class 1259 OID 641995)
-- Name: fg2_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fg2_geom_geom_idx ON driftweb.fg2 USING gist (geom);


--
-- TOC entry 7773 (class 1259 OID 642136)
-- Name: fg2no_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fg2no_geom_geom_idx ON driftweb.fg2no USING gist (geom);


--
-- TOC entry 7752 (class 1259 OID 641298)
-- Name: fg_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fg_geom_geom_idx ON driftweb.fg USING gist (geom);


--
-- TOC entry 7755 (class 1259 OID 641443)
-- Name: fgg_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fgg_geom_geom_idx ON driftweb.fgg USING gist (geom);


--
-- TOC entry 7758 (class 1259 OID 641453)
-- Name: fgv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fgv_geom_geom_idx ON driftweb.fgv USING gist (geom);


--
-- TOC entry 7761 (class 1259 OID 641488)
-- Name: fgvno_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fgvno_geom_geom_idx ON driftweb.fgvno USING gist (geom);


--
-- TOC entry 7698 (class 1259 OID 640781)
-- Name: fh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fh_geom_geom_idx ON driftweb.fh USING gist (geom);


--
-- TOC entry 7695 (class 1259 OID 640314)
-- Name: flb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX flb_geom_geom_idx ON driftweb.flb USING gist (geom);


--
-- TOC entry 7740 (class 1259 OID 641232)
-- Name: fm_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fm_geom_geom_idx ON driftweb.fm USING gist (geom);


--
-- TOC entry 7701 (class 1259 OID 640806)
-- Name: fo_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fo_geom_geom_idx ON driftweb.fo USING gist (geom);


--
-- TOC entry 7707 (class 1259 OID 640983)
-- Name: foh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX foh_geom_geom_idx ON driftweb.foh USING gist (geom);


--
-- TOC entry 7704 (class 1259 OID 640970)
-- Name: fok_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fok_geom_geom_idx ON driftweb.fok USING gist (geom);


--
-- TOC entry 7779 (class 1259 OID 642200)
-- Name: fri_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fri_geom_geom_idx ON driftweb.fri USING gist (geom);


--
-- TOC entry 8019 (class 1259 OID 646331)
-- Name: fsa_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fsa_geom_geom_idx ON driftweb.fsa USING gist (geom);


--
-- TOC entry 7692 (class 1259 OID 640301)
-- Name: fst_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fst_geom_geom_idx ON driftweb.fst USING gist (geom);


--
-- TOC entry 7776 (class 1259 OID 642146)
-- Name: ftav_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ftav_geom_geom_idx ON driftweb.ftav USING gist (geom);


--
-- TOC entry 7668 (class 1259 OID 640201)
-- Name: ful_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ful_geom_geom_idx ON driftweb.ful USING gist (geom);


--
-- TOC entry 7749 (class 1259 OID 641288)
-- Name: fut_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fut_geom_geom_idx ON driftweb.fut USING gist (geom);


--
-- TOC entry 7746 (class 1259 OID 641278)
-- Name: fvh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX fvh_geom_geom_idx ON driftweb.fvh USING gist (geom);


--
-- TOC entry 7791 (class 1259 OID 642352)
-- Name: g_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX g_geom_geom_idx ON driftweb.g USING gist (geom);


--
-- TOC entry 7803 (class 1259 OID 643210)
-- Name: gasf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX gasf_geom_geom_idx ON driftweb.gasf USING gist (geom);


--
-- TOC entry 7782 (class 1259 OID 642210)
-- Name: gb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX gb_geom_geom_idx ON driftweb.gb USING gist (geom);


--
-- TOC entry 7806 (class 1259 OID 643296)
-- Name: gfl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX gfl_geom_geom_idx ON driftweb.gfl USING gist (geom);


--
-- TOC entry 8070 (class 1259 OID 646730)
-- Name: ggrg_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ggrg_geom_geom_idx ON driftweb.ggrg USING gist (geom);


--
-- TOC entry 7788 (class 1259 OID 642243)
-- Name: gks_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX gks_geom_geom_idx ON driftweb.gks USING gist (geom);


--
-- TOC entry 7794 (class 1259 OID 642872)
-- Name: gra_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX gra_geom_geom_idx ON driftweb.gra USING gist (geom);


--
-- TOC entry 7785 (class 1259 OID 642220)
-- Name: grf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX grf_geom_geom_idx ON driftweb.grf USING gist (geom);


--
-- TOC entry 7800 (class 1259 OID 643200)
-- Name: groeft_054_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX groeft_054_geom_geom_idx ON driftweb.groeft_054 USING gist (geom);


--
-- TOC entry 7815 (class 1259 OID 643329)
-- Name: ha_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ha_geom_geom_idx ON driftweb.ha USING gist (geom);


--
-- TOC entry 7809 (class 1259 OID 643306)
-- Name: havelod_057_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX havelod_057_geom_geom_idx ON driftweb.havelod_057 USING gist (geom);


--
-- TOC entry 7821 (class 1259 OID 643382)
-- Name: hb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX hb_geom_geom_idx ON driftweb.hb USING gist (geom);


--
-- TOC entry 7545 (class 1259 OID 637588)
-- Name: hd24_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX hd24_geom_geom_idx ON driftweb.hd24 USING gist (geom);


--
-- TOC entry 7812 (class 1259 OID 643316)
-- Name: he_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX he_geom_geom_idx ON driftweb.he USING gist (geom);


--
-- TOC entry 7830 (class 1259 OID 643423)
-- Name: ib_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ib_geom_geom_idx ON driftweb.ib USING gist (geom);


--
-- TOC entry 7833 (class 1259 OID 643433)
-- Name: if_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX if_geom_geom_idx ON driftweb.if USING gist (geom);


--
-- TOC entry 7836 (class 1259 OID 643443)
-- Name: inst_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX inst_geom_geom_idx ON driftweb.inst USING gist (geom);


--
-- TOC entry 7839 (class 1259 OID 643480)
-- Name: instpl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX instpl_geom_geom_idx ON driftweb.instpl USING gist (geom);


--
-- TOC entry 7842 (class 1259 OID 643493)
-- Name: inve_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX inve_geom_geom_idx ON driftweb.inve USING gist (geom);


--
-- TOC entry 7827 (class 1259 OID 643413)
-- Name: iv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX iv_geom_geom_idx ON driftweb.iv USING gist (geom);


--
-- TOC entry 7845 (class 1259 OID 643503)
-- Name: j_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX j_geom_geom_idx ON driftweb.j USING gist (geom);


--
-- TOC entry 7911 (class 1259 OID 645106)
-- Name: k_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX k_geom_geom_idx ON driftweb.k USING gist (geom);


--
-- TOC entry 7908 (class 1259 OID 645091)
-- Name: kg_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kg_geom_geom_idx ON driftweb.kg USING gist (geom);


--
-- TOC entry 7818 (class 1259 OID 643357)
-- Name: kh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kh_geom_geom_idx ON driftweb.kh USING gist (geom);


--
-- TOC entry 7914 (class 1259 OID 645124)
-- Name: kl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kl_geom_geom_idx ON driftweb.kl USING gist (geom);


--
-- TOC entry 7857 (class 1259 OID 644454)
-- Name: kli_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kli_geom_geom_idx ON driftweb.kli USING gist (geom);


--
-- TOC entry 8064 (class 1259 OID 646694)
-- Name: klp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX klp_geom_geom_idx ON driftweb.klp USING gist (geom);


--
-- TOC entry 7854 (class 1259 OID 644433)
-- Name: kp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kp_geom_geom_idx ON driftweb.kp USING gist (geom);


--
-- TOC entry 7851 (class 1259 OID 644421)
-- Name: kpl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kpl_geom_geom_idx ON driftweb.kpl USING gist (geom);


--
-- TOC entry 7860 (class 1259 OID 644467)
-- Name: kps_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX kps_geom_geom_idx ON driftweb.kps USING gist (geom);


--
-- TOC entry 7848 (class 1259 OID 643526)
-- Name: ks_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ks_geom_geom_idx ON driftweb.ks USING gist (geom);


--
-- TOC entry 7938 (class 1259 OID 645574)
-- Name: l_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX l_geom_geom_idx ON driftweb.l USING gist (geom);


--
-- TOC entry 7941 (class 1259 OID 645631)
-- Name: lak_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lak_geom_geom_idx ON driftweb.lak USING gist (geom);


--
-- TOC entry 7944 (class 1259 OID 645668)
-- Name: lb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lb_geom_geom_idx ON driftweb.lb USING gist (geom);


--
-- TOC entry 7953 (class 1259 OID 645707)
-- Name: lful_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lful_geom_geom_idx ON driftweb.lful USING gist (geom);


--
-- TOC entry 7932 (class 1259 OID 645226)
-- Name: lhk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lhk_geom_geom_idx ON driftweb.lhk USING gist (geom);


--
-- TOC entry 7935 (class 1259 OID 645563)
-- Name: lia_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lia_geom_geom_idx ON driftweb.lia USING gist (geom);


--
-- TOC entry 7917 (class 1259 OID 645136)
-- Name: ll_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ll_geom_geom_idx ON driftweb.ll USING gist (geom);


--
-- TOC entry 7920 (class 1259 OID 645146)
-- Name: lmu_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lmu_geom_geom_idx ON driftweb.lmu USING gist (geom);


--
-- TOC entry 7923 (class 1259 OID 645188)
-- Name: lr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lr_geom_geom_idx ON driftweb.lr USING gist (geom);


--
-- TOC entry 7926 (class 1259 OID 645198)
-- Name: lrf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lrf_geom_geom_idx ON driftweb.lrf USING gist (geom);


--
-- TOC entry 7947 (class 1259 OID 645678)
-- Name: ls_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ls_geom_geom_idx ON driftweb.ls USING gist (geom);


--
-- TOC entry 8364 (class 1259 OID 650286)
-- Name: lt_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lt_geom_geom_idx ON driftweb.lt USING gist (geom);


--
-- TOC entry 7950 (class 1259 OID 645688)
-- Name: lv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX lv_geom_geom_idx ON driftweb.lv USING gist (geom);


--
-- TOC entry 7977 (class 1259 OID 646004)
-- Name: m_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX m_geom_geom_idx ON driftweb.m USING gist (geom);


--
-- TOC entry 7962 (class 1259 OID 645812)
-- Name: markvej_077_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX markvej_077_geom_geom_idx ON driftweb.markvej_077 USING gist (geom);


--
-- TOC entry 7965 (class 1259 OID 645822)
-- Name: me_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX me_geom_geom_idx ON driftweb.me USING gist (geom);


--
-- TOC entry 7959 (class 1259 OID 645757)
-- Name: mk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX mk_geom_geom_idx ON driftweb.mk USING gist (geom);


--
-- TOC entry 7980 (class 1259 OID 646020)
-- Name: ml_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ml_geom_geom_idx ON driftweb.ml USING gist (geom);


--
-- TOC entry 7971 (class 1259 OID 645856)
-- Name: mose_078_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX mose_078_geom_geom_idx ON driftweb.mose_078 USING gist (geom);


--
-- TOC entry 7974 (class 1259 OID 645989)
-- Name: mu_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX mu_geom_geom_idx ON driftweb.mu USING gist (geom);


--
-- TOC entry 8010 (class 1259 OID 646207)
-- Name: nac_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX nac_geom_geom_idx ON driftweb.nac USING gist (geom);


--
-- TOC entry 7983 (class 1259 OID 646030)
-- Name: ng_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ng_geom_geom_idx ON driftweb.ng USING gist (geom);


--
-- TOC entry 8013 (class 1259 OID 646217)
-- Name: nr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX nr_geom_geom_idx ON driftweb.nr USING gist (geom);


--
-- TOC entry 8007 (class 1259 OID 646197)
-- Name: ns_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ns_geom_geom_idx ON driftweb.ns USING gist (geom);


--
-- TOC entry 8373 (class 1259 OID 650321)
-- Name: olb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX olb_geom_geom_idx ON driftweb.olb USING gist (geom);


--
-- TOC entry 8367 (class 1259 OID 650296)
-- Name: os_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX os_geom_geom_idx ON driftweb.os USING gist (geom);


--
-- TOC entry 8055 (class 1259 OID 646632)
-- Name: p_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX p_geom_geom_idx ON driftweb.p USING gist (geom);


--
-- TOC entry 8061 (class 1259 OID 646684)
-- Name: pa_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pa_geom_geom_idx ON driftweb.pa USING gist (geom);


--
-- TOC entry 8058 (class 1259 OID 646674)
-- Name: pb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pb_geom_geom_idx ON driftweb.pb USING gist (geom);


--
-- TOC entry 8031 (class 1259 OID 646546)
-- Name: pga_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pga_geom_geom_idx ON driftweb.pga USING gist (geom);


--
-- TOC entry 8043 (class 1259 OID 646592)
-- Name: pk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pk_geom_geom_idx ON driftweb.pk USING gist (geom);


--
-- TOC entry 8028 (class 1259 OID 646387)
-- Name: pkp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pkp_geom_geom_idx ON driftweb.pkp USING gist (geom);


--
-- TOC entry 8040 (class 1259 OID 646576)
-- Name: plankevaerk_089_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX plankevaerk_089_geom_geom_idx ON driftweb.plankevaerk_089 USING gist (geom);


--
-- TOC entry 8067 (class 1259 OID 646720)
-- Name: pn_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pn_geom_geom_idx ON driftweb.pn USING gist (geom);


--
-- TOC entry 8034 (class 1259 OID 646556)
-- Name: ps_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ps_geom_geom_idx ON driftweb.ps USING gist (geom);


--
-- TOC entry 8037 (class 1259 OID 646566)
-- Name: pst_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pst_geom_geom_idx ON driftweb.pst USING gist (geom);


--
-- TOC entry 8052 (class 1259 OID 646622)
-- Name: pvl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX pvl_geom_geom_idx ON driftweb.pvl USING gist (geom);


--
-- TOC entry 8103 (class 1259 OID 647960)
-- Name: rb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rb_geom_geom_idx ON driftweb.rb USING gist (geom);


--
-- TOC entry 8115 (class 1259 OID 648154)
-- Name: rbe_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rbe_geom_geom_idx ON driftweb.rbe USING gist (geom);


--
-- TOC entry 8076 (class 1259 OID 646750)
-- Name: rg1_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rg1_geom_geom_idx ON driftweb.rg1 USING gist (geom);


--
-- TOC entry 8079 (class 1259 OID 646923)
-- Name: rg2_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rg2_geom_geom_idx ON driftweb.rg2 USING gist (geom);


--
-- TOC entry 8085 (class 1259 OID 647043)
-- Name: rg3_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rg3_geom_geom_idx ON driftweb.rg3 USING gist (geom);


--
-- TOC entry 8088 (class 1259 OID 647578)
-- Name: rg5_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rg5_geom_geom_idx ON driftweb.rg5 USING gist (geom);


--
-- TOC entry 8073 (class 1259 OID 646740)
-- Name: rg_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rg_geom_geom_idx ON driftweb.rg USING gist (geom);


--
-- TOC entry 8082 (class 1259 OID 647027)
-- Name: rgb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rgb_geom_geom_idx ON driftweb.rgb USING gist (geom);


--
-- TOC entry 8094 (class 1259 OID 647930)
-- Name: rgt_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rgt_geom_geom_idx ON driftweb.rgt USING gist (geom);


--
-- TOC entry 8112 (class 1259 OID 648144)
-- Name: rob_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rob_geom_geom_idx ON driftweb.rob USING gist (geom);


--
-- TOC entry 8124 (class 1259 OID 648189)
-- Name: roersump_098_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX roersump_098_geom_geom_idx ON driftweb.roersump_098 USING gist (geom);


--
-- TOC entry 8097 (class 1259 OID 647940)
-- Name: rpf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rpf_geom_geom_idx ON driftweb.rpf USING gist (geom);


--
-- TOC entry 8100 (class 1259 OID 647950)
-- Name: rpl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rpl_geom_geom_idx ON driftweb.rpl USING gist (geom);


--
-- TOC entry 8091 (class 1259 OID 647626)
-- Name: rskr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rskr_geom_geom_idx ON driftweb.rskr USING gist (geom);


--
-- TOC entry 8121 (class 1259 OID 648179)
-- Name: rv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX rv_geom_geom_idx ON driftweb.rv USING gist (geom);


--
-- TOC entry 8205 (class 1259 OID 648946)
-- Name: s_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX s_geom_geom_idx ON driftweb.s USING gist (geom);


--
-- TOC entry 8157 (class 1259 OID 648466)
-- Name: sa_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sa_geom_geom_idx ON driftweb.sa USING gist (geom);


--
-- TOC entry 8145 (class 1259 OID 648408)
-- Name: sak_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sak_geom_geom_idx ON driftweb.sak USING gist (geom);


--
-- TOC entry 8139 (class 1259 OID 648386)
-- Name: sand_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sand_geom_geom_idx ON driftweb.sand USING gist (geom);


--
-- TOC entry 8133 (class 1259 OID 648366)
-- Name: sasi_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sasi_geom_geom_idx ON driftweb.sasi USING gist (geom);


--
-- TOC entry 8208 (class 1259 OID 649000)
-- Name: sd_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sd_geom_geom_idx ON driftweb.sd USING gist (geom);


--
-- TOC entry 8142 (class 1259 OID 648396)
-- Name: sf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sf_geom_geom_idx ON driftweb.sf USING gist (geom);


--
-- TOC entry 8151 (class 1259 OID 648446)
-- Name: sfb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sfb_geom_geom_idx ON driftweb.sfb USING gist (geom);


--
-- TOC entry 8127 (class 1259 OID 648199)
-- Name: sfs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sfs_geom_geom_idx ON driftweb.sfs USING gist (geom);


--
-- TOC entry 8214 (class 1259 OID 649020)
-- Name: sh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sh_geom_geom_idx ON driftweb.sh USING gist (geom);


--
-- TOC entry 8148 (class 1259 OID 648436)
-- Name: shb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX shb_geom_geom_idx ON driftweb.shb USING gist (geom);


--
-- TOC entry 8154 (class 1259 OID 648456)
-- Name: she_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX she_geom_geom_idx ON driftweb.she USING gist (geom);


--
-- TOC entry 8163 (class 1259 OID 648526)
-- Name: sk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sk_geom_geom_idx ON driftweb.sk USING gist (geom);


--
-- TOC entry 8169 (class 1259 OID 648743)
-- Name: skur_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX skur_geom_geom_idx ON driftweb.skur USING gist (geom);


--
-- TOC entry 8190 (class 1259 OID 648872)
-- Name: sm_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sm_geom_geom_idx ON driftweb.sm USING gist (geom);


--
-- TOC entry 8178 (class 1259 OID 648785)
-- Name: snf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX snf_geom_geom_idx ON driftweb.snf USING gist (geom);


--
-- TOC entry 8181 (class 1259 OID 648804)
-- Name: sns_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sns_geom_geom_idx ON driftweb.sns USING gist (geom);


--
-- TOC entry 8130 (class 1259 OID 648356)
-- Name: sobo_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sobo_geom_geom_idx ON driftweb.sobo USING gist (geom);


--
-- TOC entry 8235 (class 1259 OID 649149)
-- Name: soe_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX soe_geom_geom_idx ON driftweb.soe USING gist (geom);


--
-- TOC entry 8193 (class 1259 OID 648890)
-- Name: sp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sp_geom_geom_idx ON driftweb.sp USING gist (geom);


--
-- TOC entry 8196 (class 1259 OID 648903)
-- Name: spl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX spl_geom_geom_idx ON driftweb.spl USING gist (geom);


--
-- TOC entry 8172 (class 1259 OID 648753)
-- Name: sps_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sps_geom_geom_idx ON driftweb.sps USING gist (geom);


--
-- TOC entry 8184 (class 1259 OID 648829)
-- Name: sr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sr_geom_geom_idx ON driftweb.sr USING gist (geom);


--
-- TOC entry 8175 (class 1259 OID 648763)
-- Name: ss_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ss_geom_geom_idx ON driftweb.ss USING gist (geom);


--
-- TOC entry 8202 (class 1259 OID 648923)
-- Name: st_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX st_geom_geom_idx ON driftweb.st USING gist (geom);


--
-- TOC entry 8217 (class 1259 OID 649030)
-- Name: stk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX stk_geom_geom_idx ON driftweb.stk USING gist (geom);


--
-- TOC entry 8211 (class 1259 OID 649010)
-- Name: stm_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX stm_geom_geom_idx ON driftweb.stm USING gist (geom);


--
-- TOC entry 8220 (class 1259 OID 649040)
-- Name: stsk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX stsk_geom_geom_idx ON driftweb.stsk USING gist (geom);


--
-- TOC entry 8199 (class 1259 OID 648913)
-- Name: sv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sv_geom_geom_idx ON driftweb.sv USING gist (geom);


--
-- TOC entry 8187 (class 1259 OID 648839)
-- Name: svb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX svb_geom_geom_idx ON driftweb.svb USING gist (geom);


--
-- TOC entry 8232 (class 1259 OID 649130)
-- Name: sveller_119_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX sveller_119_geom_geom_idx ON driftweb.sveller_119 USING gist (geom);


--
-- TOC entry 8286 (class 1259 OID 649719)
-- Name: tb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX tb_geom_geom_idx ON driftweb.tb USING gist (geom);


--
-- TOC entry 8244 (class 1259 OID 649331)
-- Name: terraenbygvaerker_121_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX terraenbygvaerker_121_geom_geom_idx ON driftweb.terraenbygvaerker_121 USING gist (geom);


--
-- TOC entry 8250 (class 1259 OID 649354)
-- Name: terraenudstyr_122_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX terraenudstyr_122_geom_geom_idx ON driftweb.terraenudstyr_122 USING gist (geom);


--
-- TOC entry 8253 (class 1259 OID 649364)
-- Name: terraenudstyr_l_123_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX terraenudstyr_l_123_geom_geom_idx ON driftweb.terraenudstyr_l_123 USING gist (geom);


--
-- TOC entry 8280 (class 1259 OID 649547)
-- Name: th_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX th_geom_geom_idx ON driftweb.th USING gist (geom);


--
-- TOC entry 8283 (class 1259 OID 649579)
-- Name: tr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX tr_geom_geom_idx ON driftweb.tr USING gist (geom);


--
-- TOC entry 8247 (class 1259 OID 649344)
-- Name: trm_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX trm_geom_geom_idx ON driftweb.trm USING gist (geom);


--
-- TOC entry 8271 (class 1259 OID 649511)
-- Name: trpb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX trpb_geom_geom_idx ON driftweb.trpb USING gist (geom);


--
-- TOC entry 8274 (class 1259 OID 649521)
-- Name: trpf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX trpf_geom_geom_idx ON driftweb.trpf USING gist (geom);


--
-- TOC entry 8277 (class 1259 OID 649534)
-- Name: trpl_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX trpl_geom_geom_idx ON driftweb.trpl USING gist (geom);


--
-- TOC entry 8289 (class 1259 OID 649729)
-- Name: trr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX trr_geom_geom_idx ON driftweb.trr USING gist (geom);


--
-- TOC entry 8295 (class 1259 OID 649813)
-- Name: trte_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX trte_geom_geom_idx ON driftweb.trte USING gist (geom);


--
-- TOC entry 8268 (class 1259 OID 649501)
-- Name: ts_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX ts_geom_geom_idx ON driftweb.ts USING gist (geom);


--
-- TOC entry 8292 (class 1259 OID 649803)
-- Name: tst_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX tst_geom_geom_idx ON driftweb.tst USING gist (geom);


--
-- TOC entry 8256 (class 1259 OID 649374)
-- Name: tu_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX tu_geom_geom_idx ON driftweb.tu USING gist (geom);


--
-- TOC entry 8316 (class 1259 OID 649933)
-- Name: v2s_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX v2s_geom_geom_idx ON driftweb.v2s USING gist (geom);


--
-- TOC entry 8319 (class 1259 OID 650065)
-- Name: v2smr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX v2smr_geom_geom_idx ON driftweb.v2smr USING gist (geom);


--
-- TOC entry 8322 (class 1259 OID 650077)
-- Name: v4s_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX v4s_geom_geom_idx ON driftweb.v4s USING gist (geom);


--
-- TOC entry 8325 (class 1259 OID 650087)
-- Name: v4smr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX v4smr_geom_geom_idx ON driftweb.v4smr USING gist (geom);


--
-- TOC entry 8310 (class 1259 OID 649912)
-- Name: vandloeb_137_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vandloeb_137_geom_geom_idx ON driftweb.vandloeb_137 USING gist (geom);


--
-- TOC entry 8328 (class 1259 OID 650121)
-- Name: vbf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vbf_geom_geom_idx ON driftweb.vbf USING gist (geom);


--
-- TOC entry 7734 (class 1259 OID 641202)
-- Name: vfdldobbelt_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vfdldobbelt_geom_geom_idx ON driftweb.vfdldobbelt USING gist (geom);


--
-- TOC entry 8331 (class 1259 OID 650131)
-- Name: vns_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vns_geom_geom_idx ON driftweb.vns USING gist (geom);


--
-- TOC entry 8313 (class 1259 OID 649922)
-- Name: vr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vr_geom_geom_idx ON driftweb.vr USING gist (geom);


--
-- TOC entry 8337 (class 1259 OID 650151)
-- Name: vs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vs_geom_geom_idx ON driftweb.vs USING gist (geom);


--
-- TOC entry 8361 (class 1259 OID 650276)
-- Name: vtg_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vtg_geom_geom_idx ON driftweb.vtg USING gist (geom);


--
-- TOC entry 7518 (class 1259 OID 637172)
-- Name: vvk1_2_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vvk1_2_geom_geom_idx ON driftweb.vvk1_2 USING gist (geom);


--
-- TOC entry 7521 (class 1259 OID 637182)
-- Name: vvk1_2m_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vvk1_2m_geom_geom_idx ON driftweb.vvk1_2m USING gist (geom);


--
-- TOC entry 7524 (class 1259 OID 637192)
-- Name: vvk1_4_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vvk1_4_geom_geom_idx ON driftweb.vvk1_4 USING gist (geom);


--
-- TOC entry 7527 (class 1259 OID 637202)
-- Name: vvk1_4m_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vvk1_4m_geom_geom_idx ON driftweb.vvk1_4m USING gist (geom);


--
-- TOC entry 8358 (class 1259 OID 650266)
-- Name: vvk2f_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vvk2f_geom_geom_idx ON driftweb.vvk2f USING gist (geom);


--
-- TOC entry 8025 (class 1259 OID 646377)
-- Name: vvk3p_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX vvk3p_geom_geom_idx ON driftweb.vvk3p USING gist (geom);


--
-- TOC entry 7584 (class 1259 OID 637944)
-- Name: workarea_bb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_bb_geom_geom_idx ON driftweb.workarea_bb USING gist (geom);


--
-- TOC entry 7551 (class 1259 OID 637638)
-- Name: workarea_bi_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_bi_geom_geom_idx ON driftweb.workarea_bi USING gist (geom);


--
-- TOC entry 7629 (class 1259 OID 639298)
-- Name: workarea_bls_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_bls_geom_geom_idx ON driftweb.workarea_bls USING gist (geom);


--
-- TOC entry 7554 (class 1259 OID 637651)
-- Name: workarea_bv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_bv_geom_geom_idx ON driftweb.workarea_bv USING gist (geom);


--
-- TOC entry 7659 (class 1259 OID 640150)
-- Name: workarea_di_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_di_geom_geom_idx ON driftweb.workarea_di USING gist (geom);


--
-- TOC entry 8334 (class 1259 OID 650141)
-- Name: workarea_evr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_evr_geom_geom_idx ON driftweb.workarea_evr USING gist (geom);


--
-- TOC entry 7680 (class 1259 OID 640241)
-- Name: workarea_fejcs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fejcs_geom_geom_idx ON driftweb.workarea_fejcs USING gist (geom);


--
-- TOC entry 7683 (class 1259 OID 640259)
-- Name: workarea_fejf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fejf_geom_geom_idx ON driftweb.workarea_fejf USING gist (geom);


--
-- TOC entry 7686 (class 1259 OID 640273)
-- Name: workarea_fejv1_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fejv1_geom_geom_idx ON driftweb.workarea_fejv1 USING gist (geom);


--
-- TOC entry 7689 (class 1259 OID 640287)
-- Name: workarea_fejv2_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fejv2_geom_geom_idx ON driftweb.workarea_fejv2 USING gist (geom);


--
-- TOC entry 7677 (class 1259 OID 640231)
-- Name: workarea_fm_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fm_geom_geom_idx ON driftweb.workarea_fm USING gist (geom);


--
-- TOC entry 7674 (class 1259 OID 640221)
-- Name: workarea_fr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fr_geom_geom_idx ON driftweb.workarea_fr USING gist (geom);


--
-- TOC entry 7710 (class 1259 OID 641002)
-- Name: workarea_fs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_fs_geom_geom_idx ON driftweb.workarea_fs USING gist (geom);


--
-- TOC entry 7671 (class 1259 OID 640211)
-- Name: workarea_ful_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ful_geom_geom_idx ON driftweb.workarea_ful USING gist (geom);


--
-- TOC entry 7797 (class 1259 OID 642961)
-- Name: workarea_gv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_gv_geom_geom_idx ON driftweb.workarea_gv USING gist (geom);


--
-- TOC entry 7824 (class 1259 OID 643395)
-- Name: workarea_is_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_is_geom_geom_idx ON driftweb.workarea_is USING gist (geom);


--
-- TOC entry 7863 (class 1259 OID 644477)
-- Name: workarea_kbb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbb_geom_geom_idx ON driftweb.workarea_kbb USING gist (geom);


--
-- TOC entry 7866 (class 1259 OID 644496)
-- Name: workarea_kbbv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbbv_geom_geom_idx ON driftweb.workarea_kbbv USING gist (geom);


--
-- TOC entry 7869 (class 1259 OID 644530)
-- Name: workarea_kbc_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbc_geom_geom_idx ON driftweb.workarea_kbc USING gist (geom);


--
-- TOC entry 7872 (class 1259 OID 644550)
-- Name: workarea_kbi_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbi_geom_geom_idx ON driftweb.workarea_kbi USING gist (geom);


--
-- TOC entry 7875 (class 1259 OID 644566)
-- Name: workarea_kbn_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbn_geom_geom_idx ON driftweb.workarea_kbn USING gist (geom);


--
-- TOC entry 7878 (class 1259 OID 644637)
-- Name: workarea_kbr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbr_geom_geom_idx ON driftweb.workarea_kbr USING gist (geom);


--
-- TOC entry 7881 (class 1259 OID 644647)
-- Name: workarea_kbs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kbs_geom_geom_idx ON driftweb.workarea_kbs USING gist (geom);


--
-- TOC entry 7884 (class 1259 OID 644717)
-- Name: workarea_keb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_keb_geom_geom_idx ON driftweb.workarea_keb USING gist (geom);


--
-- TOC entry 7887 (class 1259 OID 644775)
-- Name: workarea_klp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_klp_geom_geom_idx ON driftweb.workarea_klp USING gist (geom);


--
-- TOC entry 7893 (class 1259 OID 644851)
-- Name: workarea_km_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_km_geom_geom_idx ON driftweb.workarea_km USING gist (geom);


--
-- TOC entry 7896 (class 1259 OID 644924)
-- Name: workarea_kmb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kmb_geom_geom_idx ON driftweb.workarea_kmb USING gist (geom);


--
-- TOC entry 7890 (class 1259 OID 644841)
-- Name: workarea_kms_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kms_geom_geom_idx ON driftweb.workarea_kms USING gist (geom);


--
-- TOC entry 7899 (class 1259 OID 644972)
-- Name: workarea_ks_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ks_geom_geom_idx ON driftweb.workarea_ks USING gist (geom);


--
-- TOC entry 7902 (class 1259 OID 645030)
-- Name: workarea_ksb_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ksb_geom_geom_idx ON driftweb.workarea_ksb USING gist (geom);


--
-- TOC entry 7905 (class 1259 OID 645081)
-- Name: workarea_kss_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_kss_geom_geom_idx ON driftweb.workarea_kss USING gist (geom);


--
-- TOC entry 7956 (class 1259 OID 645747)
-- Name: workarea_lfu_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_lfu_geom_geom_idx ON driftweb.workarea_lfu USING gist (geom);


--
-- TOC entry 7929 (class 1259 OID 645211)
-- Name: workarea_lr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_lr_geom_geom_idx ON driftweb.workarea_lr USING gist (geom);


--
-- TOC entry 7968 (class 1259 OID 645832)
-- Name: workarea_mh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_mh_geom_geom_idx ON driftweb.workarea_mh USING gist (geom);


--
-- TOC entry 7995 (class 1259 OID 646079)
-- Name: workarea_ngr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ngr_geom_geom_idx ON driftweb.workarea_ngr USING gist (geom);


--
-- TOC entry 7986 (class 1259 OID 646040)
-- Name: workarea_nh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_nh_geom_geom_idx ON driftweb.workarea_nh USING gist (geom);


--
-- TOC entry 7992 (class 1259 OID 646069)
-- Name: workarea_no_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_no_geom_geom_idx ON driftweb.workarea_no USING gist (geom);


--
-- TOC entry 7998 (class 1259 OID 646090)
-- Name: workarea_nog_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_nog_geom_geom_idx ON driftweb.workarea_nog USING gist (geom);


--
-- TOC entry 8004 (class 1259 OID 646139)
-- Name: workarea_nogr_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_nogr_geom_geom_idx ON driftweb.workarea_nogr USING gist (geom);


--
-- TOC entry 7989 (class 1259 OID 646059)
-- Name: workarea_nohd1_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_nohd1_geom_geom_idx ON driftweb.workarea_nohd1 USING gist (geom);


--
-- TOC entry 8001 (class 1259 OID 646108)
-- Name: workarea_nohd_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_nohd_geom_geom_idx ON driftweb.workarea_nohd USING gist (geom);


--
-- TOC entry 8376 (class 1259 OID 650331)
-- Name: workarea_oi_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_oi_geom_geom_idx ON driftweb.workarea_oi USING gist (geom);


--
-- TOC entry 8046 (class 1259 OID 646602)
-- Name: workarea_pc_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_pc_geom_geom_idx ON driftweb.workarea_pc USING gist (geom);


--
-- TOC entry 8049 (class 1259 OID 646612)
-- Name: workarea_pcx_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_pcx_geom_geom_idx ON driftweb.workarea_pcx USING gist (geom);


--
-- TOC entry 8022 (class 1259 OID 646341)
-- Name: workarea_pk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_pk_geom_geom_idx ON driftweb.workarea_pk USING gist (geom);


--
-- TOC entry 8106 (class 1259 OID 647990)
-- Name: workarea_rv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_rv_geom_geom_idx ON driftweb.workarea_rv USING gist (geom);


--
-- TOC entry 8109 (class 1259 OID 648066)
-- Name: workarea_rvms_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_rvms_geom_geom_idx ON driftweb.workarea_rvms USING gist (geom);


--
-- TOC entry 8118 (class 1259 OID 648164)
-- Name: workarea_rw_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_rw_geom_geom_idx ON driftweb.workarea_rw USING gist (geom);


--
-- TOC entry 8166 (class 1259 OID 648733)
-- Name: workarea_sc_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_sc_geom_geom_idx ON driftweb.workarea_sc USING gist (geom);


--
-- TOC entry 8160 (class 1259 OID 648496)
-- Name: workarea_sk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_sk_geom_geom_idx ON driftweb.workarea_sk USING gist (geom);


--
-- TOC entry 8136 (class 1259 OID 648376)
-- Name: workarea_smhd_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_smhd_geom_geom_idx ON driftweb.workarea_smhd USING gist (geom);


--
-- TOC entry 8226 (class 1259 OID 649110)
-- Name: workarea_sum1_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_sum1_geom_geom_idx ON driftweb.workarea_sum1 USING gist (geom);


--
-- TOC entry 8223 (class 1259 OID 649053)
-- Name: workarea_sum_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_sum_geom_geom_idx ON driftweb.workarea_sum USING gist (geom);


--
-- TOC entry 8229 (class 1259 OID 649120)
-- Name: workarea_sumo_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_sumo_geom_geom_idx ON driftweb.workarea_sumo USING gist (geom);


--
-- TOC entry 8262 (class 1259 OID 649460)
-- Name: workarea_to2_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_to2_geom_geom_idx ON driftweb.workarea_to2 USING gist (geom);


--
-- TOC entry 8259 (class 1259 OID 649392)
-- Name: workarea_to_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_to_geom_geom_idx ON driftweb.workarea_to USING gist (geom);


--
-- TOC entry 8265 (class 1259 OID 649470)
-- Name: workarea_tp_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_tp_geom_geom_idx ON driftweb.workarea_tp USING gist (geom);


--
-- TOC entry 8238 (class 1259 OID 649271)
-- Name: workarea_tu_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_tu_geom_geom_idx ON driftweb.workarea_tu USING gist (geom);


--
-- TOC entry 8241 (class 1259 OID 649284)
-- Name: workarea_tuvs_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_tuvs_geom_geom_idx ON driftweb.workarea_tuvs USING gist (geom);


--
-- TOC entry 8298 (class 1259 OID 649832)
-- Name: workarea_ub_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ub_geom_geom_idx ON driftweb.workarea_ub USING gist (geom);


--
-- TOC entry 8307 (class 1259 OID 649865)
-- Name: workarea_ubf_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ubf_geom_geom_idx ON driftweb.workarea_ubf USING gist (geom);


--
-- TOC entry 8301 (class 1259 OID 649842)
-- Name: workarea_ufk_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_ufk_geom_geom_idx ON driftweb.workarea_ufk USING gist (geom);


--
-- TOC entry 8304 (class 1259 OID 649855)
-- Name: workarea_uhv_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_uhv_geom_geom_idx ON driftweb.workarea_uhv USING gist (geom);


--
-- TOC entry 8340 (class 1259 OID 650161)
-- Name: workarea_vdih_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_vdih_geom_geom_idx ON driftweb.workarea_vdih USING gist (geom);


--
-- TOC entry 8343 (class 1259 OID 650187)
-- Name: workarea_veuh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_veuh_geom_geom_idx ON driftweb.workarea_veuh USING gist (geom);


--
-- TOC entry 8349 (class 1259 OID 650207)
-- Name: workarea_vsoi_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_vsoi_geom_geom_idx ON driftweb.workarea_vsoi USING gist (geom);


--
-- TOC entry 8346 (class 1259 OID 650197)
-- Name: workarea_vsoih_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_vsoih_geom_geom_idx ON driftweb.workarea_vsoih USING gist (geom);


--
-- TOC entry 8355 (class 1259 OID 650256)
-- Name: workarea_vt_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_vt_geom_geom_idx ON driftweb.workarea_vt USING gist (geom);


--
-- TOC entry 8352 (class 1259 OID 650246)
-- Name: workarea_vvh_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workarea_vvh_geom_geom_idx ON driftweb.workarea_vvh USING gist (geom);


--
-- TOC entry 7515 (class 1259 OID 635766)
-- Name: workareas_geom_geom_idx; Type: INDEX; Schema: driftweb; Owner: -
--

CREATE INDEX workareas_geom_geom_idx ON driftweb.workareas USING gist (geom);


-- Completed on 2024-12-17 12:45:08

--
-- PostgreSQL database dump complete
--

