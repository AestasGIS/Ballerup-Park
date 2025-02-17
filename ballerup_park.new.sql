-- Schemas

DROP SCHEMA IF EXISTS lookup CASCADE;
DROP SCHEMA IF EXISTS data CASCADE;
DROP SCHEMA IF EXISTS arbejde CASCADE;

CREATE SCHEMA lookup;
CREATE SCHEMA data;
CREATE SCHEMA arbejde;
 
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
	
ALTER TABLE ONLY lookup.element_typer ADD CONSTRAINT element_typer_pk PRIMARY KEY (etype_key);
ALTER TABLE ONLY lookup.element_typer ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (egruppe_key) REFERENCES lookup.elementgruppe_typer(egruppe_key);

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

ALTER TABLE ONLY lookup.omraade_typer ADD CONSTRAINT omraade_typer_pk PRIMARY KEY (otype_key);

CREATE TABLE lookup.arbejdsgruppe_typer (
    atype_key character varying NOT NULL,
    atype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    niveau integer
);

ALTER TABLE ONLY lookup.arbejdsgruppe_typer ADD CONSTRAINT arbejdsgruppe_typer_pk PRIMARY KEY (atype_key);
 
-- Tables in schema arbejde

CREATE TABLE arbejde.omraader (
    omraade_key character varying NOT NULL,
    omraade_navn character varying NOT NULL,
    otype_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    geom public.geometry(MultiPolygon,25832)
);

ALTER TABLE ONLY arbejde.omraader ADD CONSTRAINT omraader_pk PRIMARY KEY (omraade_key);
CREATE INDEX omraader_geom_idx ON arbejde.omraader USING gist (geom);
ALTER TABLE ONLY arbejde.omraader ADD CONSTRAINT omraader_omraade_typer_fk FOREIGN KEY (otype_key) REFERENCES lookup.omraade_typer(otype_key) ON UPDATE CASCADE ON DELETE CASCADE;


CREATE TABLE arbejde.arbejdsgrupper (
    arbejdsgruppe_key character varying NOT NULL,
    arbejdsgruppe_navn character varying NOT NULL,
    atype_key character varying NOT NULL,
    omraade_key character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying
);

ALTER TABLE ONLY arbejde.arbejdsgrupper ADD CONSTRAINT arbejdsgrupper_pk PRIMARY KEY (arbejdsgruppe_key);
ALTER TABLE ONLY arbejde.arbejdsgrupper ADD CONSTRAINT arbejdsgrupper_arbejdsgruppe_typer_fk FOREIGN KEY (atype_key) REFERENCES lookup.arbejdsgruppe_typer(atype_key) ON UPDATE CASCADE ON DELETE CASCADE;


-- Tables in schema data

CREATE TABLE data.elementer_punkter (
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

ALTER TABLE ONLY data.elementer_punkter ADD CONSTRAINT elementer_punkter_pk PRIMARY KEY (id);
CREATE INDEX elementer_punkter_geom_idx ON data.elementer_punkter USING gist (geom);
ALTER TABLE ONLY data.elementer_punkter ADD CONSTRAINT elementer_punkter_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;


CREATE TABLE data.elementer_linjer (
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

ALTER TABLE ONLY data.elementer_linjer ADD CONSTRAINT elementer_linjer_pk PRIMARY KEY (id);
CREATE INDEX elementer_linjer_geom_idx ON data.elementer_linjer USING gist (geom);
ALTER TABLE ONLY data.elementer_linjer ADD CONSTRAINT elementer_linjer_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;

CREATE TABLE data.elementer_flader (
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

ALTER TABLE ONLY data.elementer_flader ADD CONSTRAINT elementer_flader_pk PRIMARY KEY (id);
CREATE INDEX elementer_flader_geom_idx ON data.elementer_flader USING gist (geom);
ALTER TABLE ONLY data.elementer_flader ADD CONSTRAINT elementer_flader_element_typer_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;


CREATE TABLE data.element_punkter_arbejdsgrupper (
    element_id uuid NOT NULL,
    arbejdsgruppe_key character varying NOT NULL,
    niveau integer NOT NULL
);
ALTER TABLE ONLY data.element_punkter_arbejdsgrupper
    ADD CONSTRAINT element_punkter_arbejdsgrupper_pk PRIMARY KEY (element_id, arbejdsgruppe_key);
ALTER TABLE ONLY data.element_punkter_arbejdsgrupper ADD CONSTRAINT element_punkter_arbejdsgrupper_fk FOREIGN KEY (etype_key) REFERENCES lookup.element_typer(etype_key) ON UPDATE CASCADE ON DELETE CASCADE;




