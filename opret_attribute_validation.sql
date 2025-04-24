DROP TABLE IF EXISTS lookup.attribute_validation; 
CREATE TABLE lookup.attribute_validation AS
WITH aa AS (
    SELECT 
	    elementdetails.id AS element_id,
        jsonb_array_elements(elementdetails.jsondata -> 'ElementAttributes'::text) AS attribute
    FROM sweco_jsondata.elementdetails
),
bb AS (
    SELECT 
        aa.attribute ->> 'Key'::text AS attrkey,
        jsonb_array_elements(aa.attribute -> 'ValidationValues'::text) AS validation
    FROM aa
)
SELECT 
    attrkey,
	validation ->> 'Key' AS key,
	validation ->> 'Name' AS name
FROM bb
GROUP BY 1,2,3
ORDER BY 1,2,3;

ALTER TABLE IF EXISTS lookup.attribute_validation
    ADD CONSTRAINT attribute_validation_pkey PRIMARY KEY (attrkey, key);

DROP TABLE IF EXISTS elementer.element_linjer_tmp; 
CREATE TABLE elementer.element_linjer_tmp AS
SELECT * FROM elementer.element_linjer;

ALTER TABLE IF EXISTS elementer.element_linjer_tmp
    ADD CONSTRAINT element_linjer_tmp_pkey PRIMARY KEY (id);

DROP TABLE IF EXISTS elementer.element_punkter_tmp; 
CREATE TABLE elementer.element_punkter_tmp AS
SELECT * FROM elementer.element_punkter;

ALTER TABLE IF EXISTS elementer.element_punkter_tmp
    ADD CONSTRAINT element_punkter_tmp_pkey PRIMARY KEY (id);
	
DROP TABLE IF EXISTS elementer.element_flader_tmp; 
CREATE TABLE elementer.element_flader_tmp AS
SELECT * FROM elementer.element_flader;

ALTER TABLE IF EXISTS elementer.element_flader_tmp
    ADD CONSTRAINT element_flader_tmp_pkey PRIMARY KEY (id);

