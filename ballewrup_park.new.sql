-- Schemas

CREATE SCHEMA lookup;

 
-- Tables in schema lookup

-- elementgruppe_typer

CREATE TABLE lookup.elementgruppe_typer (
    egruppe_key character varying NOT NULL,
    egruppe_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    sortering smallint
);

ALTER TABLE ONLY lookup.elementgruppe_typer
    ADD CONSTRAINT element_gruppetyper_pk PRIMARY KEY (egruppe_key);


-- element_typer

CREATE TABLE lookup.element_typer (
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

ALTER TABLE ONLY lookup.element_typer
    ADD CONSTRAINT element_typer_pk PRIMARY KEY (etype_key);

ALTER TABLE ONLY lookup.element_typer
    ADD CONSTRAINT element_typer_elementgruppe_typer_fk FOREIGN KEY (egruppe_key) REFERENCES lookup.elementgruppe_typer(egruppe_key);

CREATE TABLE lookup.omraade_typer (
    otype_key character varying NOT NULL,
    otype_navn character varying NOT NULL,
    passiv boolean DEFAULT false NOT NULL,
    beskrivelse character varying,
    niveau integer
);

