-- Schemas

/*
DROP SCHEMA IF EXISTS lookup CASCADE;
DROP SCHEMA IF EXISTS elementer CASCADE;
DROP SCHEMA IF EXISTS arbejde CASCADE;
DROP SCHEMA IF EXISTS priser CASCADE;
DROP SCHEMA IF EXISTS kontakter CASCADE;
*/

CREATE SCHEMA lookup;
CREATE SCHEMA elementer;
CREATE SCHEMA arbejde;
CREATE SCHEMA priser;
CREATE SCHEMA kontakter;

 
-- Tables in schema lookup

-- elementgruppe_typer

CREATE TABLE lookup.elementgruppe_typer (
    egruppe_key character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint
);

ALTER TABLE ONLY lookup.elementgruppe_typer ADD CONSTRAINT element_gruppetyper_pk PRIMARY KEY (egruppe_key);


-- element_typer

CREATE TABLE lookup.element_typer (
    etype_key character varying NOT NULL,
    etype_navn character varying NOT NULL,
    egruppe_key character varying NOT NULL,
    -- egruppe_navn character varying NOT NULL,
    ebasis_type character varying(1) NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint,
    prioritet smallint
);
	
ALTER TABLE ONLY lookup.element_typer 
    ADD CONSTRAINT element_typer_pk PRIMARY KEY (etype_key),
    ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (egruppe_key) REFERENCES lookup.elementgruppe_typer(egruppe_key);

CREATE VIEW lookup.element_typer_view AS 
    SELECT 
	    e.etype_key,
	    e.etype_navn,
        e.egruppe_key,
        g.egruppe_navn,
        e.ebasis_type,
        e.passiv,
        e.beskrivelse,
        e.sortering,
        e.prioritet,
        g.sortering AS g_sortering
    FROM lookup.element_typer e 
    LEFT JOIN lookup.elementgruppe_typer g
    ON (e.egruppe_key = g.egruppe_key);

CREATE TABLE lookup.omraade_typer (
    otype_key character varying NOT NULL,
    otype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    niveau integer
);

ALTER TABLE ONLY lookup.omraade_typer 
    ADD CONSTRAINT omraade_typer_pk PRIMARY KEY (otype_key);

CREATE TABLE lookup.arbejdsgruppe_typer (
    atype_key character varying NOT NULL,
    atype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    niveau integer
);

ALTER TABLE ONLY lookup.arbejdsgruppe_typer 
    ADD CONSTRAINT arbejdsgruppe_typer_pk PRIMARY KEY (atype_key);

CREATE TABLE lookup.arbejde_typer (
    abtype_key character varying NOT NULL,
    abtype_navn character varying NOT NULL,
    atype_key character varying NOT NULL,
    etype_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    niveau integer
);

ALTER TABLE ONLY lookup.arbejde_typer 
    ADD CONSTRAINT arbejde_typer_pk PRIMARY KEY (abtype_key),
    ADD CONSTRAINT arbejde_typer_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT arbejde_typer_arbejdsgruppe_fk FOREIGN KEY (atype_key) REFERENCES lookup.arbejdsgruppe_typer(atype_key) ON UPDATE CASCADE ON DELETE RESTRICT;
 
-- Tables in schema kontakter

CREATE TABLE kontakter.organisationer (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    type character varying,
    organisatiosnavn character varying NOT NULL,
    adresse character varying,
    postnr character varying,
    postby character varying,
    telefon_nummer character varying,
    hoved_mail character varying,
    passiv boolean DEFAULT false NOT NULL
);

ALTER TABLE ONLY kontakter.organisationer 
    ADD CONSTRAINT organisationer_pk PRIMARY KEY (id);


CREATE TABLE kontakter.kontakter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    organisation_id uuid,
    navn character varying NOT NULL,
    telefon_nummer character varying,
    mail_adresse character varying,
    passiv boolean DEFAULT false NOT NULL
);

ALTER TABLE ONLY kontakter.kontakter 
    ADD CONSTRAINT kontakter_pk PRIMARY KEY (id),
    ADD CONSTRAINT kontakter_organisationer_fk FOREIGN KEY (organisation_id) REFERENCES kontakter.organisationer(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Tables in schema priser

CREATE TABLE priser.prisgrupper (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    firma_id uuid NOT NULL,
    periode_start date NOT NULL,
    periode_slut date NOT NULL,
    bemaerkning character varying
);

ALTER TABLE ONLY priser.prisgrupper
    ADD CONSTRAINT prisgrupper_pk PRIMARY KEY (id),
    ADD CONSTRAINT prisgrupper_organisationer_fk FOREIGN KEY (firma_id) REFERENCES kontakter.organisationer(id) ON UPDATE CASCADE ON DELETE RESTRICT;


CREATE TABLE priser.priser_arbejde (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    prisgrupper_id uuid NOT NULL,
    abtype_key  character varying NOT NULL,
    pris_stk numeric (10,2) DEFAULT 0.0 NOT NULL,
    pris_m numeric (10,2) DEFAULT 0.0 NOT NULL,
    pris_m2 numeric (10,2) DEFAULT 0.0 NOT NULL

);

ALTER TABLE ONLY priser.priser_arbejde
    ADD CONSTRAINT priser_arbejde_pk PRIMARY KEY (id),
    ADD CONSTRAINT priser_arbejde_prisgrupper_fk FOREIGN KEY (prisgrupper_id) REFERENCES priser.prisgrupper(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT priser_arbejde_arbejde_typer_fk FOREIGN KEY (abtype_key) REFERENCES lookup.arbejde_typer(abtype_key) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Tables in schema arbejde

CREATE TABLE arbejde.omraader (
    omraade_key character varying NOT NULL,
    omraade_navn character varying NOT NULL,
    otype_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    geom public.geometry(MultiPolygon,25832)
);

ALTER TABLE ONLY arbejde.omraader 
    ADD CONSTRAINT omraader_pk PRIMARY KEY (omraade_key),
    ADD CONSTRAINT omraader_omraade_typer_fk FOREIGN KEY (otype_key) REFERENCES lookup.omraade_typer(otype_key) ON UPDATE CASCADE ON DELETE RESTRICT;
CREATE INDEX omraader_geom_idx ON arbejde.omraader USING gist (geom);


CREATE TABLE arbejde.arbejdsgrupper (
    arbejdsgruppe_key character varying NOT NULL,
    arbejdsgruppe_navn character varying NOT NULL,
    atype_key character varying NOT NULL,
    omraade_key character varying NOT NULL,
    admin_id uuid,
    udfoerer_id uuid,
    prisgruppe_id uuid,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);

ALTER TABLE ONLY arbejde.arbejdsgrupper 
    ADD CONSTRAINT arbejdsgrupper_pk PRIMARY KEY (arbejdsgruppe_key),
    ADD CONSTRAINT arbejdsgrupper_arbejdsgruppe_typer_fk FOREIGN KEY (atype_key) REFERENCES lookup.arbejdsgruppe_typer(atype_key) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT arbejdsgrupper_prisgrupper_fk FOREIGN KEY (prisgruppe_id) REFERENCES priser.prisgrupper(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT arbejdsgrupper_kontakter_a_fk FOREIGN KEY (admin_id) REFERENCES kontakter.kontakter(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT arbejdsgrupper_kontakter_u_fk FOREIGN KEY (udfoerer_id) REFERENCES kontakter.kontakter(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT arbejdsgrupper_omraader_fk FOREIGN KEY (omraade_key) REFERENCES arbejde.omraader(omraade_key) ON UPDATE CASCADE ON DELETE RESTRICT;

-- Tables in schema data

CREATE TABLE elementer.element_punkter (
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

ALTER TABLE ONLY elementer.element_punkter 
    ADD CONSTRAINT element_punkter_pk PRIMARY KEY (id),
    ADD CONSTRAINT element_punkter_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE RESTRICT;
CREATE INDEX element_punkter_geom_idx ON elementer.element_punkter USING gist (geom);


CREATE TABLE elementer.element_linjer (
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

ALTER TABLE ONLY elementer.element_linjer 
    ADD CONSTRAINT element_linjer_pk PRIMARY KEY (id),
    ADD CONSTRAINT element_linjer_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE RESTRICT;
CREATE INDEX element_linjer_geom_idx ON elementer.element_linjer USING gist (geom);

CREATE TABLE elementer.element_flader (
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

ALTER TABLE ONLY elementer.element_flader 
    ADD CONSTRAINT element_flader_pk PRIMARY KEY (id),
    ADD CONSTRAINT element_flader_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE RESTRICT;
CREATE INDEX element_flader_geom_idx ON elementer.element_flader USING gist (geom);


CREATE TABLE elementer.element_punkter_arbejdsgrupper (
    element_id uuid NOT NULL,
    arbejdsgruppe_key character varying NOT NULL,
    niveau integer NOT NULL
);

ALTER TABLE ONLY elementer.element_punkter_arbejdsgrupper
    ADD CONSTRAINT element_punkter_arbejdsgrupper_pk PRIMARY KEY (element_id, arbejdsgruppe_key),
    ADD CONSTRAINT element_punkter_arbejdsgrupper_element_punkter_fk FOREIGN KEY (element_id) REFERENCES elementer.element_punkter(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT element_punkter_arbejdsgrupper_arbejdsgrupper_fk FOREIGN KEY (arbejdsgruppe_key) REFERENCES arbejde.arbejdsgrupper(arbejdsgruppe_key) ON UPDATE CASCADE ON DELETE RESTRICT;

CREATE TABLE elementer.element_linjer_arbejdsgrupper (
    element_id uuid NOT NULL,
    arbejdsgruppe_key character varying NOT NULL,
    niveau integer NOT NULL
);

ALTER TABLE ONLY elementer.element_linjer_arbejdsgrupper
    ADD CONSTRAINT element_linjer_arbejdsgrupper_pk PRIMARY KEY (element_id, arbejdsgruppe_key),
    ADD CONSTRAINT element_linjer_arbejdsgrupper_element_linjer_fk FOREIGN KEY (element_id) REFERENCES elementer.element_linjer(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT element_linjer_arbejdsgrupper_arbejdsgrupper_fk FOREIGN KEY (arbejdsgruppe_key) REFERENCES arbejde.arbejdsgrupper(arbejdsgruppe_key) ON UPDATE CASCADE ON DELETE RESTRICT;

CREATE TABLE elementer.element_flader_arbejdsgrupper (
    element_id uuid NOT NULL,
    arbejdsgruppe_key character varying NOT NULL,
    niveau integer NOT NULL
);

ALTER TABLE ONLY elementer.element_flader_arbejdsgrupper
    ADD CONSTRAINT element_flader_arbejdsgrupper_pk PRIMARY KEY (element_id, arbejdsgruppe_key),
    ADD CONSTRAINT element_flader_arbejdsgrupper_element_flader_fk FOREIGN KEY (element_id) REFERENCES elementer.element_flader(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT element_flader_arbejdsgrupper_arbejdsgrupper_fk FOREIGN KEY (arbejdsgruppe_key) REFERENCES arbejde.arbejdsgrupper(arbejdsgruppe_key) ON UPDATE CASCADE ON DELETE RESTRICT;


