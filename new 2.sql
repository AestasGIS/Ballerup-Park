

select 
    element_id, 
	jsonb_object_agg(key,value) AS attr 
from sweco_jsondata.element_attributes_view2 
group by 1 limit 20 ;




DROP VIEW sweco_jsondata.element_attributes_view2;

CREATE OR REPLACE VIEW sweco_jsondata.element_attributes_view2
 AS

WITH att AS (
         SELECT elementdetails.id AS element_id,
            jsonb_array_elements(elementdetails.jsondata -> 'ElementAttributes'::text) AS attribute
           FROM sweco_jsondata.elementdetails)
SELECT att.element_id,
    REPLACE ((att.attribute -> 'Key')::text,'"','') AS key,
    REPLACE(REPLACE ((att.attribute -> 'Value')::text,'"',''),'null','') AS value
   FROM att 