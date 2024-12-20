--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.8

-- Started on 2024-12-17 08:35:18

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
-- TOC entry 894 (class 1259 OID 650380)
-- Name: vt_haandrute_1_fdf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_fdf AS
 SELECT fdf.ogc_fid,
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
-- TOC entry 890 (class 1259 OID 650356)
-- Name: vt_haandrute_1_fdl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_fdl AS
 SELECT fdl.ogc_fid,
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
-- TOC entry 918 (class 1259 OID 650545)
-- Name: vt_haandrute_1_inst; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_inst AS
 SELECT inst.ogc_fid,
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
-- TOC entry 922 (class 1259 OID 650565)
-- Name: vt_haandrute_1_instpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_instpl AS
 SELECT instpl.ogc_fid,
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
-- TOC entry 902 (class 1259 OID 650420)
-- Name: vt_haandrute_1_rpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_rpf AS
 SELECT rpf.ogc_fid,
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
-- TOC entry 898 (class 1259 OID 650400)
-- Name: vt_haandrute_1_rpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_rpl AS
 SELECT rpl.ogc_fid,
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
-- TOC entry 914 (class 1259 OID 650480)
-- Name: vt_haandrute_1_trpb; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_trpb AS
 SELECT trpb.ogc_fid,
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
-- TOC entry 910 (class 1259 OID 650460)
-- Name: vt_haandrute_1_trpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_trpf AS
 SELECT trpf.ogc_fid,
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
-- TOC entry 906 (class 1259 OID 650440)
-- Name: vt_haandrute_1_trpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_1_trpl AS
 SELECT trpl.ogc_fid,
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
-- TOC entry 895 (class 1259 OID 650385)
-- Name: vt_haandrute_2_fdf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_fdf AS
 SELECT fdf.ogc_fid,
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
-- TOC entry 891 (class 1259 OID 650361)
-- Name: vt_haandrute_2_fdl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_fdl AS
 SELECT fdl.ogc_fid,
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
-- TOC entry 919 (class 1259 OID 650550)
-- Name: vt_haandrute_2_inst; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_inst AS
 SELECT inst.ogc_fid,
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
-- TOC entry 923 (class 1259 OID 650570)
-- Name: vt_haandrute_2_instpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_instpl AS
 SELECT instpl.ogc_fid,
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
-- TOC entry 903 (class 1259 OID 650425)
-- Name: vt_haandrute_2_rpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_rpf AS
 SELECT rpf.ogc_fid,
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
-- TOC entry 899 (class 1259 OID 650405)
-- Name: vt_haandrute_2_rpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_rpl AS
 SELECT rpl.ogc_fid,
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
-- TOC entry 915 (class 1259 OID 650485)
-- Name: vt_haandrute_2_trpb; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_trpb AS
 SELECT trpb.ogc_fid,
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
-- TOC entry 911 (class 1259 OID 650465)
-- Name: vt_haandrute_2_trpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_trpf AS
 SELECT trpf.ogc_fid,
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
-- TOC entry 907 (class 1259 OID 650445)
-- Name: vt_haandrute_2_trpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_2_trpl AS
 SELECT trpl.ogc_fid,
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
-- TOC entry 896 (class 1259 OID 650390)
-- Name: vt_haandrute_3_fdf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_fdf AS
 SELECT fdf.ogc_fid,
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
-- TOC entry 892 (class 1259 OID 650366)
-- Name: vt_haandrute_3_fdl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_fdl AS
 SELECT fdl.ogc_fid,
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
-- TOC entry 920 (class 1259 OID 650555)
-- Name: vt_haandrute_3_inst; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_inst AS
 SELECT inst.ogc_fid,
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
-- TOC entry 924 (class 1259 OID 650575)
-- Name: vt_haandrute_3_instpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_instpl AS
 SELECT instpl.ogc_fid,
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
-- TOC entry 904 (class 1259 OID 650430)
-- Name: vt_haandrute_3_rpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_rpf AS
 SELECT rpf.ogc_fid,
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
-- TOC entry 900 (class 1259 OID 650410)
-- Name: vt_haandrute_3_rpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_rpl AS
 SELECT rpl.ogc_fid,
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
-- TOC entry 916 (class 1259 OID 650490)
-- Name: vt_haandrute_3_trpb; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_trpb AS
 SELECT trpb.ogc_fid,
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
-- TOC entry 912 (class 1259 OID 650470)
-- Name: vt_haandrute_3_trpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_trpf AS
 SELECT trpf.ogc_fid,
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
-- TOC entry 908 (class 1259 OID 650450)
-- Name: vt_haandrute_3_trpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_3_trpl AS
 SELECT trpl.ogc_fid,
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
-- TOC entry 897 (class 1259 OID 650395)
-- Name: vt_haandrute_4_fdf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_fdf AS
 SELECT fdf.ogc_fid,
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
-- TOC entry 893 (class 1259 OID 650371)
-- Name: vt_haandrute_4_fdl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_fdl AS
 SELECT fdl.ogc_fid,
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
-- TOC entry 921 (class 1259 OID 650560)
-- Name: vt_haandrute_4_inst; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_inst AS
 SELECT inst.ogc_fid,
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
-- TOC entry 925 (class 1259 OID 650580)
-- Name: vt_haandrute_4_instpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_instpl AS
 SELECT instpl.ogc_fid,
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
-- TOC entry 905 (class 1259 OID 650435)
-- Name: vt_haandrute_4_rpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_rpf AS
 SELECT rpf.ogc_fid,
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
-- TOC entry 901 (class 1259 OID 650415)
-- Name: vt_haandrute_4_rpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_rpl AS
 SELECT rpl.ogc_fid,
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
-- TOC entry 917 (class 1259 OID 650495)
-- Name: vt_haandrute_4_trpb; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_trpb AS
 SELECT trpb.ogc_fid,
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
-- TOC entry 913 (class 1259 OID 650475)
-- Name: vt_haandrute_4_trpf; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_trpf AS
 SELECT trpf.ogc_fid,
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
-- TOC entry 909 (class 1259 OID 650455)
-- Name: vt_haandrute_4_trpl; Type: VIEW; Schema: wa_vintertjeneste; Owner: -
--

CREATE VIEW wa_vintertjeneste.vt_haandrute_4_trpl AS
 SELECT trpl.ogc_fid,
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


-- Completed on 2024-12-17 08:35:25

--
-- PostgreSQL database dump complete
--

