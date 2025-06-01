-- FUNCTION: elementer.element_flp_changes()

-- DROP FUNCTION IF EXISTS elementer.element_flp_changes();

CREATE OR REPLACE FUNCTION elementer.element_flp_changes()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    -- set name column
    IF (NEW.navn = '*') THEN
        EXECUTE format('SELECT MAX(navn) FROM %I.%I WHERE etype_key = %s AND navn ~ %s',
            quote_ident(TG_TABLE_SCHEMA), quote_ident(TG_TABLE_NAME), 
            quote_literal(NEW.etype_key), quote_literal(CONCAT('^',NEW.etype_key,'-\d{5}'))) INTO NEW.navn;
        NEW.navn = NEW.etype_key || '-' || COALESCE(TO_CHAR(REPLACE(NEW.navn,CONCAT(NEW.etype_key,'-'),'')::integer + 1,'fm00000'),'00001'); 
    END IF;

    -- set admin values
	NEW.rettet := current_timestamp;
    NEW.rettet_af := current_user;
    IF (TG_OP = 'INSERT') THEN
        NEW.oprettet := current_timestamp;
        NEW.oprettet_af := current_user;
    END IF;

    -- set spatial columns
    CASE ST_GeometryType(NEW.geom)

    WHEN 'ST_Polygon', 'ST_MultiPolygon' then

        NEW.ebasis_type = 'F';
        NEW.areal = ROUND(ST_Area(NEW.geom)::NUMERIC,2);
        NEW.omkreds = ROUND(ST_Perimeter(NEW.geom)::NUMERIC,2);

    WHEN 'ST_LineString', 'ST_MultiLineString' then

        NEW.ebasis_type = 'L';
        NEW.laengde = ROUND(ST_Length(NEW.geom)::NUMERIC,2);

    WHEN 'ST_Point', 'ST_MultiPoint' then

        NEW.ebasis_type = 'P';

    END CASE;

    -- set element type columns
    SELECT t2.etype_navn, t2.egruppe_key, t3.egruppe_navn 
        INTO NEW.etype_navn, NEW.egruppe_key, NEW.egruppe_navn 
    FROM lookup.element_typer t2 JOIN lookup.elementgruppe_typer t3 
	    ON t3.egruppe_key = t2.egruppe_key
    WHERE t2.etype_key = NEW.etype_key AND ebasis_type = NEW.ebasis_type;

    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION elementer.element_flp_changes()
    OWNER TO ballerup_park;
