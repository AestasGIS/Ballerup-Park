# Python Console
# Use iface to access QGIS API interface or type '?' for more info
# Security warning: typing commands from an untrusted source can harm your computer
exec(compile(Path('C:/Users/scn997/AppData/Local/Temp/tmpmny8asnj').read_text(), 'new_views_elements_workspaces.py', 'exec'))
CREATE SCHEMA IF NOT EXISTS "vt_vintertjeneste";

--VT Håndrute 1 / F / RPF
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_rpf" RENAME TO "vt_haandrute_1_rpf_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_rpf" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.ekstra #>>'{AOT1,text}' AS att_aot1,
    a.ekstra #>>'{BLT,text}' AS att_blt,
    a.ekstra #>>'{FR,text}' AS att_fr,
    a.ekstra #>>'{FTVR,text}' AS att_ftvr,
    a.ekstra #>>'{GFBM,text}' AS att_gfbm,
    a.ekstra #>>'{HBR,text}' AS att_hbr,
    a.ekstra #>>'{KT,text}' AS att_kt,
    a.ekstra #>>'{RVSF,text}' AS att_rvsf,
    a.ekstra #>>'{TiSy,text}' AS att_tisy,
    a.ekstra #>>'{TUR,text}' AS att_tur,
    a.ekstra #>>'{UE,text}' AS att_ue,
    a.ekstra #>>'{UER,text}' AS att_uer,
    a.ekstra #>>'{UKB,text}' AS att_ukb,
    a.ekstra #>>'{ViHAr,text}' AS att_vihar,
    a.ekstra #>>'{ViRuH,text}' AS att_viruh,
    a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
    a.ekstra #>>'{VTj,text}' AS att_vtj,
    a.geom
  FROM elementer.element_flader a
    JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = 'RPF'  AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / F / PKP
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_pkp" RENAME TO "vt_haandrute_1_pkp_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_pkp" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.ekstra #>>'{AOT1,text}' AS att_aot1,
    a.ekstra #>>'{BeLTy,text}' AS att_belty,
    a.ekstra #>>'{FKl,text}' AS att_fkl,
    a.ekstra #>>'{FR,text}' AS att_fr,
    a.ekstra #>>'{FTVR,text}' AS att_ftvr,
    a.ekstra #>>'{GFBM,text}' AS att_gfbm,
    a.ekstra #>>'{KT,text}' AS att_kt,
    a.ekstra #>>'{UE,text}' AS att_ue,
    a.ekstra #>>'{UER,text}' AS att_uer,
    a.ekstra #>>'{VeSt,text}' AS att_vest,
    a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
    a.ekstra #>>'{ViRuV,text}' AS att_viruv,
    a.ekstra #>>'{VVK,text}' AS att_vvk,
    a.geom
  FROM elementer.element_flader a
    JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = 'PKP'  AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / F / TRPF
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_trpf" RENAME TO "vt_haandrute_1_trpf_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_trpf" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.ekstra #>>'{AOT1,text}' AS att_aot1,
    a.ekstra #>>'{BLT,text}' AS att_blt,
    a.ekstra #>>'{FR,text}' AS att_fr,
    a.ekstra #>>'{FTVR,text}' AS att_ftvr,
    a.ekstra #>>'{GFBM,text}' AS att_gfbm,
    a.ekstra #>>'{HBR,text}' AS att_hbr,
    a.ekstra #>>'{IFHI,text}' AS att_ifhi,
    a.ekstra #>>'{KT,text}' AS att_kt,
    a.ekstra #>>'{RVSF,text}' AS att_rvsf,
    a.ekstra #>>'{TiSy,text}' AS att_tisy,
    a.ekstra #>>'{TUR,text}' AS att_tur,
    a.ekstra #>>'{UER,text}' AS att_uer,
    a.ekstra #>>'{UKB,text}' AS att_ukb,
    a.ekstra #>>'{ViHAr,text}' AS att_vihar,
    a.ekstra #>>'{ViRuH,text}' AS att_viruh,
    a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
    a.ekstra #>>'{VTj,text}' AS att_vtj,
    a.geom
  FROM elementer.element_flader a
    JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = 'TRPF'  AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / F / FDF
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_fdf" RENAME TO "vt_haandrute_1_fdf_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_fdf" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.ekstra #>>'{AOT1,text}' AS att_aot1,
    a.ekstra #>>'{BeLTy,text}' AS att_belty,
    a.ekstra #>>'{BLT,text}' AS att_blt,
    a.ekstra #>>'{FKl,text}' AS att_fkl,
    a.ekstra #>>'{FR,text}' AS att_fr,
    a.ekstra #>>'{FTVR,text}' AS att_ftvr,
    a.ekstra #>>'{GFBM,text}' AS att_gfbm,
    a.ekstra #>>'{GaaGa,text}' AS att_gaaga,
    a.ekstra #>>'{HBR,text}' AS att_hbr,
    a.ekstra #>>'{KT,text}' AS att_kt,
    a.ekstra #>>'{RVSF,text}' AS att_rvsf,
    a.ekstra #>>'{TiSy,text}' AS att_tisy,
    a.ekstra #>>'{TUR,text}' AS att_tur,
    a.ekstra #>>'{TYPE,text}' AS att_type,
    a.ekstra #>>'{UE,text}' AS att_ue,
    a.ekstra #>>'{UER,text}' AS att_uer,
    a.ekstra #>>'{UKB,text}' AS att_ukb,
    a.ekstra #>>'{VeSt,text}' AS att_vest,
    a.ekstra #>>'{ViHAr,text}' AS att_vihar,
    a.ekstra #>>'{ViRuH,text}' AS att_viruh,
    a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
    a.ekstra #>>'{ViRuV,text}' AS att_viruv,
    a.ekstra #>>'{VTj,text}' AS att_vtj,
    a.geom
  FROM elementer.element_flader a
    JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = 'FDF'  AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / F / AP
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_ap" RENAME TO "vt_haandrute_1_ap_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_ap" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.ekstra #>>'{AOT1,text}' AS att_aot1,
    a.ekstra #>>'{BeLTy,text}' AS att_belty,
    a.ekstra #>>'{FKl,text}' AS att_fkl,
    a.ekstra #>>'{FR,text}' AS att_fr,
    a.ekstra #>>'{FTVR,text}' AS att_ftvr,
    a.ekstra #>>'{GFBM,text}' AS att_gfbm,
    a.ekstra #>>'{KT,text}' AS att_kt,
    a.ekstra #>>'{UE,text}' AS att_ue,
    a.ekstra #>>'{UER,text}' AS att_uer,
    a.ekstra #>>'{VeSt,text}' AS att_vest,
    a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
    a.ekstra #>>'{ViRuV,text}' AS att_viruv,
    a.ekstra #>>'{VVK,text}' AS att_vvk,
    a.geom
  FROM elementer.element_flader a
    JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = 'AP'  AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / F / InStPl
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_instpl" RENAME TO "vt_haandrute_1_instpl_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_instpl" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.ekstra #>>'{AOT1,text}' AS att_aot1,
    a.ekstra #>>'{AOT2,text}' AS att_aot2,
    a.ekstra #>>'{FTVR,text}' AS att_ftvr,
    a.ekstra #>>'{GFBM,text}' AS att_gfbm,
    a.ekstra #>>'{RVSF,text}' AS att_rvsf,
    a.ekstra #>>'{TiSy,text}' AS att_tisy,
    a.ekstra #>>'{UER,text}' AS att_uer,
    a.ekstra #>>'{ViHAr,text}' AS att_vihar,
    a.ekstra #>>'{ViRuH,text}' AS att_viruh,
    a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
    a.ekstra #>>'{VTj,text}' AS att_vtj,
    a.geom
  FROM elementer.element_flader a
    JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = 'InStPl'  AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / InSt
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_inst" RENAME TO "vt_haandrute_1_inst_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_inst" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'InSt' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / TRPL
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_trpl" RENAME TO "vt_haandrute_1_trpl_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_trpl" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'TRPL' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / FDL
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_fdl" RENAME TO "vt_haandrute_1_fdl_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_fdl" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'FDL' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / V4S
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_v4s" RENAME TO "vt_haandrute_1_v4s_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_v4s" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'V4S' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / InVe
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_inve" RENAME TO "vt_haandrute_1_inve_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_inve" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'InVe' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / V2S
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_v2s" RENAME TO "vt_haandrute_1_v2s_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_v2s" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'V2S' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / RPL
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_rpl" RENAME TO "vt_haandrute_1_rpl_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_rpl" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'RPL' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / V4SMR
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_v4smr" RENAME TO "vt_haandrute_1_v4smr_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_v4smr" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'V4SMR' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / CySt
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_cyst" RENAME TO "vt_haandrute_1_cyst_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_cyst" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'CySt' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / L / V2SMR
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_v2smr" RENAME TO "vt_haandrute_1_v2smr_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_v2smr" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'V2SMR' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


--VT Håndrute 1 / P / TRPB
-------------------------------------------------------------------------
ALTER VIEW IF EXISTS "vt_vintertjeneste"."vt_haandrute_1_trpb" RENAME TO "vt_haandrute_1_trpb_20250630";

CREATE VIEW "vt_vintertjeneste"."vt_haandrute_1_trpb" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    1 AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'stk.'::text AS unittype,
    'Point'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
    a.geom
  FROM elementer.element_punkter a
    LEFT JOIN elementer.element_punkter_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_punkter_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = 'TRPB' AND b.level_1_workareas ~~ '%VT Håndrute 1%'::text;