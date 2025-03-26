INSERT INTO elementer.element_flader(id, etype_key, ebasis_type, navn, areal, omkreds, hoejde, bredde, ekstra, geom)
SELECT 
    a.elementid::UUID AS id,
    a.elementtypekey AS etype_key,
	'F' AS ebasis_type,
	a.elementname AS navn,
	measure AS areal,
	perimeter AS omkreds,
	0.0 AS hojde,
	0.0 AS bredde,
	d.ekstra AS ekstra,
	a.geom AS geom
FROM driftweb.tot_elements a
LEFT JOIN sweco_jsondata.element_attributes_grouped d ON a.elementid::UUID = d.element_id
WHERE ST_GEOMETRYTYPE(geom) = 'ST_MultiPolygon' and a.elementid IS NOT NULL

INSERT INTO elementer.element_linjer(id, etype_key, ebasis_type, navn, laengde, hoejde, bredde, ekstra, geom)
SELECT 
    a.elementid::UUID AS id,
    a.elementtypekey AS etype_key,
	'L' AS ebasis_type,
	a.elementname AS navn,
	measure AS laengde,
	0.0 AS hojde,
	0.0 AS bredde,
	d.ekstra AS ekstra,
	a.geom AS geom
FROM driftweb.tot_elements a
LEFT JOIN sweco_jsondata.element_attributes_grouped d ON a.elementid::UUID = d.element_id
WHERE ST_GEOMETRYTYPE(geom) = 'ST_MultiLineString' and a.elementid IS NOT NULL

INSERT INTO elementer.element_punkter(id, etype_key, ebasis_type, navn, hoejde, bredde, ekstra, geom)
SELECT 
    a.elementid::UUID AS id,
    a.elementtypekey AS etype_key,
	'P' AS ebasis_type,
	a.elementname AS navn,
	0.0 AS hojde,
	0.0 AS bredde,
	d.ekstra AS ekstra,
	a.geom AS geom
FROM driftweb.tot_elements a
LEFT JOIN sweco_jsondata.element_attributes_grouped d ON a.elementid::UUID = d.element_id
WHERE ST_GEOMETRYTYPE(geom) = 'ST_Point' and a.elementid IS NOT NULL





SELECT ST_GEOMETRYTYPE(geom) FROM driftweb.tot_elements GROUP BY 1
WHERE S