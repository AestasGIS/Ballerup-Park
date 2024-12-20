
CREATE EXTENSION IF NOT EXISTS postgis;

-- Schemas
DROP SCHEMA IF EXISTS elementer CASCADE;
CREATE SCHEMA elementer;

DROP SCHEMA IF EXISTS aktiviteter CASCADE;
CREATE SCHEMA aktiviteter;

DROP SCHEMA IF EXISTS lookup CASCADE;
CREATE SCHEMA lookup;


DROP SCHEMA IF EXISTS lookup CASCADE;
CREATE SCHEMA lookup;

-- Schema lookup .........................................

SET search_path = lookup, public;

CREATE TABLE IF NOT EXISTS element_gruppetyper (
    gruppe_navn CHARACTER VARYING NOT NULL,
    basis_type CHARACTER VARYING(1) NOT NULL,
    passiv BOOLEAN NOT NULL DEFAULT FALSE,
	beskrivelse CHARACTER VARYING NOT NULL,
    CONSTRAINT element_gruppetyper_pkey PRIMARY KEY (gruppe_navn, basis_type)
);

CREATE TABLE IF NOT EXISTS element_typer (
    gruppe_navn CHARACTER VARYING NOT NULL,
    type_navn CHARACTER VARYING NOT NULL,
    basis_type CHARACTER VARYING(1) NOT NULL,
    passiv BOOLEAN NOT NULL DEFAULT FALSE,
	beskrivelse CHARACTER VARYING NOT NULL,
    CONSTRAINT element_typer_pkey PRIMARY KEY (gruppe_navn, type_navn, basis_type),
    CONSTRAINT element_typer_element_gruppetyper_fk FOREIGN KEY(gruppe_navn, basis_type)
        REFERENCES element_gruppetyper(gruppe_navn, basis_type)
);

CREATE TABLE IF NOT EXISTS aktivitets_typer (
    gruppe_navn CHARACTER VARYING NOT NULL,
    basis_type CHARACTER VARYING(1) NOT NULL,
    type_navn CHARACTER VARYING NOT NULL,
    passiv BOOLEAN NOT NULL DEFAULT FALSE,
	beskrivelse CHARACTER VARYING NOT NULL,
    CONSTRAINT aktivitets_typer_pkey PRIMARY KEY (gruppe_navn, type_navn, basis_type),
    CONSTRAINT aktivitets_typer_element_gruppetyper_fk FOREIGN KEY(gruppe_navn, basis_type)
        REFERENCES element_gruppetyper(gruppe_navn, basis_type)
);

CREATE TABLE IF NOT EXISTS arbejds_omraader(
    omraade_navn CHARACTER VARYING NOT NULL,
    geom geometry(MultiPolygonZ,25832),
	beskrivelse CHARACTER VARYING NOT NULL,
    CONSTRAINT arbejds_omraader_pkey PRIMARY KEY (omraade_navn)
);

CREATE TABLE IF NOT EXISTS entreprise_typer(
    entreprise_type character varying NOT NULL,
    passiv BOOLEAN NOT NULL DEFAULT FALSE,
	beskrivelse CHARACTER VARYING NOT NULL,
    CONSTRAINT entreprise_typer_pkey PRIMARY KEY (entreprise_type)
);

-- Schema elementer .........................................

SET search_path = elementer, public;

CREATE TABLE IF NOT EXISTS elementer_flader (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    basis_type CHARACTER VARYING(1) NOT NULL DEFAULT 'F',
    element_gruppe CHARACTER VARYING NOT NULL,
    element_type CHARACTER VARYING NOT NULL,
    areal DOUBLE PRECISION,
    perimeter DOUBLE PRECISION,
    ekstra JSONB,
    geom GEOMETRY(MultiPolygonZ,25832),
    CONSTRAINT elementer_flader_pkey PRIMARY KEY (id),
    CONSTRAINT elementer_flader_element_typer_fk FOREIGN KEY(element_gruppe, element_type, basis_type)
        REFERENCES lookup.element_typer(gruppe_navn, type_navn, basis_type)

);

CREATE TABLE IF NOT EXISTS elementer_linjer (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    basis_type CHARACTER VARYING(1) NOT NULL DEFAULT 'L',
    element_gruppe CHARACTER VARYING NOT NULL,
    element_type CHARACTER VARYING NOT NULL,
    laengde DOUBLE PRECISION,
    ekstra JSONB,
    geom GEOMETRY(MultiLineStringZ,25832),
    CONSTRAINT elementer_linjer_pkey PRIMARY KEY (id),
    CONSTRAINT elementer_linjer_element_typer_fk FOREIGN KEY(element_gruppe, element_type, basis_type)
        REFERENCES lookup.element_typer(gruppe_navn, type_navn, basis_type)
);

CREATE TABLE IF NOT EXISTS elementer_punkter (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    basis_type CHARACTER VARYING(1) NOT NULL DEFAULT 'P',
    element_gruppe CHARACTER VARYING NOT NULL,
    element_type CHARACTER VARYING NOT NULL,
    ekstra JSONB,
    geom GEOMETRY(PointZ,25832),
    CONSTRAINT elementer_punkter_pkey PRIMARY KEY (id),
    CONSTRAINT elementer_punkter_element_typer_fk FOREIGN KEY(element_gruppe, element_type, basis_type)
        REFERENCES lookup.element_typer(gruppe_navn, type_navn, basis_type)
);

-- Schema aktiviteter .........................................

SET search_path = aktiviteter, public;

CREATE TABLE IF NOT EXISTS kontakter (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    navn CHARACTER VARYING NOT NULL,
    adresse CHARACTER VARYING NOT NULL,
    postnr CHARACTER VARYING NOT NULL,
    postby CHARACTER VARYING NOT NULL,
    telefon_nummer CHARACTER VARYING NOT NULL,
    mail_adresse  CHARACTER VARYING NOT NULL,
    CONSTRAINT kontakter_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS entrepriser (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    kontakt_id UUID NOT NULL,
    omraade_navn character varying NOT NULL,
	entreprise_type character varying NOT NULL,
    periode_start DATE NOT NULL,
    periode_slut DATE NOT NULL,
    CONSTRAINT entrepriser_pkey PRIMARY KEY (id),
    CONSTRAINT entrepriser_entreprise_typer_fk FOREIGN KEY(entreprise_type)
        REFERENCES lookup.entreprise_typer(entreprise_type),
    CONSTRAINT entrepriser_kontakter_fk FOREIGN KEY(kontakt_id)
        REFERENCES kontakter(id),
    CONSTRAINT entrepriser_arbejds_omraader_fk FOREIGN KEY(omraade_navn)
        REFERENCES lookup.arbejds_omraader(omraade_navn)
);

CREATE TABLE IF NOT EXISTS aktivitets_priser (
    gruppe_navn CHARACTER VARYING NOT NULL,
    basis_type CHARACTER VARYING(1) NOT NULL,
    type_navn CHARACTER VARYING NOT NULL,
    entreprise_id UUID NOT NULL,
	CONSTRAINT aktivitets_priser_pkey PRIMARY KEY (gruppe_navn, type_navn, basis_type, entreprise_id),
    CONSTRAINT aktivitets_priser_aktivitets_typer_fk FOREIGN KEY(gruppe_navn, type_navn, basis_type)
        REFERENCES lookup.aktivitets_typer(gruppe_navn, type_navn, basis_type)
);

CREATE TABLE IF NOT EXISTS aktiviteter (
    element_id UUID NOT NULL,
    gruppe_navn CHARACTER VARYING NOT NULL,
    basis_type CHARACTER VARYING(1) NOT NULL,
    type_navn CHARACTER VARYING NOT NULL,
	CONSTRAINT aktiviteter_pkey PRIMARY KEY (element_id, gruppe_navn, type_navn, basis_type),
    CONSTRAINT aktiviteter_aktivitets_typer_fk FOREIGN KEY(gruppe_navn, type_navn, basis_type)
        REFERENCES lookup.aktivitets_typer(gruppe_navn, type_navn, basis_type)
);
