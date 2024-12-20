create table sweco.wfselements_lin_25832 AS 
SELECT 
    ogc_fid, 
	gml_id, 
	elementid, 
	elementname, 
	elementtypekey, 
	elementtypename, 
	element_description, 
	measure, 
	unittype, 
	perimeter, 
	address, 
	level_1_workareatypes, 
	level_1_workareas, 
	level_2_workareas, 
	level_2_workareatypes,
	origin, 
	created::timestamp, 
	createdby, 
	days_from_creation, 
	updated::timestamp, 
	updatedby,  
	days_from_update, 
	status, 
	geometrytype, 
	st_multi(st_transform(geometry,25832)) as geometry	
FROM sweco.wfselemets where geometrytype = 'Line';


create table sweco.wfselements_fla_25832 AS 
SELECT 
    ogc_fid, 
	gml_id, 
	elementid, 
	elementname, 
	elementtypekey, 
	elementtypename, 
	element_description, 
	measure, 
	unittype, 
	perimeter, 
	address, 
	level_1_workareatypes, 
	level_1_workareas, 
	level_2_workareas, 
	level_2_workareatypes,
	origin, 
	created::timestamp, 
	createdby, 
	days_from_creation, 
	updated::timestamp, 
	updatedby,  
	days_from_update, 
	status, 
	geometrytype, 
	st_multi(st_transform(geometry,25832)) as geometry	
FROM sweco.wfselemets where geometrytype = 'Polygon';

create table sweco.wfselements_pkt_25832 AS 
SELECT 
    ogc_fid, 
	gml_id, 
	elementid, 
	elementname, 
	elementtypekey, 
	elementtypename, 
	element_description, 
	measure, 
	unittype, 
	perimeter, 
	address, 
	level_1_workareatypes, 
	level_1_workareas, 
	level_2_workareas, 
	level_2_workareatypes,
	origin, 
	created::timestamp, 
	createdby, 
	days_from_creation, 
	updated::timestamp, 
	updatedby,  
	days_from_update, 
	status, 
	geometrytype, 
	st_transform(geometry,25832) as geometry	
FROM sweco.wfselemets where geometrytype = 'Point'

create table sweco.wfsarbomr_fla_25832 AS  
SELECT 
	ogc_fid, 
	gml_id, 
	status, 
    workareatypekey, 
    workareatypename, 
	workareakey, 
	workareaid, 
	workareanumber, 
	workareaname, 
	workarea_description, 
    level_2_workareas, 
	measure, 
	perimeter, 
	address, 
	responsible, 
	renhold, 
	eannumber, 
	handler, 
	handlercontact1, 
	handlercontact2, 
	customercontact,
	type, 
	link, 
	created::timestamp, 
	createdby, 
	updated::timestamp, 
	updatedby, 
	st_multi(st_transform(geometry,25832)) as geometry
FROM sweco.wfsarbomr ;

CREATE INDEX ON sweco.wfselements_fla_25832 USING gist (geometry);
CREATE INDEX ON sweco.wfselements_lin_25832 USING gist (geometry);
CREATE INDEX ON sweco.wfselements_pkt_25832 USING gist (geometry);
CREATE INDEX ON sweco.wfsarbomr_fla_25832 USING gist (geometry);

ALTER TABLE sweco.wfselements_pkt_25832 ADD PRIMARY KEY (gml_id);
ALTER TABLE sweco.wfselements_lin_25832 ADD PRIMARY KEY (gml_id);
ALTER TABLE sweco.wfselements_fla_25832 ADD PRIMARY KEY (gml_id);
ALTER TABLE sweco.wfsarbomr_fla_25832 ADD PRIMARY KEY (gml_id);

