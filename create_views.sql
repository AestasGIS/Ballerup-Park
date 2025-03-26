DO $$
 
DECLARE
    search_text TEXT := 'Skoler'; -- Sættes til *nøjagtigt* workarea navn inkl. evt. blanktegn

    base_schema TEXT := 'driftweb'; -- Schemanavn for basis tabeller; skal normalt ikke ændres
    query1 TEXT;
    query2 TEXT;
    view_name TEXT;
    schema_name TEXT;
	result TEXT;
    rec RECORD;
 
BEGIN

    -- Generér schema-navn
	schema_name := REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE('wa_' || LOWER(search_text), 'å', 'aa'), 'æ', 'ae'), 'ø', 'oe'), ' - ','_' ), ' ', '_'), '-', '_');
  
    -- Opret schema hvis det ikke allerede eksisterer
    EXECUTE 'CREATE SCHEMA IF NOT EXISTS ' || schema_name;
 
    FOR rec IN

        -- Find alle tabeller i base schema (normalt "driftweb"), som indeholder relevant kolonne. 
        SELECT table_schema, table_name FROM information_schema.columns 
		    WHERE table_schema = base_schema 
			    AND column_name = 'level_1_workareatypes' 
				AND data_type IN ('character varying', 'text')
        
    LOOP
	    -- Tjek om den enkelte tabel indeholder element, som refererer workarea navnet
        query1 := 'SELECT 1 FROM ' ||  rec.table_schema || '.' || rec.table_name || 
            ' WHERE level_1_workareatypes::text LIKE $1 LIMIT 1';
        EXECUTE query1 USING '%' || search_text || '%'  INTO result;

        IF result IS NOT NULL THEN
            -- Det goer den, opret view
            view_name := schema_name || '.' || rec.table_name;

            query2 := 'DROP VIEW IF EXISTS ' || view_name || '; CREATE VIEW ' || view_name || 
                ' AS SELECT ogc_fid AS gid, * FROM ' || rec.table_schema || '.' || rec.table_name ||  
                ' WHERE level_1_workareatypes::text LIKE ''%' || search_text || '%''';

            EXECUTE query2;

            RAISE NOTICE 'Created view: %', view_name;

        END IF;
    END LOOP;

END $$;