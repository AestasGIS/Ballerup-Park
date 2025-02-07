/*

Oprettelse af views til MapCentia WMS / WFS for Vintertjenester

Felt "gid" oprettes, fordi MapCentia *kræver* at nøglefeltet hedder "gid", når der umiddelbart *ikke* direkte 
kan findes en PK fra en tabel. 

Primary Key for alle berørte tabeller i views hedder "ogc_fid", derfor genereres der et ekstra felt "gid"

Filter funktion filterer på kolonne "level_1_workareas" som indeholder en kommasepareret liste med arbejdsomraade navne, 
som det enkelte element tilhører. 

Operator '~~' svarer til standard "like" operator

Der oprettes 119 views fordelt på 20 arbejdsområder

*/

-- Opret nyt, separat schema til vintertjeneste 
DROP SCHEMA vt_vintertjeneste CASCADE;
CREATE SCHEMA vt_vintertjeneste;

-- Arbejdsomaade VT Håndrute 1
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_rpl    AS SELECT ogc_fid AS gid, * FROM driftweb.rpl    WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_rpf    AS SELECT ogc_fid AS gid, * FROM driftweb.rpf    WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_trpb   AS SELECT ogc_fid AS gid, * FROM driftweb.trpb   WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_trpf   AS SELECT ogc_fid AS gid, * FROM driftweb.trpf   WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_1_trpl   AS SELECT ogc_fid AS gid, * FROM driftweb.trpl   WHERE level_1_workareas::text ~~ '%VT Håndrute 1%';

-- Arbejdsomaade VT Håndrute 2
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_rpl    AS SELECT ogc_fid AS gid, * FROM driftweb.rpl    WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_rpf    AS SELECT ogc_fid AS gid, * FROM driftweb.rpf    WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_trpb   AS SELECT ogc_fid AS gid, * FROM driftweb.trpb   WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_trpf   AS SELECT ogc_fid AS gid, * FROM driftweb.trpf   WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_2_trpl   AS SELECT ogc_fid AS gid, * FROM driftweb.trpl   WHERE level_1_workareas::text ~~ '%VT Håndrute 2%';

-- Arbejdsomaade VT Håndrute 3
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_rpl    AS SELECT ogc_fid AS gid, * FROM driftweb.rpl    WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_rpf    AS SELECT ogc_fid AS gid, * FROM driftweb.rpf    WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_trpb   AS SELECT ogc_fid AS gid, * FROM driftweb.trpb   WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_trpf   AS SELECT ogc_fid AS gid, * FROM driftweb.trpf   WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_3_trpl   AS SELECT ogc_fid AS gid, * FROM driftweb.trpl   WHERE level_1_workareas::text ~~ '%VT Håndrute 3%';

-- Arbejdsomaade VT Håndrute 4
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_rpl    AS SELECT ogc_fid AS gid, * FROM driftweb.rpl    WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_rpf    AS SELECT ogc_fid AS gid, * FROM driftweb.rpf    WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_trpb   AS SELECT ogc_fid AS gid, * FROM driftweb.trpb   WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_trpf   AS SELECT ogc_fid AS gid, * FROM driftweb.trpf   WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';
CREATE VIEW vt_vintertjeneste.vt_haandrute_4_trpl   AS SELECT ogc_fid AS gid, * FROM driftweb.trpl   WHERE level_1_workareas::text ~~ '%VT Håndrute 4%';

-- Arbejdsomaade VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)
CREATE VIEW vt_vintertjeneste.vt_stirute_1_cyst  AS SELECT ogc_fid AS gid, * FROM driftweb.cyst  WHERE level_1_workareas::text ~~ '%VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)%';
CREATE VIEW vt_vintertjeneste.vt_stirute_1_fdf   AS SELECT ogc_fid AS gid, * FROM driftweb.fdf   WHERE level_1_workareas::text ~~ '%VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)%';
CREATE VIEW vt_vintertjeneste.vt_stirute_1_fdl   AS SELECT ogc_fid AS gid, * FROM driftweb.fdl   WHERE level_1_workareas::text ~~ '%VT Stirute 1, Stor traktor 3 (gennemgående cykelstier)%';


-- Arbejdsomaade %VT Stirute 2, Ballerup
CREATE VIEW vt_vintertjeneste.vt_stirute_2_cyst  AS SELECT ogc_fid AS gid, * FROM driftweb.cyst  WHERE level_1_workareas::text ~~ '%VT Stirute 2, Ballerup%';
CREATE VIEW vt_vintertjeneste.vt_stirute_2_fdf   AS SELECT ogc_fid AS gid, * FROM driftweb.fdf   WHERE level_1_workareas::text ~~ '%VT Stirute 2, Ballerup%';
CREATE VIEW vt_vintertjeneste.vt_stirute_2_fdl   AS SELECT ogc_fid AS gid, * FROM driftweb.fdl   WHERE level_1_workareas::text ~~ '%VT Stirute 2, Ballerup%';
CREATE VIEW vt_vintertjeneste.vt_stirute_2_inst  AS SELECT ogc_fid AS gid, * FROM driftweb.inst  WHERE level_1_workareas::text ~~ '%VT Stirute 2, Ballerup%';

-- Arbejdsomaade VT Stirute 3, Egebjerg, Lautrup og Skovlunde
CREATE VIEW vt_vintertjeneste.vt_stirute_3_cyst   AS SELECT ogc_fid AS gid, * FROM driftweb.cyst   WHERE level_1_workareas::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%';
CREATE VIEW vt_vintertjeneste.vt_stirute_3_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%';
CREATE VIEW vt_vintertjeneste.vt_stirute_3_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%';
CREATE VIEW vt_vintertjeneste.vt_stirute_3_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%';
CREATE VIEW vt_vintertjeneste.vt_stirute_3_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Stirute 3, Egebjerg, Lautrup og Skovlunde%';

-- Arbejdsomaade VT Stirute 4, Måløv
CREATE VIEW vt_vintertjeneste.vt_stirute_4_cyst   AS SELECT ogc_fid AS gid, * FROM driftweb.cyst   WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';
CREATE VIEW vt_vintertjeneste.vt_stirute_4_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';
CREATE VIEW vt_vintertjeneste.vt_stirute_4_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';
CREATE VIEW vt_vintertjeneste.vt_stirute_4_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';
CREATE VIEW vt_vintertjeneste.vt_stirute_4_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';
CREATE VIEW vt_vintertjeneste.vt_stirute_4_v2s    AS SELECT ogc_fid AS gid, * FROM driftweb.v2s    WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';
CREATE VIEW vt_vintertjeneste.vt_stirute_4_inve   AS SELECT ogc_fid AS gid, * FROM driftweb.inve   WHERE level_1_workareas::text ~~ '%VT Stirute 4, Måløv%';

-- Arbejdsomaade VT Stirute 5, fortove og interne stier syd
CREATE VIEW vt_vintertjeneste.vt_stirute_5_cyst   AS SELECT ogc_fid AS gid, * FROM driftweb.cyst   WHERE level_1_workareas::text ~~ '%VT Stirute 5, fortove og interne stier syd%';
CREATE VIEW vt_vintertjeneste.vt_stirute_5_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Stirute 5, fortove og interne stier syd%';
CREATE VIEW vt_vintertjeneste.vt_stirute_5_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Stirute 5, fortove og interne stier syd%';
CREATE VIEW vt_vintertjeneste.vt_stirute_5_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Stirute 5, fortove og interne stier syd%';
CREATE VIEW vt_vintertjeneste.vt_stirute_5_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Stirute 5, fortove og interne stier syd%';

-- Arbejdsomaade VT Stirute 6, fortove og interne stier nord
CREATE VIEW vt_vintertjeneste.vt_stirute_6_cyst   AS SELECT ogc_fid AS gid, * FROM driftweb.cyst   WHERE level_1_workareas::text ~~ '%VT Stirute 6, fortove og interne stier nord%';
CREATE VIEW vt_vintertjeneste.vt_stirute_6_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Stirute 6, fortove og interne stier nord%';
CREATE VIEW vt_vintertjeneste.vt_stirute_6_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Stirute 6, fortove og interne stier nord%';
CREATE VIEW vt_vintertjeneste.vt_stirute_6_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Stirute 6, fortove og interne stier nord%';
CREATE VIEW vt_vintertjeneste.vt_stirute_6_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Stirute 6, fortove og interne stier nord%';

-- Arbejdsomaade VT Stirute 7
CREATE VIEW vt_vintertjeneste.vt_stirute_7_cyst   AS SELECT ogc_fid AS gid, * FROM driftweb.cyst   WHERE level_1_workareas::text ~~ '%VT Stirute 7%';
CREATE VIEW vt_vintertjeneste.vt_stirute_7_fdf    AS SELECT ogc_fid AS gid, * FROM driftweb.fdf    WHERE level_1_workareas::text ~~ '%VT Stirute 7%';
CREATE VIEW vt_vintertjeneste.vt_stirute_7_fdl    AS SELECT ogc_fid AS gid, * FROM driftweb.fdl    WHERE level_1_workareas::text ~~ '%VT Stirute 7%';
CREATE VIEW vt_vintertjeneste.vt_stirute_7_inst   AS SELECT ogc_fid AS gid, * FROM driftweb.inst   WHERE level_1_workareas::text ~~ '%VT Stirute 7%';
CREATE VIEW vt_vintertjeneste.vt_stirute_7_instpl AS SELECT ogc_fid AS gid, * FROM driftweb.instpl WHERE level_1_workareas::text ~~ '%VT Stirute 7%';

-- Arbejdsomaade VT Stirute 12, Alternativt tømiddel
CREATE VIEW vt_vintertjeneste.vt_stirute_12_cyst AS SELECT ogc_fid AS gid, * FROM driftweb.cyst WHERE level_1_workareas::text ~~ '%VT Stirute 12, Alternativt tømiddel%';
CREATE VIEW vt_vintertjeneste.vt_stirute_12_fdf  AS SELECT ogc_fid AS gid, * FROM driftweb.fdf  WHERE level_1_workareas::text ~~ '%VT Stirute 12, Alternativt tømiddel%';
CREATE VIEW vt_vintertjeneste.vt_stirute_12_fdl  AS SELECT ogc_fid AS gid, * FROM driftweb.fdl  WHERE level_1_workareas::text ~~ '%VT Stirute 12, Alternativt tømiddel%';
CREATE VIEW vt_vintertjeneste.vt_stirute_12_pkp  AS SELECT ogc_fid AS gid, * FROM driftweb.pkp  WHERE level_1_workareas::text ~~ '%VT Stirute 12, Alternativt tømiddel%';
CREATE VIEW vt_vintertjeneste.vt_stirute_12_v2s  AS SELECT ogc_fid AS gid, * FROM driftweb.v2s  WHERE level_1_workareas::text ~~ '%VT Stirute 12, Alternativt tømiddel%';

-- Arbejdsomaade VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II
CREATE VIEW vt_vintertjeneste.vt_vejrute_1_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_1_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_1_v4smr AS SELECT ogc_fid AS gid, * FROM driftweb.v4smr WHERE level_1_workareas::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_1_v4s   AS SELECT ogc_fid AS gid, * FROM driftweb.v4s   WHERE level_1_workareas::text ~~ '%VT Vejrute 1, Lastbil 1 - Vintervejklasse I og II%';

-- Arbejdsomaade VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II
CREATE VIEW vt_vintertjeneste.vt_vejrute_2_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_2_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_2_v4smr AS SELECT ogc_fid AS gid, * FROM driftweb.v4smr WHERE level_1_workareas::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_2_v4s   AS SELECT ogc_fid AS gid, * FROM driftweb.v4s   WHERE level_1_workareas::text ~~ '%VT Vejrute 2, Lastbil 2 - Vintervejklasse I og II%';

-- Arbejdsomaade VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II
-- OBS ! Filter tekst indeholder 2 blanktegn mellem  ...rute 3,  Stor...
CREATE VIEW vt_vintertjeneste.vt_vejrute_3_ap   AS SELECT ogc_fid AS gid, * FROM driftweb.ap   WHERE level_1_workareas::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_3_pkp  AS SELECT ogc_fid AS gid, * FROM driftweb.pkp  WHERE level_1_workareas::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_3_inve AS SELECT ogc_fid AS gid, * FROM driftweb.inve WHERE level_1_workareas::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_3_v2s  AS SELECT ogc_fid AS gid, * FROM driftweb.v2s  WHERE level_1_workareas::text ~~ '%VT Vejrute 3,  Stor traktor 1 - Vintervejklasse I og II%';
                                                                                                                                 
-- Arbejdsomaade VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)
CREATE VIEW vt_vintertjeneste.vt_vejrute_4_ap    AS SELECT ogc_fid AS gid, * FROM driftweb.ap    WHERE level_1_workareas::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_4_pkp   AS SELECT ogc_fid AS gid, * FROM driftweb.pkp   WHERE level_1_workareas::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_4_inve  AS SELECT ogc_fid AS gid, * FROM driftweb.inve  WHERE level_1_workareas::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_4_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_4_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 4, Stor traktor 2 - Vintervejklasse I og II (P-pladser m.m.)%';
                                                                                                                                  
-- Arbejdsomaade VT Vejrute 5, Lastbil 1 - Vintervejklasse III
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_ap    AS SELECT ogc_fid AS gid, * FROM driftweb.ap    WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_pkp   AS SELECT ogc_fid AS gid, * FROM driftweb.pkp   WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_inve  AS SELECT ogc_fid AS gid, * FROM driftweb.inve  WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_v4s   AS SELECT ogc_fid AS gid, * FROM driftweb.v4s   WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_5_v4smr AS SELECT ogc_fid AS gid, * FROM driftweb.v4smr WHERE level_1_workareas::text ~~ '%VT Vejrute 5, Lastbil 1 - Vintervejklasse III%';

-- Arbejdsomaade VT Vejrute 6, Lastbil 2 - Vintervejklasse III
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_ap    AS SELECT ogc_fid AS gid, * FROM driftweb.ap    WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_pkp   AS SELECT ogc_fid AS gid, * FROM driftweb.pkp   WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_inve  AS SELECT ogc_fid AS gid, * FROM driftweb.inve  WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_v4s   AS SELECT ogc_fid AS gid, * FROM driftweb.v4s   WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_6_v4smr AS SELECT ogc_fid AS gid, * FROM driftweb.v4smr WHERE level_1_workareas::text ~~ '%VT Vejrute 6, Lastbil 2 - Vintervejklasse III%';

-- Arbejdsomaade VT Vejrute 7, Stor traktor 3 - Vintervejklasse III
CREATE VIEW vt_vintertjeneste.vt_vejrute_7_ap    AS SELECT ogc_fid AS gid, * FROM driftweb.ap    WHERE level_1_workareas::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_7_pkp   AS SELECT ogc_fid AS gid, * FROM driftweb.pkp   WHERE level_1_workareas::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_7_inve  AS SELECT ogc_fid AS gid, * FROM driftweb.inve  WHERE level_1_workareas::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_7_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_7_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_7_cyst  AS SELECT ogc_fid AS gid, * FROM driftweb.cyst  WHERE level_1_workareas::text ~~ '%VT Vejrute 7, Stor traktor 3 - Vintervejklasse III%';

-- Arbejdsomaade VT Vejrute 8, Stor traktor 1 - Vintervejklasse III
CREATE VIEW vt_vintertjeneste.vt_vejrute_8_ap    AS SELECT ogc_fid AS gid, * FROM driftweb.ap    WHERE level_1_workareas::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_8_pkp   AS SELECT ogc_fid AS gid, * FROM driftweb.pkp   WHERE level_1_workareas::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_8_inve  AS SELECT ogc_fid AS gid, * FROM driftweb.inve  WHERE level_1_workareas::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_8_v2s   AS SELECT ogc_fid AS gid, * FROM driftweb.v2s   WHERE level_1_workareas::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_8_v2smr AS SELECT ogc_fid AS gid, * FROM driftweb.v2smr WHERE level_1_workareas::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%';
CREATE VIEW vt_vintertjeneste.vt_vejrute_8_cyst  AS SELECT ogc_fid AS gid, * FROM driftweb.cyst  WHERE level_1_workareas::text ~~ '%VT Vejrute 8, Stor traktor 1 - Vintervejklasse III%';
