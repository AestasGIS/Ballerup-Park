-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 1.1.3
-- PostgreSQL version: 16.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: ballerup_4 | type: DATABASE --
-- DROP DATABASE IF EXISTS ballerup_4;
CREATE DATABASE ballerup_4
	ENCODING = 'UTF8'
	LC_COLLATE = 'English_Denmark.1252'
	LC_CTYPE = 'English_Denmark.1252'
	TABLESPACE = pg_default
	OWNER = postgres;
-- ddl-end --


-- object: elementer | type: SCHEMA --
-- DROP SCHEMA IF EXISTS elementer CASCADE;
CREATE SCHEMA elementer;
-- ddl-end --
ALTER SCHEMA elementer OWNER TO postgres;
-- ddl-end --

-- object: kontakter | type: SCHEMA --
-- DROP SCHEMA IF EXISTS kontakter CASCADE;
CREATE SCHEMA kontakter;
-- ddl-end --
ALTER SCHEMA kontakter OWNER TO postgres;
-- ddl-end --

-- object: tilsyn | type: SCHEMA --
-- DROP SCHEMA IF EXISTS tilsyn CASCADE;
CREATE SCHEMA tilsyn;
-- ddl-end --
ALTER SCHEMA tilsyn OWNER TO postgres;
-- ddl-end --

-- object: prissaetning | type: SCHEMA --
-- DROP SCHEMA IF EXISTS prissaetning CASCADE;
CREATE SCHEMA prissaetning;
-- ddl-end --
ALTER SCHEMA prissaetning OWNER TO postgres;
-- ddl-end --

-- object: aktiviteter | type: SCHEMA --
-- DROP SCHEMA IF EXISTS aktiviteter CASCADE;
CREATE SCHEMA aktiviteter;
-- ddl-end --
ALTER SCHEMA aktiviteter OWNER TO postgres;
-- ddl-end --

-- object: omraader | type: SCHEMA --
-- DROP SCHEMA IF EXISTS omraader CASCADE;
CREATE SCHEMA omraader;
-- ddl-end --
ALTER SCHEMA omraader OWNER TO postgres;
-- ddl-end --

SET search_path TO pg_catalog,public,elementer,kontakter,tilsyn,prissaetning,aktiviteter,omraader;
-- ddl-end --

-- object: postgis | type: EXTENSION --
-- DROP EXTENSION IF EXISTS postgis CASCADE;
CREATE EXTENSION postgis
WITH SCHEMA public
VERSION '3.4.0';
-- ddl-end --
COMMENT ON EXTENSION postgis IS E'PostGIS geometry and geography spatial types and functions';
-- ddl-end --

-- -- object: public.spheroid | type: TYPE --
-- -- DROP TYPE IF EXISTS public.spheroid CASCADE;
-- CREATE TYPE public.spheroid AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.geometry | type: TYPE --
-- -- DROP TYPE IF EXISTS public.geometry CASCADE;
-- CREATE TYPE public.geometry AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.box3d | type: TYPE --
-- -- DROP TYPE IF EXISTS public.box3d CASCADE;
-- CREATE TYPE public.box3d AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.box2d | type: TYPE --
-- -- DROP TYPE IF EXISTS public.box2d CASCADE;
-- CREATE TYPE public.box2d AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.box2df | type: TYPE --
-- -- DROP TYPE IF EXISTS public.box2df CASCADE;
-- CREATE TYPE public.box2df AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.gidx | type: TYPE --
-- -- DROP TYPE IF EXISTS public.gidx CASCADE;
-- CREATE TYPE public.gidx AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.geometry_dump | type: TYPE --
-- -- DROP TYPE IF EXISTS public.geometry_dump CASCADE;
-- CREATE TYPE public.geometry_dump AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.valid_detail | type: TYPE --
-- -- DROP TYPE IF EXISTS public.valid_detail CASCADE;
-- CREATE TYPE public.valid_detail AS
-- ENUM ();
-- -- ddl-end --
-- 
-- -- object: public.geography | type: TYPE --
-- -- DROP TYPE IF EXISTS public.geography CASCADE;
-- CREATE TYPE public.geography AS
-- ENUM ();
-- -- ddl-end --
-- 
-- object: elementer.elementgruppe_typer | type: TABLE --
-- DROP TABLE IF EXISTS elementer.elementgruppe_typer CASCADE;
CREATE TABLE elementer.elementgruppe_typer (
	gruppe_navn character varying NOT NULL,
	basis_type character varying(1) NOT NULL,
	passiv boolean NOT NULL DEFAULT false,
	beskrivelse character varying,
	CONSTRAINT element_gruppetyper_pk PRIMARY KEY (gruppe_navn,basis_type)
);
-- ddl-end --
ALTER TABLE elementer.elementgruppe_typer OWNER TO postgres;
-- ddl-end --

-- object: elementer.element_typer | type: TABLE --
-- DROP TABLE IF EXISTS elementer.element_typer CASCADE;
CREATE TABLE elementer.element_typer (
	gruppe_navn character varying NOT NULL,
	type_navn character varying NOT NULL,
	basis_type character varying(1) NOT NULL,
	passiv boolean NOT NULL DEFAULT false,
	beskrivelse character varying,
	CONSTRAINT element_typer_pk PRIMARY KEY (gruppe_navn,type_navn,basis_type)
);
-- ddl-end --
ALTER TABLE elementer.element_typer OWNER TO postgres;
-- ddl-end --

-- object: elementer.elementer_flader | type: TABLE --
-- DROP TABLE IF EXISTS elementer.elementer_flader CASCADE;
CREATE TABLE elementer.elementer_flader (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	basis_type character varying(1) NOT NULL DEFAULT 'f'::character(1),
	element_gruppe character varying NOT NULL,
	element_type character varying NOT NULL,
	areal double precision,
	omkreds double precision,
	hoejde double precision,
	bredde double precision,
	ekstra jsonb,
	geom public.geometry NOT NULL,
	CONSTRAINT elementer_flader_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE elementer.elementer_flader OWNER TO postgres;
-- ddl-end --

-- object: elementer.elementer_linjer | type: TABLE --
-- DROP TABLE IF EXISTS elementer.elementer_linjer CASCADE;
CREATE TABLE elementer.elementer_linjer (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	basis_type character varying(1) NOT NULL DEFAULT 'l'::character(1),
	element_gruppe character varying NOT NULL,
	element_type character varying NOT NULL,
	laengde double precision,
	hoejde double precision,
	bredde double precision,
	ekstra jsonb,
	geom geometry(MULTILINESTRING, 25832) NOT NULL,
	CONSTRAINT elementer_linjer_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE elementer.elementer_linjer OWNER TO postgres;
-- ddl-end --

-- object: elementer.elementer_punkter | type: TABLE --
-- DROP TABLE IF EXISTS elementer.elementer_punkter CASCADE;
CREATE TABLE elementer.elementer_punkter (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	basis_type character varying(1) NOT NULL DEFAULT 'p'::character(1),
	element_gruppe character varying NOT NULL,
	element_type character varying NOT NULL,
	hoejde double precision,
	bredde double precision,
	ekstra jsonb,
	geom geometry(POINT, 25832) NOT NULL,
	CONSTRAINT elementer_punkter_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE elementer.elementer_punkter OWNER TO postgres;
-- ddl-end --

-- object: kontakter.kontakter | type: TABLE --
-- DROP TABLE IF EXISTS kontakter.kontakter CASCADE;
CREATE TABLE kontakter.kontakter (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	navn character varying NOT NULL,
	adresse character varying,
	postnr character varying,
	postby character varying,
	telefon_nummer character varying,
	mail_adresse character varying,
	passiv boolean NOT NULL DEFAULT false,
	kontakt_type character varying,
	CONSTRAINT kontakter_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE kontakter.kontakter OWNER TO postgres;
-- ddl-end --

-- object: omraader.omraade_typer | type: TABLE --
-- DROP TABLE IF EXISTS omraader.omraade_typer CASCADE;
CREATE TABLE omraader.omraade_typer (
	type_navn character varying NOT NULL,
	passiv boolean NOT NULL DEFAULT false,
	beskrivelse character varying,
	CONSTRAINT omraade_typer_pk PRIMARY KEY (type_navn)
);
-- ddl-end --
ALTER TABLE omraader.omraade_typer OWNER TO postgres;
-- ddl-end --

-- object: omraader.arbejds_omraader | type: TABLE --
-- DROP TABLE IF EXISTS omraader.arbejds_omraader CASCADE;
CREATE TABLE omraader.arbejds_omraader (
	omraade_navn character varying NOT NULL,
	omraade_type character varying NOT NULL,
	passiv boolean NOT NULL DEFAULT false,
	beskrivelse character varying,
	geom geometry(MULTIPOLYGON, 25832),
	CONSTRAINT arbejds_omraader_pk PRIMARY KEY (omraade_navn)
);
-- ddl-end --
ALTER TABLE omraader.arbejds_omraader OWNER TO postgres;
-- ddl-end --

-- object: prissaetning.entreprise_typer | type: TABLE --
-- DROP TABLE IF EXISTS prissaetning.entreprise_typer CASCADE;
CREATE TABLE prissaetning.entreprise_typer (
	entreprise_type character varying NOT NULL,
	passiv boolean NOT NULL DEFAULT false,
	beskrivelse character varying,
	CONSTRAINT entreprise_typer_pk PRIMARY KEY (entreprise_type)
);
-- ddl-end --
ALTER TABLE prissaetning.entreprise_typer OWNER TO postgres;
-- ddl-end --

-- object: prissaetning.entrepriser | type: TABLE --
-- DROP TABLE IF EXISTS prissaetning.entrepriser CASCADE;
CREATE TABLE prissaetning.entrepriser (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	kontakt_id uuid NOT NULL,
	entreprise_type character varying NOT NULL,
	periode_start date NOT NULL,
	periode_slut date NOT NULL,
	CONSTRAINT entrepriser_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE prissaetning.entrepriser OWNER TO postgres;
-- ddl-end --

-- object: aktiviteter.aktivitets_typer | type: TABLE --
-- DROP TABLE IF EXISTS aktiviteter.aktivitets_typer CASCADE;
CREATE TABLE aktiviteter.aktivitets_typer (
	gruppe_navn character varying NOT NULL,
	basis_type character varying(1) NOT NULL,
	type_navn character varying NOT NULL,
	passiv boolean NOT NULL DEFAULT false,
	beskrivelse character varying,
	CONSTRAINT aktivitets_typer_pk PRIMARY KEY (gruppe_navn,type_navn,basis_type)
);
-- ddl-end --
ALTER TABLE aktiviteter.aktivitets_typer OWNER TO postgres;
-- ddl-end --

-- object: prissaetning.aktivitets_priser | type: TABLE --
-- DROP TABLE IF EXISTS prissaetning.aktivitets_priser CASCADE;
CREATE TABLE prissaetning.aktivitets_priser (
	gruppe_navn character varying NOT NULL,
	basis_type character varying(1) NOT NULL,
	type_navn character varying NOT NULL,
	entreprise_id uuid NOT NULL,
	enhedspris numeric(9,2) NOT NULL,
	CONSTRAINT aktivitets_priser_pk PRIMARY KEY (gruppe_navn,type_navn,basis_type,entreprise_id)
);
-- ddl-end --
ALTER TABLE prissaetning.aktivitets_priser OWNER TO postgres;
-- ddl-end --

-- object: prissaetning.underentreprise | type: TABLE --
-- DROP TABLE IF EXISTS prissaetning.underentreprise CASCADE;
CREATE TABLE prissaetning.underentreprise (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	entreprise_id uuid NOT NULL,
	tilsyn_kontakt_id uuid NOT NULL,
	omraade_navn character varying,
	CONSTRAINT aktivitetsgruppe_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE prissaetning.underentreprise OWNER TO postgres;
-- ddl-end --

-- object: elementer.element_aktiviteter | type: TABLE --
-- DROP TABLE IF EXISTS elementer.element_aktiviteter CASCADE;
CREATE TABLE elementer.element_aktiviteter (
	id uuid NOT NULL DEFAULT gen_random_uuid(),
	gruppe_navn character varying NOT NULL,
	basis_type character varying(1) NOT NULL,
	type_navn character varying NOT NULL,
	element_flade_id uuid,
	element_linje_id uuid,
	element_punkt_id uuid,
	gruppe_id uuid NOT NULL,
	CONSTRAINT aktiviteter_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE elementer.element_aktiviteter OWNER TO postgres;
-- ddl-end --

-- object: kontakter.kontakt_typer | type: TABLE --
-- DROP TABLE IF EXISTS kontakter.kontakt_typer CASCADE;
CREATE TABLE kontakter.kontakt_typer (
	kontakt_type character varying NOT NULL,
	CONSTRAINT kontakt_typer_pk PRIMARY KEY (kontakt_type)
);
-- ddl-end --
ALTER TABLE kontakter.kontakt_typer OWNER TO postgres;
-- ddl-end --

-- object: element_typer_elementgruppe_typer_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.element_typer DROP CONSTRAINT IF EXISTS element_typer_elementgruppe_typer_fk CASCADE;
ALTER TABLE elementer.element_typer ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (gruppe_navn,basis_type)
REFERENCES elementer.elementgruppe_typer (gruppe_navn,basis_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: elementer_flader_element_typer_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.elementer_flader DROP CONSTRAINT IF EXISTS elementer_flader_element_typer_fk CASCADE;
ALTER TABLE elementer.elementer_flader ADD CONSTRAINT elementer_flader_element_typer_fk FOREIGN KEY (element_gruppe,element_type,basis_type)
REFERENCES elementer.element_typer (gruppe_navn,type_navn,basis_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: elementer_linjer_element_typer_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.elementer_linjer DROP CONSTRAINT IF EXISTS elementer_linjer_element_typer_fk CASCADE;
ALTER TABLE elementer.elementer_linjer ADD CONSTRAINT elementer_linjer_element_typer_fk FOREIGN KEY (element_gruppe,element_type,basis_type)
REFERENCES elementer.element_typer (gruppe_navn,type_navn,basis_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: elementer_punkter_element_typer_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.elementer_punkter DROP CONSTRAINT IF EXISTS elementer_punkter_element_typer_fk CASCADE;
ALTER TABLE elementer.elementer_punkter ADD CONSTRAINT elementer_punkter_element_typer_fk FOREIGN KEY (element_gruppe,element_type,basis_type)
REFERENCES elementer.element_typer (gruppe_navn,type_navn,basis_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: kontakter_kontakt_typer | type: CONSTRAINT --
-- ALTER TABLE kontakter.kontakter DROP CONSTRAINT IF EXISTS kontakter_kontakt_typer CASCADE;
ALTER TABLE kontakter.kontakter ADD CONSTRAINT kontakter_kontakt_typer FOREIGN KEY (kontakt_type)
REFERENCES kontakter.kontakt_typer (kontakt_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: arbejds_omraader_omraade_typer_fk | type: CONSTRAINT --
-- ALTER TABLE omraader.arbejds_omraader DROP CONSTRAINT IF EXISTS arbejds_omraader_omraade_typer_fk CASCADE;
ALTER TABLE omraader.arbejds_omraader ADD CONSTRAINT arbejds_omraader_omraade_typer_fk FOREIGN KEY (omraade_type)
REFERENCES omraader.omraade_typer (type_navn) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: entrepriser_entreprise_typer_fk | type: CONSTRAINT --
-- ALTER TABLE prissaetning.entrepriser DROP CONSTRAINT IF EXISTS entrepriser_entreprise_typer_fk CASCADE;
ALTER TABLE prissaetning.entrepriser ADD CONSTRAINT entrepriser_entreprise_typer_fk FOREIGN KEY (entreprise_type)
REFERENCES prissaetning.entreprise_typer (entreprise_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: entrepriser_kontakter_fk | type: CONSTRAINT --
-- ALTER TABLE prissaetning.entrepriser DROP CONSTRAINT IF EXISTS entrepriser_kontakter_fk CASCADE;
ALTER TABLE prissaetning.entrepriser ADD CONSTRAINT entrepriser_kontakter_fk FOREIGN KEY (kontakt_id)
REFERENCES kontakter.kontakter (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: aktiviteter_element_typer | type: CONSTRAINT --
-- ALTER TABLE aktiviteter.aktivitets_typer DROP CONSTRAINT IF EXISTS aktiviteter_element_typer CASCADE;
ALTER TABLE aktiviteter.aktivitets_typer ADD CONSTRAINT aktiviteter_element_typer FOREIGN KEY (gruppe_navn,basis_type,type_navn)
REFERENCES elementer.element_typer (gruppe_navn,basis_type,type_navn) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: aktivitets_priser_aktivitets_typer_fk | type: CONSTRAINT --
-- ALTER TABLE prissaetning.aktivitets_priser DROP CONSTRAINT IF EXISTS aktivitets_priser_aktivitets_typer_fk CASCADE;
ALTER TABLE prissaetning.aktivitets_priser ADD CONSTRAINT aktivitets_priser_aktivitets_typer_fk FOREIGN KEY (gruppe_navn,type_navn,basis_type)
REFERENCES aktiviteter.aktivitets_typer (gruppe_navn,type_navn,basis_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: aktivitets_priser_entrepriser_fk | type: CONSTRAINT --
-- ALTER TABLE prissaetning.aktivitets_priser DROP CONSTRAINT IF EXISTS aktivitets_priser_entrepriser_fk CASCADE;
ALTER TABLE prissaetning.aktivitets_priser ADD CONSTRAINT aktivitets_priser_entrepriser_fk FOREIGN KEY (entreprise_id)
REFERENCES prissaetning.entrepriser (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: aktivitetsgruppe_entrepriser_fk | type: CONSTRAINT --
-- ALTER TABLE prissaetning.underentreprise DROP CONSTRAINT IF EXISTS aktivitetsgruppe_entrepriser_fk CASCADE;
ALTER TABLE prissaetning.underentreprise ADD CONSTRAINT aktivitetsgruppe_entrepriser_fk FOREIGN KEY (entreprise_id)
REFERENCES prissaetning.entrepriser (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: aktivitetsgruppe_kontakter_fk | type: CONSTRAINT --
-- ALTER TABLE prissaetning.underentreprise DROP CONSTRAINT IF EXISTS aktivitetsgruppe_kontakter_fk CASCADE;
ALTER TABLE prissaetning.underentreprise ADD CONSTRAINT aktivitetsgruppe_kontakter_fk FOREIGN KEY (tilsyn_kontakt_id)
REFERENCES kontakter.kontakter (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: aktivitetsgruppe_arbejds_omraader | type: CONSTRAINT --
-- ALTER TABLE prissaetning.underentreprise DROP CONSTRAINT IF EXISTS aktivitetsgruppe_arbejds_omraader CASCADE;
ALTER TABLE prissaetning.underentreprise ADD CONSTRAINT aktivitetsgruppe_arbejds_omraader FOREIGN KEY (omraade_navn)
REFERENCES omraader.arbejds_omraader (omraade_navn) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: element_aktiviteter_aktivitets_typer_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.element_aktiviteter DROP CONSTRAINT IF EXISTS element_aktiviteter_aktivitets_typer_fk CASCADE;
ALTER TABLE elementer.element_aktiviteter ADD CONSTRAINT element_aktiviteter_aktivitets_typer_fk FOREIGN KEY (gruppe_navn,type_navn,basis_type)
REFERENCES aktiviteter.aktivitets_typer (gruppe_navn,type_navn,basis_type) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: element_aktiviteter_aktivitets_grupper_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.element_aktiviteter DROP CONSTRAINT IF EXISTS element_aktiviteter_aktivitets_grupper_fk CASCADE;
ALTER TABLE elementer.element_aktiviteter ADD CONSTRAINT element_aktiviteter_aktivitets_grupper_fk FOREIGN KEY (gruppe_id)
REFERENCES prissaetning.underentreprise (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: element_aktiviteter_elementer_flader_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.element_aktiviteter DROP CONSTRAINT IF EXISTS element_aktiviteter_elementer_flader_fk CASCADE;
ALTER TABLE elementer.element_aktiviteter ADD CONSTRAINT element_aktiviteter_elementer_flader_fk FOREIGN KEY (element_flade_id)
REFERENCES elementer.elementer_flader (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: element_aktiviteter_elementer_linjer_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.element_aktiviteter DROP CONSTRAINT IF EXISTS element_aktiviteter_elementer_linjer_fk CASCADE;
ALTER TABLE elementer.element_aktiviteter ADD CONSTRAINT element_aktiviteter_elementer_linjer_fk FOREIGN KEY (element_linje_id)
REFERENCES elementer.elementer_linjer (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: element_aktiviteter_elementer_punkter_fk | type: CONSTRAINT --
-- ALTER TABLE elementer.element_aktiviteter DROP CONSTRAINT IF EXISTS element_aktiviteter_elementer_punkter_fk CASCADE;
ALTER TABLE elementer.element_aktiviteter ADD CONSTRAINT element_aktiviteter_elementer_punkter_fk FOREIGN KEY (element_punkt_id)
REFERENCES elementer.elementer_punkter (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


