CREATE SCHEMA vt_vintertjeneste_test;

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1086 (class 1259 OID 652813)
-- Name: vt_haandrute_1_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1087 (class 1259 OID 652818)
-- Name: vt_haandrute_1_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1088 (class 1259 OID 652823)
-- Name: vt_haandrute_1_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1090 (class 1259 OID 652833)
-- Name: vt_haandrute_1_rpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_rpf AS
 SELECT rpf.ogc_fid AS gid,
    rpf.ogc_fid,
    rpf.gml_id,
    rpf.elementid,
    rpf.elementname,
    rpf.measure,
    rpf.perimeter,
    rpf.element_description,
    rpf.address,
    rpf.created,
    rpf.updated,
    rpf.origin,
    rpf.elementtypekey,
    rpf.elementtypename,
    rpf.unittype,
    rpf.geometrytype,
    rpf.status,
    rpf.createdby,
    rpf.updatedby,
    rpf.days_from_creation,
    rpf.days_from_update,
    rpf.level_1_workareas,
    rpf.level_1_workareatypes,
    rpf.level_2_workareas,
    rpf.level_2_workareatypes,
    rpf.att_aot1,
    rpf.att_blt,
    rpf.att_fr,
    rpf.att_ftvr,
    rpf.att_gfbm,
    rpf.att_hbr,
    rpf.att_kt,
    rpf.att_rvsf,
    rpf.att_tisy,
    rpf.att_tur,
    rpf.att_ue,
    rpf.att_uer,
    rpf.att_ukb,
    rpf.att_vihar,
    rpf.att_viruh,
    rpf.att_virusf,
    rpf.att_vtj,
    rpf.geom
   FROM driftweb.rpf
  WHERE ((rpf.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1089 (class 1259 OID 652828)
-- Name: vt_haandrute_1_rpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_rpl AS
 SELECT rpl.ogc_fid AS gid,
    rpl.ogc_fid,
    rpl.gml_id,
    rpl.elementid,
    rpl.elementname,
    rpl.measure,
    rpl.perimeter,
    rpl.element_description,
    rpl.address,
    rpl.created,
    rpl.updated,
    rpl.origin,
    rpl.elementtypekey,
    rpl.elementtypename,
    rpl.unittype,
    rpl.geometrytype,
    rpl.status,
    rpl.createdby,
    rpl.updatedby,
    rpl.days_from_creation,
    rpl.days_from_update,
    rpl.level_1_workareas,
    rpl.level_1_workareatypes,
    rpl.level_2_workareas,
    rpl.level_2_workareatypes,
    rpl.att_aot1,
    rpl.att_blt,
    rpl.att_fr,
    rpl.att_ftvr,
    rpl.att_gfbm,
    rpl.att_hbr,
    rpl.att_kt,
    rpl.att_rvsf,
    rpl.att_tisy,
    rpl.att_tur,
    rpl.att_ue,
    rpl.att_uer,
    rpl.att_ukb,
    rpl.att_vihar,
    rpl.att_viruh,
    rpl.att_virusf,
    rpl.att_vtj,
    rpl.geom
   FROM driftweb.rpl
  WHERE ((rpl.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1091 (class 1259 OID 652838)
-- Name: vt_haandrute_1_trpb; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_trpb AS
 SELECT trpb.ogc_fid AS gid,
    trpb.ogc_fid,
    trpb.gml_id,
    trpb.elementid,
    trpb.elementname,
    trpb.measure,
    trpb.perimeter,
    trpb.element_description,
    trpb.address,
    trpb.created,
    trpb.updated,
    trpb.origin,
    trpb.elementtypekey,
    trpb.elementtypename,
    trpb.unittype,
    trpb.geometrytype,
    trpb.status,
    trpb.createdby,
    trpb.updatedby,
    trpb.days_from_creation,
    trpb.days_from_update,
    trpb.level_1_workareas,
    trpb.level_1_workareatypes,
    trpb.level_2_workareas,
    trpb.level_2_workareatypes,
    trpb.att_aot1,
    trpb.att_aot2,
    trpb.att_fr,
    trpb.att_gfbm,
    trpb.att_hbr,
    trpb.att_ifhi,
    trpb.att_kt,
    trpb.att_rvsf,
    trpb.att_tur,
    trpb.att_uer,
    trpb.att_ukb,
    trpb.att_vihar,
    trpb.att_viruh,
    trpb.att_virusf,
    trpb.geom
   FROM driftweb.trpb
  WHERE ((trpb.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1092 (class 1259 OID 652843)
-- Name: vt_haandrute_1_trpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_trpf AS
 SELECT trpf.ogc_fid AS gid,
    trpf.ogc_fid,
    trpf.gml_id,
    trpf.elementid,
    trpf.elementname,
    trpf.measure,
    trpf.perimeter,
    trpf.element_description,
    trpf.address,
    trpf.created,
    trpf.updated,
    trpf.origin,
    trpf.elementtypekey,
    trpf.elementtypename,
    trpf.unittype,
    trpf.geometrytype,
    trpf.status,
    trpf.createdby,
    trpf.updatedby,
    trpf.days_from_creation,
    trpf.days_from_update,
    trpf.level_1_workareas,
    trpf.level_1_workareatypes,
    trpf.level_2_workareas,
    trpf.level_2_workareatypes,
    trpf.att_aot1,
    trpf.att_blt,
    trpf.att_fr,
    trpf.att_ftvr,
    trpf.att_gfbm,
    trpf.att_hbr,
    trpf.att_ifhi,
    trpf.att_kt,
    trpf.att_rvsf,
    trpf.att_tisy,
    trpf.att_tur,
    trpf.att_uer,
    trpf.att_ukb,
    trpf.att_vihar,
    trpf.att_viruh,
    trpf.att_virusf,
    trpf.att_vtj,
    trpf.attachment1,
    trpf.geom
   FROM driftweb.trpf
  WHERE ((trpf.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1093 (class 1259 OID 652848)
-- Name: vt_haandrute_1_trpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_1_trpl AS
 SELECT trpl.ogc_fid AS gid,
    trpl.ogc_fid,
    trpl.gml_id,
    trpl.elementid,
    trpl.elementname,
    trpl.measure,
    trpl.perimeter,
    trpl.element_description,
    trpl.address,
    trpl.created,
    trpl.updated,
    trpl.origin,
    trpl.elementtypekey,
    trpl.elementtypename,
    trpl.unittype,
    trpl.geometrytype,
    trpl.status,
    trpl.createdby,
    trpl.updatedby,
    trpl.days_from_creation,
    trpl.days_from_update,
    trpl.level_1_workareas,
    trpl.level_1_workareatypes,
    trpl.level_2_workareas,
    trpl.level_2_workareatypes,
    trpl.att_aot1,
    trpl.att_blt,
    trpl.att_fr,
    trpl.att_ftvr,
    trpl.att_gfbm,
    trpl.att_hbr,
    trpl.att_ifhi,
    trpl.att_kt,
    trpl.att_rvsf,
    trpl.att_tisy,
    trpl.att_tur,
    trpl.att_uer,
    trpl.att_ukb,
    trpl.att_vihar,
    trpl.att_viruh,
    trpl.att_virusf,
    trpl.att_vtj,
    trpl.geom
   FROM driftweb.trpl
  WHERE ((trpl.level_1_workareas)::text ~~ '%VT Håndrute 1%'::text);


--
-- TOC entry 1094 (class 1259 OID 652853)
-- Name: vt_haandrute_2_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1095 (class 1259 OID 652858)
-- Name: vt_haandrute_2_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1096 (class 1259 OID 652863)
-- Name: vt_haandrute_2_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1097 (class 1259 OID 652868)
-- Name: vt_haandrute_2_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1099 (class 1259 OID 652878)
-- Name: vt_haandrute_2_rpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_rpf AS
 SELECT rpf.ogc_fid AS gid,
    rpf.ogc_fid,
    rpf.gml_id,
    rpf.elementid,
    rpf.elementname,
    rpf.measure,
    rpf.perimeter,
    rpf.element_description,
    rpf.address,
    rpf.created,
    rpf.updated,
    rpf.origin,
    rpf.elementtypekey,
    rpf.elementtypename,
    rpf.unittype,
    rpf.geometrytype,
    rpf.status,
    rpf.createdby,
    rpf.updatedby,
    rpf.days_from_creation,
    rpf.days_from_update,
    rpf.level_1_workareas,
    rpf.level_1_workareatypes,
    rpf.level_2_workareas,
    rpf.level_2_workareatypes,
    rpf.att_aot1,
    rpf.att_blt,
    rpf.att_fr,
    rpf.att_ftvr,
    rpf.att_gfbm,
    rpf.att_hbr,
    rpf.att_kt,
    rpf.att_rvsf,
    rpf.att_tisy,
    rpf.att_tur,
    rpf.att_ue,
    rpf.att_uer,
    rpf.att_ukb,
    rpf.att_vihar,
    rpf.att_viruh,
    rpf.att_virusf,
    rpf.att_vtj,
    rpf.geom
   FROM driftweb.rpf
  WHERE ((rpf.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1098 (class 1259 OID 652873)
-- Name: vt_haandrute_2_rpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_rpl AS
 SELECT rpl.ogc_fid AS gid,
    rpl.ogc_fid,
    rpl.gml_id,
    rpl.elementid,
    rpl.elementname,
    rpl.measure,
    rpl.perimeter,
    rpl.element_description,
    rpl.address,
    rpl.created,
    rpl.updated,
    rpl.origin,
    rpl.elementtypekey,
    rpl.elementtypename,
    rpl.unittype,
    rpl.geometrytype,
    rpl.status,
    rpl.createdby,
    rpl.updatedby,
    rpl.days_from_creation,
    rpl.days_from_update,
    rpl.level_1_workareas,
    rpl.level_1_workareatypes,
    rpl.level_2_workareas,
    rpl.level_2_workareatypes,
    rpl.att_aot1,
    rpl.att_blt,
    rpl.att_fr,
    rpl.att_ftvr,
    rpl.att_gfbm,
    rpl.att_hbr,
    rpl.att_kt,
    rpl.att_rvsf,
    rpl.att_tisy,
    rpl.att_tur,
    rpl.att_ue,
    rpl.att_uer,
    rpl.att_ukb,
    rpl.att_vihar,
    rpl.att_viruh,
    rpl.att_virusf,
    rpl.att_vtj,
    rpl.geom
   FROM driftweb.rpl
  WHERE ((rpl.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1100 (class 1259 OID 652883)
-- Name: vt_haandrute_2_trpb; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_trpb AS
 SELECT trpb.ogc_fid AS gid,
    trpb.ogc_fid,
    trpb.gml_id,
    trpb.elementid,
    trpb.elementname,
    trpb.measure,
    trpb.perimeter,
    trpb.element_description,
    trpb.address,
    trpb.created,
    trpb.updated,
    trpb.origin,
    trpb.elementtypekey,
    trpb.elementtypename,
    trpb.unittype,
    trpb.geometrytype,
    trpb.status,
    trpb.createdby,
    trpb.updatedby,
    trpb.days_from_creation,
    trpb.days_from_update,
    trpb.level_1_workareas,
    trpb.level_1_workareatypes,
    trpb.level_2_workareas,
    trpb.level_2_workareatypes,
    trpb.att_aot1,
    trpb.att_aot2,
    trpb.att_fr,
    trpb.att_gfbm,
    trpb.att_hbr,
    trpb.att_ifhi,
    trpb.att_kt,
    trpb.att_rvsf,
    trpb.att_tur,
    trpb.att_uer,
    trpb.att_ukb,
    trpb.att_vihar,
    trpb.att_viruh,
    trpb.att_virusf,
    trpb.geom
   FROM driftweb.trpb
  WHERE ((trpb.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1101 (class 1259 OID 652888)
-- Name: vt_haandrute_2_trpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_trpf AS
 SELECT trpf.ogc_fid AS gid,
    trpf.ogc_fid,
    trpf.gml_id,
    trpf.elementid,
    trpf.elementname,
    trpf.measure,
    trpf.perimeter,
    trpf.element_description,
    trpf.address,
    trpf.created,
    trpf.updated,
    trpf.origin,
    trpf.elementtypekey,
    trpf.elementtypename,
    trpf.unittype,
    trpf.geometrytype,
    trpf.status,
    trpf.createdby,
    trpf.updatedby,
    trpf.days_from_creation,
    trpf.days_from_update,
    trpf.level_1_workareas,
    trpf.level_1_workareatypes,
    trpf.level_2_workareas,
    trpf.level_2_workareatypes,
    trpf.att_aot1,
    trpf.att_blt,
    trpf.att_fr,
    trpf.att_ftvr,
    trpf.att_gfbm,
    trpf.att_hbr,
    trpf.att_ifhi,
    trpf.att_kt,
    trpf.att_rvsf,
    trpf.att_tisy,
    trpf.att_tur,
    trpf.att_uer,
    trpf.att_ukb,
    trpf.att_vihar,
    trpf.att_viruh,
    trpf.att_virusf,
    trpf.att_vtj,
    trpf.attachment1,
    trpf.geom
   FROM driftweb.trpf
  WHERE ((trpf.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1102 (class 1259 OID 652893)
-- Name: vt_haandrute_2_trpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_2_trpl AS
 SELECT trpl.ogc_fid AS gid,
    trpl.ogc_fid,
    trpl.gml_id,
    trpl.elementid,
    trpl.elementname,
    trpl.measure,
    trpl.perimeter,
    trpl.element_description,
    trpl.address,
    trpl.created,
    trpl.updated,
    trpl.origin,
    trpl.elementtypekey,
    trpl.elementtypename,
    trpl.unittype,
    trpl.geometrytype,
    trpl.status,
    trpl.createdby,
    trpl.updatedby,
    trpl.days_from_creation,
    trpl.days_from_update,
    trpl.level_1_workareas,
    trpl.level_1_workareatypes,
    trpl.level_2_workareas,
    trpl.level_2_workareatypes,
    trpl.att_aot1,
    trpl.att_blt,
    trpl.att_fr,
    trpl.att_ftvr,
    trpl.att_gfbm,
    trpl.att_hbr,
    trpl.att_ifhi,
    trpl.att_kt,
    trpl.att_rvsf,
    trpl.att_tisy,
    trpl.att_tur,
    trpl.att_uer,
    trpl.att_ukb,
    trpl.att_vihar,
    trpl.att_viruh,
    trpl.att_virusf,
    trpl.att_vtj,
    trpl.geom
   FROM driftweb.trpl
  WHERE ((trpl.level_1_workareas)::text ~~ '%VT Håndrute 2%'::text);


--
-- TOC entry 1103 (class 1259 OID 652898)
-- Name: vt_haandrute_3_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1104 (class 1259 OID 652903)
-- Name: vt_haandrute_3_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1105 (class 1259 OID 652908)
-- Name: vt_haandrute_3_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1106 (class 1259 OID 652913)
-- Name: vt_haandrute_3_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1108 (class 1259 OID 652923)
-- Name: vt_haandrute_3_rpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_rpf AS
 SELECT rpf.ogc_fid AS gid,
    rpf.ogc_fid,
    rpf.gml_id,
    rpf.elementid,
    rpf.elementname,
    rpf.measure,
    rpf.perimeter,
    rpf.element_description,
    rpf.address,
    rpf.created,
    rpf.updated,
    rpf.origin,
    rpf.elementtypekey,
    rpf.elementtypename,
    rpf.unittype,
    rpf.geometrytype,
    rpf.status,
    rpf.createdby,
    rpf.updatedby,
    rpf.days_from_creation,
    rpf.days_from_update,
    rpf.level_1_workareas,
    rpf.level_1_workareatypes,
    rpf.level_2_workareas,
    rpf.level_2_workareatypes,
    rpf.att_aot1,
    rpf.att_blt,
    rpf.att_fr,
    rpf.att_ftvr,
    rpf.att_gfbm,
    rpf.att_hbr,
    rpf.att_kt,
    rpf.att_rvsf,
    rpf.att_tisy,
    rpf.att_tur,
    rpf.att_ue,
    rpf.att_uer,
    rpf.att_ukb,
    rpf.att_vihar,
    rpf.att_viruh,
    rpf.att_virusf,
    rpf.att_vtj,
    rpf.geom
   FROM driftweb.rpf
  WHERE ((rpf.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1107 (class 1259 OID 652918)
-- Name: vt_haandrute_3_rpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_rpl AS
 SELECT rpl.ogc_fid AS gid,
    rpl.ogc_fid,
    rpl.gml_id,
    rpl.elementid,
    rpl.elementname,
    rpl.measure,
    rpl.perimeter,
    rpl.element_description,
    rpl.address,
    rpl.created,
    rpl.updated,
    rpl.origin,
    rpl.elementtypekey,
    rpl.elementtypename,
    rpl.unittype,
    rpl.geometrytype,
    rpl.status,
    rpl.createdby,
    rpl.updatedby,
    rpl.days_from_creation,
    rpl.days_from_update,
    rpl.level_1_workareas,
    rpl.level_1_workareatypes,
    rpl.level_2_workareas,
    rpl.level_2_workareatypes,
    rpl.att_aot1,
    rpl.att_blt,
    rpl.att_fr,
    rpl.att_ftvr,
    rpl.att_gfbm,
    rpl.att_hbr,
    rpl.att_kt,
    rpl.att_rvsf,
    rpl.att_tisy,
    rpl.att_tur,
    rpl.att_ue,
    rpl.att_uer,
    rpl.att_ukb,
    rpl.att_vihar,
    rpl.att_viruh,
    rpl.att_virusf,
    rpl.att_vtj,
    rpl.geom
   FROM driftweb.rpl
  WHERE ((rpl.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1109 (class 1259 OID 652928)
-- Name: vt_haandrute_3_trpb; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_trpb AS
 SELECT trpb.ogc_fid AS gid,
    trpb.ogc_fid,
    trpb.gml_id,
    trpb.elementid,
    trpb.elementname,
    trpb.measure,
    trpb.perimeter,
    trpb.element_description,
    trpb.address,
    trpb.created,
    trpb.updated,
    trpb.origin,
    trpb.elementtypekey,
    trpb.elementtypename,
    trpb.unittype,
    trpb.geometrytype,
    trpb.status,
    trpb.createdby,
    trpb.updatedby,
    trpb.days_from_creation,
    trpb.days_from_update,
    trpb.level_1_workareas,
    trpb.level_1_workareatypes,
    trpb.level_2_workareas,
    trpb.level_2_workareatypes,
    trpb.att_aot1,
    trpb.att_aot2,
    trpb.att_fr,
    trpb.att_gfbm,
    trpb.att_hbr,
    trpb.att_ifhi,
    trpb.att_kt,
    trpb.att_rvsf,
    trpb.att_tur,
    trpb.att_uer,
    trpb.att_ukb,
    trpb.att_vihar,
    trpb.att_viruh,
    trpb.att_virusf,
    trpb.geom
   FROM driftweb.trpb
  WHERE ((trpb.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1110 (class 1259 OID 652933)
-- Name: vt_haandrute_3_trpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_trpf AS
 SELECT trpf.ogc_fid AS gid,
    trpf.ogc_fid,
    trpf.gml_id,
    trpf.elementid,
    trpf.elementname,
    trpf.measure,
    trpf.perimeter,
    trpf.element_description,
    trpf.address,
    trpf.created,
    trpf.updated,
    trpf.origin,
    trpf.elementtypekey,
    trpf.elementtypename,
    trpf.unittype,
    trpf.geometrytype,
    trpf.status,
    trpf.createdby,
    trpf.updatedby,
    trpf.days_from_creation,
    trpf.days_from_update,
    trpf.level_1_workareas,
    trpf.level_1_workareatypes,
    trpf.level_2_workareas,
    trpf.level_2_workareatypes,
    trpf.att_aot1,
    trpf.att_blt,
    trpf.att_fr,
    trpf.att_ftvr,
    trpf.att_gfbm,
    trpf.att_hbr,
    trpf.att_ifhi,
    trpf.att_kt,
    trpf.att_rvsf,
    trpf.att_tisy,
    trpf.att_tur,
    trpf.att_uer,
    trpf.att_ukb,
    trpf.att_vihar,
    trpf.att_viruh,
    trpf.att_virusf,
    trpf.att_vtj,
    trpf.attachment1,
    trpf.geom
   FROM driftweb.trpf
  WHERE ((trpf.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1111 (class 1259 OID 652938)
-- Name: vt_haandrute_3_trpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_3_trpl AS
 SELECT trpl.ogc_fid AS gid,
    trpl.ogc_fid,
    trpl.gml_id,
    trpl.elementid,
    trpl.elementname,
    trpl.measure,
    trpl.perimeter,
    trpl.element_description,
    trpl.address,
    trpl.created,
    trpl.updated,
    trpl.origin,
    trpl.elementtypekey,
    trpl.elementtypename,
    trpl.unittype,
    trpl.geometrytype,
    trpl.status,
    trpl.createdby,
    trpl.updatedby,
    trpl.days_from_creation,
    trpl.days_from_update,
    trpl.level_1_workareas,
    trpl.level_1_workareatypes,
    trpl.level_2_workareas,
    trpl.level_2_workareatypes,
    trpl.att_aot1,
    trpl.att_blt,
    trpl.att_fr,
    trpl.att_ftvr,
    trpl.att_gfbm,
    trpl.att_hbr,
    trpl.att_ifhi,
    trpl.att_kt,
    trpl.att_rvsf,
    trpl.att_tisy,
    trpl.att_tur,
    trpl.att_uer,
    trpl.att_ukb,
    trpl.att_vihar,
    trpl.att_viruh,
    trpl.att_virusf,
    trpl.att_vtj,
    trpl.geom
   FROM driftweb.trpl
  WHERE ((trpl.level_1_workareas)::text ~~ '%VT Håndrute 3%'::text);


--
-- TOC entry 1112 (class 1259 OID 652943)
-- Name: vt_haandrute_4_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1113 (class 1259 OID 652948)
-- Name: vt_haandrute_4_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1114 (class 1259 OID 652953)
-- Name: vt_haandrute_4_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1115 (class 1259 OID 652958)
-- Name: vt_haandrute_4_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1117 (class 1259 OID 652968)
-- Name: vt_haandrute_4_rpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_rpf AS
 SELECT rpf.ogc_fid AS gid,
    rpf.ogc_fid,
    rpf.gml_id,
    rpf.elementid,
    rpf.elementname,
    rpf.measure,
    rpf.perimeter,
    rpf.element_description,
    rpf.address,
    rpf.created,
    rpf.updated,
    rpf.origin,
    rpf.elementtypekey,
    rpf.elementtypename,
    rpf.unittype,
    rpf.geometrytype,
    rpf.status,
    rpf.createdby,
    rpf.updatedby,
    rpf.days_from_creation,
    rpf.days_from_update,
    rpf.level_1_workareas,
    rpf.level_1_workareatypes,
    rpf.level_2_workareas,
    rpf.level_2_workareatypes,
    rpf.att_aot1,
    rpf.att_blt,
    rpf.att_fr,
    rpf.att_ftvr,
    rpf.att_gfbm,
    rpf.att_hbr,
    rpf.att_kt,
    rpf.att_rvsf,
    rpf.att_tisy,
    rpf.att_tur,
    rpf.att_ue,
    rpf.att_uer,
    rpf.att_ukb,
    rpf.att_vihar,
    rpf.att_viruh,
    rpf.att_virusf,
    rpf.att_vtj,
    rpf.geom
   FROM driftweb.rpf
  WHERE ((rpf.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1116 (class 1259 OID 652963)
-- Name: vt_haandrute_4_rpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_rpl AS
 SELECT rpl.ogc_fid AS gid,
    rpl.ogc_fid,
    rpl.gml_id,
    rpl.elementid,
    rpl.elementname,
    rpl.measure,
    rpl.perimeter,
    rpl.element_description,
    rpl.address,
    rpl.created,
    rpl.updated,
    rpl.origin,
    rpl.elementtypekey,
    rpl.elementtypename,
    rpl.unittype,
    rpl.geometrytype,
    rpl.status,
    rpl.createdby,
    rpl.updatedby,
    rpl.days_from_creation,
    rpl.days_from_update,
    rpl.level_1_workareas,
    rpl.level_1_workareatypes,
    rpl.level_2_workareas,
    rpl.level_2_workareatypes,
    rpl.att_aot1,
    rpl.att_blt,
    rpl.att_fr,
    rpl.att_ftvr,
    rpl.att_gfbm,
    rpl.att_hbr,
    rpl.att_kt,
    rpl.att_rvsf,
    rpl.att_tisy,
    rpl.att_tur,
    rpl.att_ue,
    rpl.att_uer,
    rpl.att_ukb,
    rpl.att_vihar,
    rpl.att_viruh,
    rpl.att_virusf,
    rpl.att_vtj,
    rpl.geom
   FROM driftweb.rpl
  WHERE ((rpl.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1118 (class 1259 OID 652973)
-- Name: vt_haandrute_4_trpb; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_trpb AS
 SELECT trpb.ogc_fid AS gid,
    trpb.ogc_fid,
    trpb.gml_id,
    trpb.elementid,
    trpb.elementname,
    trpb.measure,
    trpb.perimeter,
    trpb.element_description,
    trpb.address,
    trpb.created,
    trpb.updated,
    trpb.origin,
    trpb.elementtypekey,
    trpb.elementtypename,
    trpb.unittype,
    trpb.geometrytype,
    trpb.status,
    trpb.createdby,
    trpb.updatedby,
    trpb.days_from_creation,
    trpb.days_from_update,
    trpb.level_1_workareas,
    trpb.level_1_workareatypes,
    trpb.level_2_workareas,
    trpb.level_2_workareatypes,
    trpb.att_aot1,
    trpb.att_aot2,
    trpb.att_fr,
    trpb.att_gfbm,
    trpb.att_hbr,
    trpb.att_ifhi,
    trpb.att_kt,
    trpb.att_rvsf,
    trpb.att_tur,
    trpb.att_uer,
    trpb.att_ukb,
    trpb.att_vihar,
    trpb.att_viruh,
    trpb.att_virusf,
    trpb.geom
   FROM driftweb.trpb
  WHERE ((trpb.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1119 (class 1259 OID 652978)
-- Name: vt_haandrute_4_trpf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_trpf AS
 SELECT trpf.ogc_fid AS gid,
    trpf.ogc_fid,
    trpf.gml_id,
    trpf.elementid,
    trpf.elementname,
    trpf.measure,
    trpf.perimeter,
    trpf.element_description,
    trpf.address,
    trpf.created,
    trpf.updated,
    trpf.origin,
    trpf.elementtypekey,
    trpf.elementtypename,
    trpf.unittype,
    trpf.geometrytype,
    trpf.status,
    trpf.createdby,
    trpf.updatedby,
    trpf.days_from_creation,
    trpf.days_from_update,
    trpf.level_1_workareas,
    trpf.level_1_workareatypes,
    trpf.level_2_workareas,
    trpf.level_2_workareatypes,
    trpf.att_aot1,
    trpf.att_blt,
    trpf.att_fr,
    trpf.att_ftvr,
    trpf.att_gfbm,
    trpf.att_hbr,
    trpf.att_ifhi,
    trpf.att_kt,
    trpf.att_rvsf,
    trpf.att_tisy,
    trpf.att_tur,
    trpf.att_uer,
    trpf.att_ukb,
    trpf.att_vihar,
    trpf.att_viruh,
    trpf.att_virusf,
    trpf.att_vtj,
    trpf.attachment1,
    trpf.geom
   FROM driftweb.trpf
  WHERE ((trpf.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1120 (class 1259 OID 652983)
-- Name: vt_haandrute_4_trpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_haandrute_4_trpl AS
 SELECT trpl.ogc_fid AS gid,
    trpl.ogc_fid,
    trpl.gml_id,
    trpl.elementid,
    trpl.elementname,
    trpl.measure,
    trpl.perimeter,
    trpl.element_description,
    trpl.address,
    trpl.created,
    trpl.updated,
    trpl.origin,
    trpl.elementtypekey,
    trpl.elementtypename,
    trpl.unittype,
    trpl.geometrytype,
    trpl.status,
    trpl.createdby,
    trpl.updatedby,
    trpl.days_from_creation,
    trpl.days_from_update,
    trpl.level_1_workareas,
    trpl.level_1_workareatypes,
    trpl.level_2_workareas,
    trpl.level_2_workareatypes,
    trpl.att_aot1,
    trpl.att_blt,
    trpl.att_fr,
    trpl.att_ftvr,
    trpl.att_gfbm,
    trpl.att_hbr,
    trpl.att_ifhi,
    trpl.att_kt,
    trpl.att_rvsf,
    trpl.att_tisy,
    trpl.att_tur,
    trpl.att_uer,
    trpl.att_ukb,
    trpl.att_vihar,
    trpl.att_viruh,
    trpl.att_virusf,
    trpl.att_vtj,
    trpl.geom
   FROM driftweb.trpl
  WHERE ((trpl.level_1_workareas)::text ~~ '%VT Håndrute 4%'::text);


--
-- TOC entry 1154 (class 1259 OID 653153)
-- Name: vt_stirute_12_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_12_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 12, Alternativt tømiddel%'::text);


--
-- TOC entry 1155 (class 1259 OID 653158)
-- Name: vt_stirute_12_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_12_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 12, Alternativt tømiddel%'::text);


--
-- TOC entry 1156 (class 1259 OID 653163)
-- Name: vt_stirute_12_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_12_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 12, Alternativt tømiddel%'::text);


--
-- TOC entry 1157 (class 1259 OID 653168)
-- Name: vt_stirute_12_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_12_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Stirute 12, Alternativt tømiddel%'::text);


--
-- TOC entry 1158 (class 1259 OID 653173)
-- Name: vt_stirute_12_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_12_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Stirute 12, Alternativt tømiddel%'::text);


--
-- TOC entry 1121 (class 1259 OID 652988)
-- Name: vt_stirute_1_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_1_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)%'::text);


--
-- TOC entry 1122 (class 1259 OID 652993)
-- Name: vt_stirute_1_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_1_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)%'::text);


--
-- TOC entry 1123 (class 1259 OID 652998)
-- Name: vt_stirute_1_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_1_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)%'::text);


--
-- TOC entry 1124 (class 1259 OID 653003)
-- Name: vt_stirute_2_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_2_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 2, Ballerup%'::text);


--
-- TOC entry 1125 (class 1259 OID 653008)
-- Name: vt_stirute_2_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_2_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 2, Ballerup%'::text);


--
-- TOC entry 1126 (class 1259 OID 653013)
-- Name: vt_stirute_2_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_2_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 2, Ballerup%'::text);


--
-- TOC entry 1127 (class 1259 OID 653018)
-- Name: vt_stirute_2_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_2_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Stirute 2, Ballerup%'::text);


--
-- TOC entry 1128 (class 1259 OID 653023)
-- Name: vt_stirute_3_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_3_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%'::text);


--
-- TOC entry 1129 (class 1259 OID 653028)
-- Name: vt_stirute_3_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_3_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%'::text);


--
-- TOC entry 1130 (class 1259 OID 653033)
-- Name: vt_stirute_3_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_3_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%'::text);


--
-- TOC entry 1131 (class 1259 OID 653038)
-- Name: vt_stirute_3_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_3_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%'::text);


--
-- TOC entry 1132 (class 1259 OID 653043)
-- Name: vt_stirute_3_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_3_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%'::text);


--
-- TOC entry 1133 (class 1259 OID 653048)
-- Name: vt_stirute_4_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1134 (class 1259 OID 653053)
-- Name: vt_stirute_4_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1135 (class 1259 OID 653058)
-- Name: vt_stirute_4_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1136 (class 1259 OID 653063)
-- Name: vt_stirute_4_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1137 (class 1259 OID 653068)
-- Name: vt_stirute_4_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1201 (class 1259 OID 653394)
-- Name: vt_stirute_4_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1138 (class 1259 OID 653073)
-- Name: vt_stirute_4_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_4_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Stirute 4, Måløv%'::text);


--
-- TOC entry 1139 (class 1259 OID 653078)
-- Name: vt_stirute_5_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_5_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 5, fortove og interne stier syd%'::text);


--
-- TOC entry 1140 (class 1259 OID 653083)
-- Name: vt_stirute_5_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_5_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 5, fortove og interne stier syd%'::text);


--
-- TOC entry 1141 (class 1259 OID 653088)
-- Name: vt_stirute_5_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_5_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 5, fortove og interne stier syd%'::text);


--
-- TOC entry 1142 (class 1259 OID 653093)
-- Name: vt_stirute_5_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_5_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Stirute 5, fortove og interne stier syd%'::text);


--
-- TOC entry 1143 (class 1259 OID 653098)
-- Name: vt_stirute_5_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_5_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Stirute 5, fortove og interne stier syd%'::text);


--
-- TOC entry 1144 (class 1259 OID 653103)
-- Name: vt_stirute_6_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_6_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 6, fortove og interne stier nord%'::text);


--
-- TOC entry 1145 (class 1259 OID 653108)
-- Name: vt_stirute_6_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_6_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 6, fortove og interne stier nord%'::text);


--
-- TOC entry 1146 (class 1259 OID 653113)
-- Name: vt_stirute_6_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_6_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 6, fortove og interne stier nord%'::text);


--
-- TOC entry 1147 (class 1259 OID 653118)
-- Name: vt_stirute_6_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_6_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Stirute 6, fortove og interne stier nord%'::text);


--
-- TOC entry 1148 (class 1259 OID 653123)
-- Name: vt_stirute_6_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_6_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Stirute 6, fortove og interne stier nord%'::text);


--
-- TOC entry 1149 (class 1259 OID 653128)
-- Name: vt_stirute_7_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_7_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Stirute 7%'::text);


--
-- TOC entry 1150 (class 1259 OID 653133)
-- Name: vt_stirute_7_fdf; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_7_fdf AS
 SELECT fdf.ogc_fid AS gid,
    fdf.ogc_fid,
    fdf.gml_id,
    fdf.elementid,
    fdf.elementname,
    fdf.measure,
    fdf.perimeter,
    fdf.element_description,
    fdf.address,
    fdf.created,
    fdf.updated,
    fdf.origin,
    fdf.elementtypekey,
    fdf.elementtypename,
    fdf.unittype,
    fdf.geometrytype,
    fdf.status,
    fdf.createdby,
    fdf.updatedby,
    fdf.days_from_creation,
    fdf.days_from_update,
    fdf.level_1_workareas,
    fdf.level_1_workareatypes,
    fdf.level_2_workareas,
    fdf.level_2_workareatypes,
    fdf.att_aot1,
    fdf.att_belty,
    fdf.att_blt,
    fdf.att_fkl,
    fdf.att_fr,
    fdf.att_ftvr,
    fdf.att_gfbm,
    fdf.att_gaaga,
    fdf.att_hbr,
    fdf.att_kt,
    fdf.att_rvsf,
    fdf.att_tisy,
    fdf.att_tur,
    fdf.att_type,
    fdf.att_ue,
    fdf.att_uer,
    fdf.att_ukb,
    fdf.att_vest,
    fdf.att_vihar,
    fdf.att_viruh,
    fdf.att_virusf,
    fdf.att_viruv,
    fdf.att_vtj,
    fdf.geom
   FROM driftweb.fdf
  WHERE ((fdf.level_1_workareas)::text ~~ '%VT Stirute 7%'::text);


--
-- TOC entry 1151 (class 1259 OID 653138)
-- Name: vt_stirute_7_fdl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_7_fdl AS
 SELECT fdl.ogc_fid AS gid,
    fdl.ogc_fid,
    fdl.gml_id,
    fdl.elementid,
    fdl.elementname,
    fdl.measure,
    fdl.perimeter,
    fdl.element_description,
    fdl.address,
    fdl.created,
    fdl.updated,
    fdl.origin,
    fdl.elementtypekey,
    fdl.elementtypename,
    fdl.unittype,
    fdl.geometrytype,
    fdl.status,
    fdl.createdby,
    fdl.updatedby,
    fdl.days_from_creation,
    fdl.days_from_update,
    fdl.level_1_workareas,
    fdl.level_1_workareatypes,
    fdl.level_2_workareas,
    fdl.level_2_workareatypes,
    fdl.att_aot1,
    fdl.att_bebr,
    fdl.att_belty,
    fdl.att_blt,
    fdl.att_fkl,
    fdl.att_flr,
    fdl.att_fr,
    fdl.att_ftvr,
    fdl.att_gfbm,
    fdl.att_gaaga,
    fdl.att_hbr,
    fdl.att_kt,
    fdl.att_rvsf,
    fdl.att_tisy,
    fdl.att_tur,
    fdl.att_type,
    fdl.att_ue,
    fdl.att_uer,
    fdl.att_ukb,
    fdl.att_vest,
    fdl.att_vihar,
    fdl.att_viruh,
    fdl.att_virusf,
    fdl.att_viruv,
    fdl.att_vtj,
    fdl.geom
   FROM driftweb.fdl
  WHERE ((fdl.level_1_workareas)::text ~~ '%VT Stirute 7%'::text);


--
-- TOC entry 1152 (class 1259 OID 653143)
-- Name: vt_stirute_7_inst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_7_inst AS
 SELECT inst.ogc_fid AS gid,
    inst.ogc_fid,
    inst.gml_id,
    inst.elementid,
    inst.elementname,
    inst.measure,
    inst.perimeter,
    inst.element_description,
    inst.address,
    inst.created,
    inst.updated,
    inst.origin,
    inst.elementtypekey,
    inst.elementtypename,
    inst.unittype,
    inst.geometrytype,
    inst.status,
    inst.createdby,
    inst.updatedby,
    inst.days_from_creation,
    inst.days_from_update,
    inst.level_1_workareas,
    inst.level_1_workareatypes,
    inst.level_2_workareas,
    inst.level_2_workareatypes,
    inst.att_aot1,
    inst.att_aot2,
    inst.att_belty,
    inst.att_ftvr,
    inst.att_gfbm,
    inst.att_rvsf,
    inst.att_tisy,
    inst.att_uer,
    inst.att_vihar,
    inst.att_viruh,
    inst.att_virusf,
    inst.att_vtj,
    inst.geom
   FROM driftweb.inst
  WHERE ((inst.level_1_workareas)::text ~~ '%VT Stirute 7%'::text);


--
-- TOC entry 1153 (class 1259 OID 653148)
-- Name: vt_stirute_7_instpl; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_7_instpl AS
 SELECT instpl.ogc_fid AS gid,
    instpl.ogc_fid,
    instpl.gml_id,
    instpl.elementid,
    instpl.elementname,
    instpl.measure,
    instpl.perimeter,
    instpl.element_description,
    instpl.address,
    instpl.created,
    instpl.updated,
    instpl.origin,
    instpl.elementtypekey,
    instpl.elementtypename,
    instpl.unittype,
    instpl.geometrytype,
    instpl.status,
    instpl.createdby,
    instpl.updatedby,
    instpl.days_from_creation,
    instpl.days_from_update,
    instpl.level_1_workareas,
    instpl.level_1_workareatypes,
    instpl.level_2_workareas,
    instpl.level_2_workareatypes,
    instpl.att_aot1,
    instpl.att_aot2,
    instpl.att_ftvr,
    instpl.att_gfbm,
    instpl.att_rvsf,
    instpl.att_tisy,
    instpl.att_uer,
    instpl.att_vihar,
    instpl.att_viruh,
    instpl.att_virusf,
    instpl.att_vtj,
    instpl.geom
   FROM driftweb.instpl
  WHERE ((instpl.level_1_workareas)::text ~~ '%VT Stirute 7%'::text);


--
-- TOC entry 1210 (class 1259 OID 653447)
-- Name: vt_stirute_7_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_stirute_7_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Stirute 7%'::text);


--
-- TOC entry 1160 (class 1259 OID 653183)
-- Name: vt_vejrute_1_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_1_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1159 (class 1259 OID 653178)
-- Name: vt_vejrute_1_v2smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_1_v2smr AS
 SELECT v2smr.ogc_fid AS gid,
    v2smr.ogc_fid,
    v2smr.gml_id,
    v2smr.elementid,
    v2smr.elementname,
    v2smr.measure,
    v2smr.perimeter,
    v2smr.element_description,
    v2smr.address,
    v2smr.created,
    v2smr.updated,
    v2smr.origin,
    v2smr.elementtypekey,
    v2smr.elementtypename,
    v2smr.unittype,
    v2smr.geometrytype,
    v2smr.status,
    v2smr.createdby,
    v2smr.updatedby,
    v2smr.days_from_creation,
    v2smr.days_from_update,
    v2smr.level_1_workareas,
    v2smr.level_1_workareatypes,
    v2smr.level_2_workareas,
    v2smr.level_2_workareatypes,
    v2smr.att_belty,
    v2smr.att_fkl,
    v2smr.att_fr,
    v2smr.att_ftvr,
    v2smr.att_gfbm,
    v2smr.att_kt,
    v2smr.att_pviv,
    v2smr.att_rvsf,
    v2smr.att_tisy,
    v2smr.att_ue,
    v2smr.att_uer,
    v2smr.att_vest,
    v2smr.att_virusf,
    v2smr.att_viruv,
    v2smr.att_vtj,
    v2smr.att_vvk,
    v2smr.geom
   FROM driftweb.v2smr
  WHERE ((v2smr.level_1_workareas)::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1162 (class 1259 OID 653193)
-- Name: vt_vejrute_1_v4s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_1_v4s AS
 SELECT v4s.ogc_fid AS gid,
    v4s.ogc_fid,
    v4s.gml_id,
    v4s.elementid,
    v4s.elementname,
    v4s.measure,
    v4s.perimeter,
    v4s.element_description,
    v4s.address,
    v4s.created,
    v4s.updated,
    v4s.origin,
    v4s.elementtypekey,
    v4s.elementtypename,
    v4s.unittype,
    v4s.geometrytype,
    v4s.status,
    v4s.createdby,
    v4s.updatedby,
    v4s.days_from_creation,
    v4s.days_from_update,
    v4s.level_1_workareas,
    v4s.level_1_workareatypes,
    v4s.level_2_workareas,
    v4s.level_2_workareatypes,
    v4s.att_belty,
    v4s.att_fkl,
    v4s.att_fr,
    v4s.att_ftvr,
    v4s.att_gfbm,
    v4s.att_kt,
    v4s.att_pviv,
    v4s.att_rvsf,
    v4s.att_tisy,
    v4s.att_ue,
    v4s.att_uer,
    v4s.att_vest,
    v4s.att_virusf,
    v4s.att_viruv,
    v4s.att_vtj,
    v4s.att_vvk,
    v4s.geom
   FROM driftweb.v4s
  WHERE ((v4s.level_1_workareas)::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1161 (class 1259 OID 653188)
-- Name: vt_vejrute_1_v4smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_1_v4smr AS
 SELECT v4smr.ogc_fid AS gid,
    v4smr.ogc_fid,
    v4smr.gml_id,
    v4smr.elementid,
    v4smr.elementname,
    v4smr.measure,
    v4smr.perimeter,
    v4smr.element_description,
    v4smr.address,
    v4smr.created,
    v4smr.updated,
    v4smr.origin,
    v4smr.elementtypekey,
    v4smr.elementtypename,
    v4smr.unittype,
    v4smr.geometrytype,
    v4smr.status,
    v4smr.createdby,
    v4smr.updatedby,
    v4smr.days_from_creation,
    v4smr.days_from_update,
    v4smr.level_1_workareas,
    v4smr.level_1_workareatypes,
    v4smr.level_2_workareas,
    v4smr.level_2_workareatypes,
    v4smr.att_belty,
    v4smr.att_fkl,
    v4smr.att_fr,
    v4smr.att_ftvr,
    v4smr.att_gfbm,
    v4smr.att_kt,
    v4smr.att_pviv,
    v4smr.att_rvsf,
    v4smr.att_tisy,
    v4smr.att_ue,
    v4smr.att_uer,
    v4smr.att_vest,
    v4smr.att_virusf,
    v4smr.att_viruv,
    v4smr.att_vtj,
    v4smr.att_vvk,
    v4smr.geom
   FROM driftweb.v4smr
  WHERE ((v4smr.level_1_workareas)::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1164 (class 1259 OID 653203)
-- Name: vt_vejrute_2_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_2_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1163 (class 1259 OID 653198)
-- Name: vt_vejrute_2_v2smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_2_v2smr AS
 SELECT v2smr.ogc_fid AS gid,
    v2smr.ogc_fid,
    v2smr.gml_id,
    v2smr.elementid,
    v2smr.elementname,
    v2smr.measure,
    v2smr.perimeter,
    v2smr.element_description,
    v2smr.address,
    v2smr.created,
    v2smr.updated,
    v2smr.origin,
    v2smr.elementtypekey,
    v2smr.elementtypename,
    v2smr.unittype,
    v2smr.geometrytype,
    v2smr.status,
    v2smr.createdby,
    v2smr.updatedby,
    v2smr.days_from_creation,
    v2smr.days_from_update,
    v2smr.level_1_workareas,
    v2smr.level_1_workareatypes,
    v2smr.level_2_workareas,
    v2smr.level_2_workareatypes,
    v2smr.att_belty,
    v2smr.att_fkl,
    v2smr.att_fr,
    v2smr.att_ftvr,
    v2smr.att_gfbm,
    v2smr.att_kt,
    v2smr.att_pviv,
    v2smr.att_rvsf,
    v2smr.att_tisy,
    v2smr.att_ue,
    v2smr.att_uer,
    v2smr.att_vest,
    v2smr.att_virusf,
    v2smr.att_viruv,
    v2smr.att_vtj,
    v2smr.att_vvk,
    v2smr.geom
   FROM driftweb.v2smr
  WHERE ((v2smr.level_1_workareas)::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1166 (class 1259 OID 653213)
-- Name: vt_vejrute_2_v4s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_2_v4s AS
 SELECT v4s.ogc_fid AS gid,
    v4s.ogc_fid,
    v4s.gml_id,
    v4s.elementid,
    v4s.elementname,
    v4s.measure,
    v4s.perimeter,
    v4s.element_description,
    v4s.address,
    v4s.created,
    v4s.updated,
    v4s.origin,
    v4s.elementtypekey,
    v4s.elementtypename,
    v4s.unittype,
    v4s.geometrytype,
    v4s.status,
    v4s.createdby,
    v4s.updatedby,
    v4s.days_from_creation,
    v4s.days_from_update,
    v4s.level_1_workareas,
    v4s.level_1_workareatypes,
    v4s.level_2_workareas,
    v4s.level_2_workareatypes,
    v4s.att_belty,
    v4s.att_fkl,
    v4s.att_fr,
    v4s.att_ftvr,
    v4s.att_gfbm,
    v4s.att_kt,
    v4s.att_pviv,
    v4s.att_rvsf,
    v4s.att_tisy,
    v4s.att_ue,
    v4s.att_uer,
    v4s.att_vest,
    v4s.att_virusf,
    v4s.att_viruv,
    v4s.att_vtj,
    v4s.att_vvk,
    v4s.geom
   FROM driftweb.v4s
  WHERE ((v4s.level_1_workareas)::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1165 (class 1259 OID 653208)
-- Name: vt_vejrute_2_v4smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_2_v4smr AS
 SELECT v4smr.ogc_fid AS gid,
    v4smr.ogc_fid,
    v4smr.gml_id,
    v4smr.elementid,
    v4smr.elementname,
    v4smr.measure,
    v4smr.perimeter,
    v4smr.element_description,
    v4smr.address,
    v4smr.created,
    v4smr.updated,
    v4smr.origin,
    v4smr.elementtypekey,
    v4smr.elementtypename,
    v4smr.unittype,
    v4smr.geometrytype,
    v4smr.status,
    v4smr.createdby,
    v4smr.updatedby,
    v4smr.days_from_creation,
    v4smr.days_from_update,
    v4smr.level_1_workareas,
    v4smr.level_1_workareatypes,
    v4smr.level_2_workareas,
    v4smr.level_2_workareatypes,
    v4smr.att_belty,
    v4smr.att_fkl,
    v4smr.att_fr,
    v4smr.att_ftvr,
    v4smr.att_gfbm,
    v4smr.att_kt,
    v4smr.att_pviv,
    v4smr.att_rvsf,
    v4smr.att_tisy,
    v4smr.att_ue,
    v4smr.att_uer,
    v4smr.att_vest,
    v4smr.att_virusf,
    v4smr.att_viruv,
    v4smr.att_vtj,
    v4smr.att_vvk,
    v4smr.geom
   FROM driftweb.v4smr
  WHERE ((v4smr.level_1_workareas)::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1167 (class 1259 OID 653218)
-- Name: vt_vejrute_3_ap; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_3_ap AS
 SELECT ap.ogc_fid AS gid,
    ap.ogc_fid,
    ap.gml_id,
    ap.elementid,
    ap.elementname,
    ap.measure,
    ap.perimeter,
    ap.element_description,
    ap.address,
    ap.created,
    ap.updated,
    ap.origin,
    ap.elementtypekey,
    ap.elementtypename,
    ap.unittype,
    ap.geometrytype,
    ap.status,
    ap.createdby,
    ap.updatedby,
    ap.days_from_creation,
    ap.days_from_update,
    ap.level_1_workareas,
    ap.level_1_workareatypes,
    ap.level_2_workareas,
    ap.level_2_workareatypes,
    ap.att_aot1,
    ap.att_belty,
    ap.att_fkl,
    ap.att_fr,
    ap.att_ftvr,
    ap.att_gfbm,
    ap.att_kt,
    ap.att_ue,
    ap.att_uer,
    ap.att_vest,
    ap.att_virusf,
    ap.att_viruv,
    ap.att_vvk,
    ap.geom
   FROM driftweb.ap
  WHERE ((ap.level_1_workareas)::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1169 (class 1259 OID 653228)
-- Name: vt_vejrute_3_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_3_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1168 (class 1259 OID 653223)
-- Name: vt_vejrute_3_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_3_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1170 (class 1259 OID 653233)
-- Name: vt_vejrute_3_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_3_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%'::text);


--
-- TOC entry 1171 (class 1259 OID 653238)
-- Name: vt_vejrute_4_ap; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_4_ap AS
 SELECT ap.ogc_fid AS gid,
    ap.ogc_fid,
    ap.gml_id,
    ap.elementid,
    ap.elementname,
    ap.measure,
    ap.perimeter,
    ap.element_description,
    ap.address,
    ap.created,
    ap.updated,
    ap.origin,
    ap.elementtypekey,
    ap.elementtypename,
    ap.unittype,
    ap.geometrytype,
    ap.status,
    ap.createdby,
    ap.updatedby,
    ap.days_from_creation,
    ap.days_from_update,
    ap.level_1_workareas,
    ap.level_1_workareatypes,
    ap.level_2_workareas,
    ap.level_2_workareatypes,
    ap.att_aot1,
    ap.att_belty,
    ap.att_fkl,
    ap.att_fr,
    ap.att_ftvr,
    ap.att_gfbm,
    ap.att_kt,
    ap.att_ue,
    ap.att_uer,
    ap.att_vest,
    ap.att_virusf,
    ap.att_viruv,
    ap.att_vvk,
    ap.geom
   FROM driftweb.ap
  WHERE ((ap.level_1_workareas)::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%'::text);


--
-- TOC entry 1173 (class 1259 OID 653248)
-- Name: vt_vejrute_4_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_4_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%'::text);


--
-- TOC entry 1172 (class 1259 OID 653243)
-- Name: vt_vejrute_4_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_4_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%'::text);


--
-- TOC entry 1174 (class 1259 OID 653253)
-- Name: vt_vejrute_4_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_4_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%'::text);


--
-- TOC entry 1175 (class 1259 OID 653258)
-- Name: vt_vejrute_5_ap; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_ap AS
 SELECT ap.ogc_fid AS gid,
    ap.ogc_fid,
    ap.gml_id,
    ap.elementid,
    ap.elementname,
    ap.measure,
    ap.perimeter,
    ap.element_description,
    ap.address,
    ap.created,
    ap.updated,
    ap.origin,
    ap.elementtypekey,
    ap.elementtypename,
    ap.unittype,
    ap.geometrytype,
    ap.status,
    ap.createdby,
    ap.updatedby,
    ap.days_from_creation,
    ap.days_from_update,
    ap.level_1_workareas,
    ap.level_1_workareatypes,
    ap.level_2_workareas,
    ap.level_2_workareatypes,
    ap.att_aot1,
    ap.att_belty,
    ap.att_fkl,
    ap.att_fr,
    ap.att_ftvr,
    ap.att_gfbm,
    ap.att_kt,
    ap.att_ue,
    ap.att_uer,
    ap.att_vest,
    ap.att_virusf,
    ap.att_viruv,
    ap.att_vvk,
    ap.geom
   FROM driftweb.ap
  WHERE ((ap.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1177 (class 1259 OID 653268)
-- Name: vt_vejrute_5_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1176 (class 1259 OID 653263)
-- Name: vt_vejrute_5_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1178 (class 1259 OID 653273)
-- Name: vt_vejrute_5_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1179 (class 1259 OID 653278)
-- Name: vt_vejrute_5_v2smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_v2smr AS
 SELECT v2smr.ogc_fid AS gid,
    v2smr.ogc_fid,
    v2smr.gml_id,
    v2smr.elementid,
    v2smr.elementname,
    v2smr.measure,
    v2smr.perimeter,
    v2smr.element_description,
    v2smr.address,
    v2smr.created,
    v2smr.updated,
    v2smr.origin,
    v2smr.elementtypekey,
    v2smr.elementtypename,
    v2smr.unittype,
    v2smr.geometrytype,
    v2smr.status,
    v2smr.createdby,
    v2smr.updatedby,
    v2smr.days_from_creation,
    v2smr.days_from_update,
    v2smr.level_1_workareas,
    v2smr.level_1_workareatypes,
    v2smr.level_2_workareas,
    v2smr.level_2_workareatypes,
    v2smr.att_belty,
    v2smr.att_fkl,
    v2smr.att_fr,
    v2smr.att_ftvr,
    v2smr.att_gfbm,
    v2smr.att_kt,
    v2smr.att_pviv,
    v2smr.att_rvsf,
    v2smr.att_tisy,
    v2smr.att_ue,
    v2smr.att_uer,
    v2smr.att_vest,
    v2smr.att_virusf,
    v2smr.att_viruv,
    v2smr.att_vtj,
    v2smr.att_vvk,
    v2smr.geom
   FROM driftweb.v2smr
  WHERE ((v2smr.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1180 (class 1259 OID 653283)
-- Name: vt_vejrute_5_v4s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_v4s AS
 SELECT v4s.ogc_fid AS gid,
    v4s.ogc_fid,
    v4s.gml_id,
    v4s.elementid,
    v4s.elementname,
    v4s.measure,
    v4s.perimeter,
    v4s.element_description,
    v4s.address,
    v4s.created,
    v4s.updated,
    v4s.origin,
    v4s.elementtypekey,
    v4s.elementtypename,
    v4s.unittype,
    v4s.geometrytype,
    v4s.status,
    v4s.createdby,
    v4s.updatedby,
    v4s.days_from_creation,
    v4s.days_from_update,
    v4s.level_1_workareas,
    v4s.level_1_workareatypes,
    v4s.level_2_workareas,
    v4s.level_2_workareatypes,
    v4s.att_belty,
    v4s.att_fkl,
    v4s.att_fr,
    v4s.att_ftvr,
    v4s.att_gfbm,
    v4s.att_kt,
    v4s.att_pviv,
    v4s.att_rvsf,
    v4s.att_tisy,
    v4s.att_ue,
    v4s.att_uer,
    v4s.att_vest,
    v4s.att_virusf,
    v4s.att_viruv,
    v4s.att_vtj,
    v4s.att_vvk,
    v4s.geom
   FROM driftweb.v4s
  WHERE ((v4s.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1181 (class 1259 OID 653288)
-- Name: vt_vejrute_5_v4smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_5_v4smr AS
 SELECT v4smr.ogc_fid AS gid,
    v4smr.ogc_fid,
    v4smr.gml_id,
    v4smr.elementid,
    v4smr.elementname,
    v4smr.measure,
    v4smr.perimeter,
    v4smr.element_description,
    v4smr.address,
    v4smr.created,
    v4smr.updated,
    v4smr.origin,
    v4smr.elementtypekey,
    v4smr.elementtypename,
    v4smr.unittype,
    v4smr.geometrytype,
    v4smr.status,
    v4smr.createdby,
    v4smr.updatedby,
    v4smr.days_from_creation,
    v4smr.days_from_update,
    v4smr.level_1_workareas,
    v4smr.level_1_workareatypes,
    v4smr.level_2_workareas,
    v4smr.level_2_workareatypes,
    v4smr.att_belty,
    v4smr.att_fkl,
    v4smr.att_fr,
    v4smr.att_ftvr,
    v4smr.att_gfbm,
    v4smr.att_kt,
    v4smr.att_pviv,
    v4smr.att_rvsf,
    v4smr.att_tisy,
    v4smr.att_ue,
    v4smr.att_uer,
    v4smr.att_vest,
    v4smr.att_virusf,
    v4smr.att_viruv,
    v4smr.att_vtj,
    v4smr.att_vvk,
    v4smr.geom
   FROM driftweb.v4smr
  WHERE ((v4smr.level_1_workareas)::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1182 (class 1259 OID 653293)
-- Name: vt_vejrute_6_ap; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_ap AS
 SELECT ap.ogc_fid AS gid,
    ap.ogc_fid,
    ap.gml_id,
    ap.elementid,
    ap.elementname,
    ap.measure,
    ap.perimeter,
    ap.element_description,
    ap.address,
    ap.created,
    ap.updated,
    ap.origin,
    ap.elementtypekey,
    ap.elementtypename,
    ap.unittype,
    ap.geometrytype,
    ap.status,
    ap.createdby,
    ap.updatedby,
    ap.days_from_creation,
    ap.days_from_update,
    ap.level_1_workareas,
    ap.level_1_workareatypes,
    ap.level_2_workareas,
    ap.level_2_workareatypes,
    ap.att_aot1,
    ap.att_belty,
    ap.att_fkl,
    ap.att_fr,
    ap.att_ftvr,
    ap.att_gfbm,
    ap.att_kt,
    ap.att_ue,
    ap.att_uer,
    ap.att_vest,
    ap.att_virusf,
    ap.att_viruv,
    ap.att_vvk,
    ap.geom
   FROM driftweb.ap
  WHERE ((ap.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1184 (class 1259 OID 653303)
-- Name: vt_vejrute_6_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1183 (class 1259 OID 653298)
-- Name: vt_vejrute_6_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1185 (class 1259 OID 653308)
-- Name: vt_vejrute_6_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1186 (class 1259 OID 653313)
-- Name: vt_vejrute_6_v2smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_v2smr AS
 SELECT v2smr.ogc_fid AS gid,
    v2smr.ogc_fid,
    v2smr.gml_id,
    v2smr.elementid,
    v2smr.elementname,
    v2smr.measure,
    v2smr.perimeter,
    v2smr.element_description,
    v2smr.address,
    v2smr.created,
    v2smr.updated,
    v2smr.origin,
    v2smr.elementtypekey,
    v2smr.elementtypename,
    v2smr.unittype,
    v2smr.geometrytype,
    v2smr.status,
    v2smr.createdby,
    v2smr.updatedby,
    v2smr.days_from_creation,
    v2smr.days_from_update,
    v2smr.level_1_workareas,
    v2smr.level_1_workareatypes,
    v2smr.level_2_workareas,
    v2smr.level_2_workareatypes,
    v2smr.att_belty,
    v2smr.att_fkl,
    v2smr.att_fr,
    v2smr.att_ftvr,
    v2smr.att_gfbm,
    v2smr.att_kt,
    v2smr.att_pviv,
    v2smr.att_rvsf,
    v2smr.att_tisy,
    v2smr.att_ue,
    v2smr.att_uer,
    v2smr.att_vest,
    v2smr.att_virusf,
    v2smr.att_viruv,
    v2smr.att_vtj,
    v2smr.att_vvk,
    v2smr.geom
   FROM driftweb.v2smr
  WHERE ((v2smr.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1187 (class 1259 OID 653318)
-- Name: vt_vejrute_6_v4s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_v4s AS
 SELECT v4s.ogc_fid AS gid,
    v4s.ogc_fid,
    v4s.gml_id,
    v4s.elementid,
    v4s.elementname,
    v4s.measure,
    v4s.perimeter,
    v4s.element_description,
    v4s.address,
    v4s.created,
    v4s.updated,
    v4s.origin,
    v4s.elementtypekey,
    v4s.elementtypename,
    v4s.unittype,
    v4s.geometrytype,
    v4s.status,
    v4s.createdby,
    v4s.updatedby,
    v4s.days_from_creation,
    v4s.days_from_update,
    v4s.level_1_workareas,
    v4s.level_1_workareatypes,
    v4s.level_2_workareas,
    v4s.level_2_workareatypes,
    v4s.att_belty,
    v4s.att_fkl,
    v4s.att_fr,
    v4s.att_ftvr,
    v4s.att_gfbm,
    v4s.att_kt,
    v4s.att_pviv,
    v4s.att_rvsf,
    v4s.att_tisy,
    v4s.att_ue,
    v4s.att_uer,
    v4s.att_vest,
    v4s.att_virusf,
    v4s.att_viruv,
    v4s.att_vtj,
    v4s.att_vvk,
    v4s.geom
   FROM driftweb.v4s
  WHERE ((v4s.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1188 (class 1259 OID 653323)
-- Name: vt_vejrute_6_v4smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_6_v4smr AS
 SELECT v4smr.ogc_fid AS gid,
    v4smr.ogc_fid,
    v4smr.gml_id,
    v4smr.elementid,
    v4smr.elementname,
    v4smr.measure,
    v4smr.perimeter,
    v4smr.element_description,
    v4smr.address,
    v4smr.created,
    v4smr.updated,
    v4smr.origin,
    v4smr.elementtypekey,
    v4smr.elementtypename,
    v4smr.unittype,
    v4smr.geometrytype,
    v4smr.status,
    v4smr.createdby,
    v4smr.updatedby,
    v4smr.days_from_creation,
    v4smr.days_from_update,
    v4smr.level_1_workareas,
    v4smr.level_1_workareatypes,
    v4smr.level_2_workareas,
    v4smr.level_2_workareatypes,
    v4smr.att_belty,
    v4smr.att_fkl,
    v4smr.att_fr,
    v4smr.att_ftvr,
    v4smr.att_gfbm,
    v4smr.att_kt,
    v4smr.att_pviv,
    v4smr.att_rvsf,
    v4smr.att_tisy,
    v4smr.att_ue,
    v4smr.att_uer,
    v4smr.att_vest,
    v4smr.att_virusf,
    v4smr.att_viruv,
    v4smr.att_vtj,
    v4smr.att_vvk,
    v4smr.geom
   FROM driftweb.v4smr
  WHERE ((v4smr.level_1_workareas)::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%'::text);


--
-- TOC entry 1189 (class 1259 OID 653328)
-- Name: vt_vejrute_7_ap; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_7_ap AS
 SELECT ap.ogc_fid AS gid,
    ap.ogc_fid,
    ap.gml_id,
    ap.elementid,
    ap.elementname,
    ap.measure,
    ap.perimeter,
    ap.element_description,
    ap.address,
    ap.created,
    ap.updated,
    ap.origin,
    ap.elementtypekey,
    ap.elementtypename,
    ap.unittype,
    ap.geometrytype,
    ap.status,
    ap.createdby,
    ap.updatedby,
    ap.days_from_creation,
    ap.days_from_update,
    ap.level_1_workareas,
    ap.level_1_workareatypes,
    ap.level_2_workareas,
    ap.level_2_workareatypes,
    ap.att_aot1,
    ap.att_belty,
    ap.att_fkl,
    ap.att_fr,
    ap.att_ftvr,
    ap.att_gfbm,
    ap.att_kt,
    ap.att_ue,
    ap.att_uer,
    ap.att_vest,
    ap.att_virusf,
    ap.att_viruv,
    ap.att_vvk,
    ap.geom
   FROM driftweb.ap
  WHERE ((ap.level_1_workareas)::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%'::text);


--
-- TOC entry 1194 (class 1259 OID 653353)
-- Name: vt_vejrute_7_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_7_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%'::text);


--
-- TOC entry 1191 (class 1259 OID 653338)
-- Name: vt_vejrute_7_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_7_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%'::text);


--
-- TOC entry 1190 (class 1259 OID 653333)
-- Name: vt_vejrute_7_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_7_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%'::text);


--
-- TOC entry 1192 (class 1259 OID 653343)
-- Name: vt_vejrute_7_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_7_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%'::text);


--
-- TOC entry 1193 (class 1259 OID 653348)
-- Name: vt_vejrute_7_v2smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_7_v2smr AS
 SELECT v2smr.ogc_fid AS gid,
    v2smr.ogc_fid,
    v2smr.gml_id,
    v2smr.elementid,
    v2smr.elementname,
    v2smr.measure,
    v2smr.perimeter,
    v2smr.element_description,
    v2smr.address,
    v2smr.created,
    v2smr.updated,
    v2smr.origin,
    v2smr.elementtypekey,
    v2smr.elementtypename,
    v2smr.unittype,
    v2smr.geometrytype,
    v2smr.status,
    v2smr.createdby,
    v2smr.updatedby,
    v2smr.days_from_creation,
    v2smr.days_from_update,
    v2smr.level_1_workareas,
    v2smr.level_1_workareatypes,
    v2smr.level_2_workareas,
    v2smr.level_2_workareatypes,
    v2smr.att_belty,
    v2smr.att_fkl,
    v2smr.att_fr,
    v2smr.att_ftvr,
    v2smr.att_gfbm,
    v2smr.att_kt,
    v2smr.att_pviv,
    v2smr.att_rvsf,
    v2smr.att_tisy,
    v2smr.att_ue,
    v2smr.att_uer,
    v2smr.att_vest,
    v2smr.att_virusf,
    v2smr.att_viruv,
    v2smr.att_vtj,
    v2smr.att_vvk,
    v2smr.geom
   FROM driftweb.v2smr
  WHERE ((v2smr.level_1_workareas)::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%'::text);


--
-- TOC entry 1195 (class 1259 OID 653358)
-- Name: vt_vejrute_8_ap; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_8_ap AS
 SELECT ap.ogc_fid AS gid,
    ap.ogc_fid,
    ap.gml_id,
    ap.elementid,
    ap.elementname,
    ap.measure,
    ap.perimeter,
    ap.element_description,
    ap.address,
    ap.created,
    ap.updated,
    ap.origin,
    ap.elementtypekey,
    ap.elementtypename,
    ap.unittype,
    ap.geometrytype,
    ap.status,
    ap.createdby,
    ap.updatedby,
    ap.days_from_creation,
    ap.days_from_update,
    ap.level_1_workareas,
    ap.level_1_workareatypes,
    ap.level_2_workareas,
    ap.level_2_workareatypes,
    ap.att_aot1,
    ap.att_belty,
    ap.att_fkl,
    ap.att_fr,
    ap.att_ftvr,
    ap.att_gfbm,
    ap.att_kt,
    ap.att_ue,
    ap.att_uer,
    ap.att_vest,
    ap.att_virusf,
    ap.att_viruv,
    ap.att_vvk,
    ap.geom
   FROM driftweb.ap
  WHERE ((ap.level_1_workareas)::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1200 (class 1259 OID 653383)
-- Name: vt_vejrute_8_cyst; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_8_cyst AS
 SELECT cyst.ogc_fid AS gid,
    cyst.ogc_fid,
    cyst.gml_id,
    cyst.elementid,
    cyst.elementname,
    cyst.measure,
    cyst.perimeter,
    cyst.element_description,
    cyst.address,
    cyst.created,
    cyst.updated,
    cyst.origin,
    cyst.elementtypekey,
    cyst.elementtypename,
    cyst.unittype,
    cyst.geometrytype,
    cyst.status,
    cyst.createdby,
    cyst.updatedby,
    cyst.days_from_creation,
    cyst.days_from_update,
    cyst.level_1_workareas,
    cyst.level_1_workareatypes,
    cyst.level_2_workareas,
    cyst.level_2_workareatypes,
    cyst.att_aot1,
    cyst.att_bebr,
    cyst.att_belty,
    cyst.att_fkl,
    cyst.att_fr,
    cyst.att_ftvr,
    cyst.att_gfbm,
    cyst.att_hbr,
    cyst.att_kt,
    cyst.att_rvsf,
    cyst.att_scs,
    cyst.att_sty,
    cyst.att_tisy,
    cyst.att_tur,
    cyst.att_ue,
    cyst.att_uer,
    cyst.att_ukb,
    cyst.att_vest,
    cyst.att_virusf,
    cyst.att_viruv,
    cyst.att_vtj,
    cyst.geom
   FROM driftweb.cyst
  WHERE ((cyst.level_1_workareas)::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1197 (class 1259 OID 653368)
-- Name: vt_vejrute_8_inve; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_8_inve AS
 SELECT inve.ogc_fid AS gid,
    inve.ogc_fid,
    inve.gml_id,
    inve.elementid,
    inve.elementname,
    inve.measure,
    inve.perimeter,
    inve.element_description,
    inve.address,
    inve.created,
    inve.updated,
    inve.origin,
    inve.elementtypekey,
    inve.elementtypename,
    inve.unittype,
    inve.geometrytype,
    inve.status,
    inve.createdby,
    inve.updatedby,
    inve.days_from_creation,
    inve.days_from_update,
    inve.level_1_workareas,
    inve.level_1_workareatypes,
    inve.level_2_workareas,
    inve.level_2_workareatypes,
    inve.att_aot1,
    inve.att_belty,
    inve.att_fkl,
    inve.att_fr,
    inve.att_ftvr,
    inve.att_gfbm,
    inve.att_kt,
    inve.att_rvsf,
    inve.att_tisy,
    inve.att_ue,
    inve.att_uer,
    inve.att_virusf,
    inve.att_viruv,
    inve.att_vtj,
    inve.att_vvk,
    inve.geom
   FROM driftweb.inve
  WHERE ((inve.level_1_workareas)::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1196 (class 1259 OID 653363)
-- Name: vt_vejrute_8_pkp; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_8_pkp AS
 SELECT pkp.ogc_fid AS gid,
    pkp.ogc_fid,
    pkp.gml_id,
    pkp.elementid,
    pkp.elementname,
    pkp.measure,
    pkp.perimeter,
    pkp.element_description,
    pkp.address,
    pkp.created,
    pkp.updated,
    pkp.origin,
    pkp.elementtypekey,
    pkp.elementtypename,
    pkp.unittype,
    pkp.geometrytype,
    pkp.status,
    pkp.createdby,
    pkp.updatedby,
    pkp.days_from_creation,
    pkp.days_from_update,
    pkp.level_1_workareas,
    pkp.level_1_workareatypes,
    pkp.level_2_workareas,
    pkp.level_2_workareatypes,
    pkp.att_aot1,
    pkp.att_belty,
    pkp.att_fkl,
    pkp.att_fr,
    pkp.att_ftvr,
    pkp.att_gfbm,
    pkp.att_kt,
    pkp.att_ue,
    pkp.att_uer,
    pkp.att_vest,
    pkp.att_virusf,
    pkp.att_viruv,
    pkp.att_vvk,
    pkp.geom
   FROM driftweb.pkp
  WHERE ((pkp.level_1_workareas)::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1198 (class 1259 OID 653373)
-- Name: vt_vejrute_8_v2s; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_8_v2s AS
 SELECT v2s.ogc_fid AS gid,
    v2s.ogc_fid,
    v2s.gml_id,
    v2s.elementid,
    v2s.elementname,
    v2s.measure,
    v2s.perimeter,
    v2s.element_description,
    v2s.address,
    v2s.created,
    v2s.updated,
    v2s.origin,
    v2s.elementtypekey,
    v2s.elementtypename,
    v2s.unittype,
    v2s.geometrytype,
    v2s.status,
    v2s.createdby,
    v2s.updatedby,
    v2s.days_from_creation,
    v2s.days_from_update,
    v2s.level_1_workareas,
    v2s.level_1_workareatypes,
    v2s.level_2_workareas,
    v2s.level_2_workareatypes,
    v2s.att_belty,
    v2s.att_fkl,
    v2s.att_fr,
    v2s.att_ftvr,
    v2s.att_gfbm,
    v2s.att_gaaga,
    v2s.att_kt,
    v2s.att_pviv,
    v2s.att_rvsf,
    v2s.att_tisy,
    v2s.att_ue,
    v2s.att_uer,
    v2s.att_vest,
    v2s.att_virusf,
    v2s.att_viruv,
    v2s.att_vtj,
    v2s.att_vvk,
    v2s.geom
   FROM driftweb.v2s
  WHERE ((v2s.level_1_workareas)::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%'::text);


--
-- TOC entry 1199 (class 1259 OID 653378)
-- Name: vt_vejrute_8_v2smr; Type: VIEW; Schema: vt_vintertjeneste; Owner: -
--

CREATE VIEW vt_vintertjeneste_test.vt_vejrute_8_v2smr AS
 SELECT v2smr.ogc_fid AS gid,
    v2smr.ogc_fid,
    v2smr.gml_id,
    v2smr.elementid,
    v2smr.elementname,
    v2smr.measure,
    v2smr.perimeter,
    v2smr.element_description,
    v2smr.address,
    v2smr.created,
    v2smr.updated,
    v2smr.origin,
    v2smr.elementtypekey,
    v2smr.elementtypename,
    v2smr.unittype,
    v2smr.geometrytype,
    v2smr.status,
    v2smr.createdby,
    v2smr.updatedby,
    v2smr.days_from_creation,
    v2smr.days_from_update,
    v2smr.level_1_workareas,
    v2smr.level_1_workareatypes,
    v2smr.level_2_workareas,
    v2smr.level_2_workareatypes,
    v2smr.att_belty,
    v2smr.att_fkl,
    v2smr.att_fr,
    v2smr.att_ftvr,
    v2smr.att_gfbm,
    v2smr.att_kt,
    v2smr.att_pviv,
    v2smr.att_rvsf,
    v2smr.att_tisy,
    v2smr.att_ue,
    v2smr.att_uer,
    v2smr.att_vest,
    v2smr.att_virusf,
    v2smr.att_viruv,
    v2smr.att_vtj,
    v2smr.att_vvk,
    v2smr.geom
   FROM driftweb.v2smr
  WHERE ((v2smr.level_1_workareas)::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%'::text);


-- Completed on 2025-01-24 09:48:10

--
-- PostgreSQL database dump complete
--

