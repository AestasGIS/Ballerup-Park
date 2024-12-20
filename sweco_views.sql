--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.8

-- Started on 2024-12-11 14:58:20

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
-- TOC entry 337 (class 1259 OID 192025)
-- Name: element_typer_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.element_typer_view AS
 SELECT (elementtypedetails.jsondata #>> '{Parent,Name}'::text[]) AS egruppe_navn,
    (elementtypedetails.jsondata #>> '{Name}'::text[]) AS etype_navn,
        CASE
            WHEN ((elementtypedetails.jsondata #>> '{GeometryType}'::text[]) = 'Polygon'::text) THEN 'F'::text
            WHEN ((elementtypedetails.jsondata #>> '{GeometryType}'::text[]) = 'Line'::text) THEN 'L'::text
            WHEN ((elementtypedetails.jsondata #>> '{GeometryType}'::text[]) = 'Point'::text) THEN 'P'::text
            ELSE '?'::text
        END AS ebasis_type,
    (NOT ((elementtypedetails.jsondata #>> '{InUse}'::text[]))::boolean) AS passiv,
    elementtypedetails.id AS beskrivelse,
    1 AS sortering,
    1 AS prioritet,
    (elementtypedetails.jsondata #>> '{Key}'::text[]) AS etikette
   FROM sweco.elementtypedetails
  WHERE ((elementtypedetails.jsondata #>> '{Parent,Name}'::text[]) IS NOT NULL);


ALTER TABLE sweco.element_typer_view OWNER TO ballerup_park;

--
-- TOC entry 339 (class 1259 OID 192035)
-- Name: element_typer_view2; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.element_typer_view2 AS
 SELECT (elementdetails.jsondata #>> '{ElementTypeName}'::text[]) AS "?column?",
    count(*) AS count
   FROM sweco.elementdetails
  GROUP BY (elementdetails.jsondata #>> '{ElementTypeName}'::text[])
  ORDER BY (elementdetails.jsondata #>> '{ElementTypeName}'::text[]) DESC;


ALTER TABLE sweco.element_typer_view2 OWNER TO ballerup_park;

--
-- TOC entry 340 (class 1259 OID 192039)
-- Name: element_typer_view3; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.element_typer_view3 AS
 SELECT (elementdetails.jsondata #>> '{ElementTypeName}'::text[]) AS etype,
        CASE
            WHEN ((elementdetails.jsondata #>> '{GeometryType}'::text[]) = 'Polygon'::text) THEN 'F'::text
            WHEN ((elementdetails.jsondata #>> '{GeometryType}'::text[]) = 'Line'::text) THEN 'L'::text
            WHEN ((elementdetails.jsondata #>> '{GeometryType}'::text[]) = 'Point'::text) THEN 'P'::text
            ELSE '?'::text
        END AS ebasis_type,
    count(*) AS count
   FROM sweco.elementdetails
  GROUP BY (elementdetails.jsondata #>> '{ElementTypeName}'::text[]),
        CASE
            WHEN ((elementdetails.jsondata #>> '{GeometryType}'::text[]) = 'Polygon'::text) THEN 'F'::text
            WHEN ((elementdetails.jsondata #>> '{GeometryType}'::text[]) = 'Line'::text) THEN 'L'::text
            WHEN ((elementdetails.jsondata #>> '{GeometryType}'::text[]) = 'Point'::text) THEN 'P'::text
            ELSE '?'::text
        END
  ORDER BY (elementdetails.jsondata #>> '{ElementTypeName}'::text[]) DESC;


ALTER TABLE sweco.element_typer_view3 OWNER TO ballerup_park;

--
-- TOC entry 341 (class 1259 OID 192043)
-- Name: element_typer_view_new; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.element_typer_view_new AS
 SELECT (elementtypedetails.jsondata #>> '{Key}'::text[]) AS etype_key,
    (elementtypedetails.jsondata #>> '{Name}'::text[]) AS etype_navn,
    (elementtypedetails.jsondata #>> '{Parent,Key}'::text[]) AS egruppe_key,
    (elementtypedetails.jsondata #>> '{Parent,Name}'::text[]) AS egruppe_navn,
        CASE
            WHEN ((elementtypedetails.jsondata #>> '{GeometryType}'::text[]) = 'Polygon'::text) THEN 'F'::text
            WHEN ((elementtypedetails.jsondata #>> '{GeometryType}'::text[]) = 'Line'::text) THEN 'L'::text
            WHEN ((elementtypedetails.jsondata #>> '{GeometryType}'::text[]) = 'Point'::text) THEN 'P'::text
            ELSE '?'::text
        END AS ebasis_type,
    (NOT ((elementtypedetails.jsondata #>> '{InUse}'::text[]))::boolean) AS passiv,
    elementtypedetails.id AS beskrivelse,
    1 AS sortering,
    1 AS prioritet
   FROM sweco.elementtypedetails
  WHERE ((elementtypedetails.jsondata #>> '{Parent,Name}'::text[]) IS NOT NULL);


ALTER TABLE sweco.element_typer_view_new OWNER TO ballerup_park;

--
-- TOC entry 344 (class 1259 OID 192054)
-- Name: elementdetails_line_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.elementdetails_line_view AS
 SELECT (elementdetails.jsondata #>> '{Name}'::text[]) AS name,
    (elementdetails.jsondata #>> '{Status}'::text[]) AS status,
    public.st_multi(public.st_geomfromtext((elementdetails.jsondata #>> '{GeometryWkt}'::text[]), 25832)) AS geom,
    elementdetails.gbid,
    elementdetails.id,
    elementdetails.jsondata
   FROM sweco.elementdetails
  WHERE ((elementdetails.jsondata #>> '{GeometryWkt}'::text[]) ~~* '%line%'::text);


ALTER TABLE sweco.elementdetails_line_view OWNER TO ballerup_park;

--
-- TOC entry 346 (class 1259 OID 192063)
-- Name: elementdetails_point_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.elementdetails_point_view AS
 SELECT (elementdetails.jsondata #>> '{Name}'::text[]) AS name,
    (elementdetails.jsondata #>> '{Status}'::text[]) AS status,
    public.st_geomfromtext((elementdetails.jsondata #>> '{GeometryWkt}'::text[]), 25832) AS geom,
    elementdetails.gbid,
    elementdetails.id,
    elementdetails.jsondata
   FROM sweco.elementdetails
  WHERE ((elementdetails.jsondata #>> '{GeometryWkt}'::text[]) ~~* '%point%'::text);


ALTER TABLE sweco.elementdetails_point_view OWNER TO ballerup_park;

--
-- TOC entry 348 (class 1259 OID 192072)
-- Name: elementdetails_polygon_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.elementdetails_polygon_view AS
 SELECT (elementdetails.jsondata #>> '{Name}'::text[]) AS name,
    (elementdetails.jsondata #>> '{Status}'::text[]) AS status,
    public.st_multi(public.st_geomfromtext((elementdetails.jsondata #>> '{GeometryWkt}'::text[]), 25832)) AS geom,
    elementdetails.gbid,
    elementdetails.id,
    elementdetails.jsondata
   FROM sweco.elementdetails
  WHERE ((elementdetails.jsondata #>> '{GeometryWkt}'::text[]) ~~* '%polygon%'::text);


ALTER TABLE sweco.elementdetails_polygon_view OWNER TO ballerup_park;

--
-- TOC entry 349 (class 1259 OID 192076)
-- Name: elementdetails_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.elementdetails_view AS
 SELECT (elementdetails.jsondata #>> '{Name}'::text[]) AS name,
    public.st_geomfromtext((elementdetails.jsondata #>> '{GeometryWkt}'::text[]), 25832) AS geom,
    elementdetails.gbid,
    elementdetails.id,
    elementdetails.jsondata
   FROM sweco.elementdetails;


ALTER TABLE sweco.elementdetails_view OWNER TO ballerup_park;

--
-- TOC entry 350 (class 1259 OID 192080)
-- Name: elementgruppe_typer_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.elementgruppe_typer_view AS
 SELECT (elementtypedetails.jsondata #>> '{Name}'::text[]) AS egruppe_navn,
    (NOT ((elementtypedetails.jsondata #>> '{InUse}'::text[]))::boolean) AS passiv,
    elementtypedetails.id AS beskrivelse,
    1 AS sortering,
    (elementtypedetails.jsondata #>> '{Key}'::text[]) AS etikette
   FROM sweco.elementtypedetails
  WHERE (((elementtypedetails.jsondata #>> '{Parent,Name}'::text[]) IS NULL) OR ((elementtypedetails.jsondata #>> '{Name}'::text[]) IN ( SELECT DISTINCT (elementtypedetails_1.jsondata #>> '{Parent,Name}'::text[])
           FROM sweco.elementtypedetails elementtypedetails_1
          WHERE ((elementtypedetails_1.jsondata #>> '{Parent,Name}'::text[]) IS NOT NULL))));


ALTER TABLE sweco.elementgruppe_typer_view OWNER TO ballerup_park;

--
-- TOC entry 351 (class 1259 OID 192085)
-- Name: elementgruppe_typer_view_new; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.elementgruppe_typer_view_new AS
 SELECT (elementtypedetails.jsondata #>> '{Key}'::text[]) AS egruppe_key,
    (elementtypedetails.jsondata #>> '{Name}'::text[]) AS egruppe_navn,
    (NOT ((elementtypedetails.jsondata #>> '{InUse}'::text[]))::boolean) AS passiv,
    elementtypedetails.id AS beskrivelse,
    1 AS sortering
   FROM sweco.elementtypedetails
  WHERE (((elementtypedetails.jsondata #>> '{Parent,Name}'::text[]) IS NULL) OR ((elementtypedetails.jsondata #>> '{Name}'::text[]) IN ( SELECT DISTINCT (elementtypedetails_1.jsondata #>> '{Parent,Name}'::text[])
           FROM sweco.elementtypedetails elementtypedetails_1
          WHERE ((elementtypedetails_1.jsondata #>> '{Parent,Name}'::text[]) IS NOT NULL))));


ALTER TABLE sweco.elementgruppe_typer_view_new OWNER TO ballerup_park;

--
-- TOC entry 368 (class 1259 OID 192158)
-- Name: workarea_typer_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.workarea_typer_view AS
 SELECT (workareatypedetails.jsondata #>> '{Key}'::text[]) AS otype_key,
    (workareatypedetails.jsondata #>> '{Name}'::text[]) AS otype_navn,
    (NOT ((workareatypedetails.jsondata #>> '{Status}'::text[]) = 'active'::text)) AS passiv,
    (workareatypedetails.jsondata #>> '{Id}'::text[]) AS beskrivelse,
    ((workareatypedetails.jsondata #>> '{Level}'::text[]))::integer AS niveau
   FROM sweco.workareatypedetails;


ALTER TABLE sweco.workarea_typer_view OWNER TO ballerup_park;

--
-- TOC entry 372 (class 1259 OID 192173)
-- Name: workareadetails_view; Type: VIEW; Schema: sweco; Owner: ballerup_park
--

CREATE VIEW sweco.workareadetails_view AS
 SELECT (workareadetails.jsondata #>> '{Name}'::text[]) AS name,
    (workareadetails.jsondata #>> '{Status}'::text[]) AS status,
    public.st_multi(public.st_geomfromtext((workareadetails.jsondata #>> '{GeometryWkt}'::text[]), 25832)) AS geom,
    workareadetails.gbid,
    workareadetails.id,
    workareadetails.jsondata
   FROM sweco.workareadetails;


ALTER TABLE sweco.workareadetails_view OWNER TO ballerup_park;

-- Completed on 2024-12-11 14:58:24

--
-- PostgreSQL database dump complete
--

