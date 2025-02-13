DO $$

DECLARE
    rec RECORD;
    search_text TEXT := 'Skoler';
    query TEXT;
    result TEXT;
    view_name TEXT;
    schema_name TEXT;

BEGIN

    -- Generér schema-navn
    schema_name := LOWER(SUBSTRING(search_text FROM 1 FOR 2)) || '_' ||
                   REPLACE(REPLACE(REPLACE(LOWER(search_text), 'å', 'aa'), 'æ', 'ae'), 'ø', 'oe');
   
    -- Opret schema hvis det ikke allerede eksisterer
    EXECUTE 'CREATE SCHEMA IF NOT EXISTS ' || schema_name;

    FOR rec IN
        SELECT table_schema, table_name
        FROM information_schema.columns
        WHERE table_schema = 'driftweb'  -- Sørg for at schema-navnet er korrekt
          AND column_name = 'level_1_workareatypes' 
          AND data_type IN ('character varying', 'text')
    LOOP
        query := 'SELECT 1 FROM ' || rec.table_schema || '.' || rec.table_name || '
                  WHERE level_1_workareatypes::text = $1 LIMIT 1';
        -- Tjekker om værdien findes i tabellen
        EXECUTE query USING search_text INTO result;
        IF result IS NOT NULL THEN

            -- Generér et view-navn baseret på tabelnavnet
            view_name := schema_name || '.' || rec.table_name;

            -- Opret viewet med en WHERE-clause

            -- BVT 20250212 Tilføjet DROP VIEW IF EXIST... i query tekst
            -- BVT 20250212 Rettet VIEW def., saa det indeholder ektra kolonne 'gid'
            query := 'DROP VIEW IF EXISTS ' || view_name || '; CREATE VIEW ' || view_name || ' AS
                      SELECT ogc_fid AS gid, * FROM ' || rec.table_schema || '.' || rec.table_name || '
                      WHERE level_1_workareatypes::text = ''' || search_text || '''';
 
            EXECUTE query;
            RAISE NOTICE 'Created view: %', view_name;
        END IF;
    END LOOP;
END $$;

 
