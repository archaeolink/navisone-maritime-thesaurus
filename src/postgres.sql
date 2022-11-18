-- NAVIS II -> ship properties

-- ship function

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "ShipFunctionDE" AS de, "ShipFunctionUK" AS en, "ShipFunctionDK" AS dk, "ShipFunctionNL" AS nl, "ShipFunctionFR" AS fr, "ShipFunctionIT" AS it, "ShipFunctionES" AS es, "ShipFunctionPL" AS pl, "ShipFunctionGR" AS gr, "ShipFunctionHEBREW" AS he, 'tblShipFunction'::varchar AS origindesc
FROM navis2."tblShipFunction", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblShipFunction"."ShipFunction";

-- operating environment

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "ShipOperatingEnvironmentDE" AS de, "ShipOperatingEnvironmentUK" AS en, "ShipOperatingEnvironmentDK" AS dk, "ShipOperatingEnvironmentNL" AS nl, "ShipOperatingEnvironmentFR" AS fr, "ShipOperatingEnvironmentIT" AS it, "ShipOperatingEnvironmentES" AS es, "ShipOperatingEnvironmentPL" AS pl, "ShipOperatingEnvironmentGR" AS gr, "ShipOperatingEnvironmentHEBREW" AS he, 'tblOperatingEnvironment'::varchar AS origindesc
FROM navis2."tblOperatingEnvironment", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblOperatingEnvironment"."ShipOperatingEnvironment";

-- propulsion

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "PropulsionDE" AS de, "PropulsionUK" AS en, "PropulsionDK" AS dk, "PropulsionNL" AS nl, "PropulsionFR" AS fr, "PropulsionIT" AS it, "PropulsionES" AS es, "PropulsionPL" AS pl, "PropulsionGR" AS gr, "PropulsionHEBREW" AS he, 'tblPropulsion'::varchar AS origindesc
FROM navis2."tblPropulsion", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblPropulsion"."Propulsion";

-- ship type

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "ShipTypeDE" AS de, "ShipTypeUK" AS en, "ShipTypeDK" AS dk, "ShipTypeNL" AS nl, "ShipTypeFR" AS fr, "ShipTypeIT" AS it, "ShipTypeES" AS es, "ShipTypePL" AS pl, "ShipTypeGR" AS gr, "ShipTypeHEBREW" AS he, 'tblShipType'::varchar AS origindesc
FROM navis2."tblShipType", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblShipType"."ShipType";

-- NAVIS II -> ship components

-- super description

--INSERT INTO "not".parent (navisid, de, en, dk, nl, fr, it, es, pl, gr, he)
--SELECT e55_keyword.id AS navisid, "SuperDescriptionDE" AS de, "SuperDescriptionUK" AS en, "SuperDescriptionDK" AS dk, "SuperDescriptionNL" AS nl, "SuperDescriptionFR" AS fr, "SuperDescriptionIT" AS it, "SuperDescriptionES" AS es, "SuperDescriptionPL" AS pl, "SuperDescriptionGR" AS gr, "SuperDescriptionHEBREW" AS he
--FROM navis2."tblSuperDescription", public.e55_keyword
--WHERE e55_keyword.originkey = navis2."tblSuperDescription"."SUPERDESCRIPTION";

-- hull

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryHULL'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'HULL';

-- internal construction

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryINTERNALCONSTRUCTION'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'INTERNALCONSTRUCTION';

-- decks

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryDECKS'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'DECKS';

-- constructional features

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryCONSTRUCTIONALFEATURES'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'CONSTRUCTIONALFEATURES';

-- sailing gear

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionarySAILINGGEAR'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'SAILINGGEAR';

-- stearing gear

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionarySTEERINGGEAR'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'STEERINGGEAR';

-- rowing and paddling

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryROWINGANDPADDLING'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'ROWINGANDPADDLING';

-- punting and towing

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryPUNTINGANDTOWING'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'PUNTINGANDTOWING';

-- handling

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryHANDLING'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'HANDLING';

-- warfare

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionaryWARFARE'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'WARFARE';

-- surface treatment

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionarySURFACETREATMENT'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'SURFACETREATMENT';

-- superstructure

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, "DEUTSCHDisplayLowerCaseDE" AS de, "DESCRIPTIONDisplayLowerCaseUK" AS en, "DANSKDisplayLowerCaseDK" AS dk, "NEDERLANDSDisplayLowerCaseNL" AS nl, "FRANCAISDisplayLowerCaseFR" AS fr, "ITALIANODisplayLowerCaseIT" AS it, "ESPAGNOLDisplayLowerCaseES" AS es, "POLISHDisplayLowerCasePL" AS pl, "ELLENICODisplayLowerCaseGR" AS gr, "HEBREWDisplayLowerCaseHE" AS he, 'tblDictionarySUPERSTRUCTURE'::varchar AS origindesc
FROM navis2."tblDictonaryShipDepictions", public.e55_keyword
WHERE e55_keyword.originkey = navis2."tblDictonaryShipDepictions"."DESCRIPTION" AND navis2."tblDictonaryShipDepictions"."SUPERDESCRIPTION" = 'SUPERSTRUCTURE';

-- NAVIS I -> ship properties

-- construction

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc)
SELECT e55_keyword.id AS navisid, n1edit."tblLookupConstruction"."de" AS de, n1edit."tblLookupConstruction"."uk" AS en, n1edit."tblLookupConstruction"."dk" AS dk, n1edit."tblLookupConstruction"."nl" AS nl, n1edit."tblLookupConstruction"."fr" AS fr, n1edit."tblLookupConstruction"."it" AS it, n1edit."tblLookupConstruction"."es" AS es, null AS pl, null AS gr, null AS he, 'tblLookupConstruction'::varchar AS origindesc
FROM n1edit."tblLookupConstruction", public.e55_keyword
WHERE e55_keyword.originkey = n1edit."tblLookupConstruction".originkey;

-- woordemboek

INSERT INTO "not".not_import (navisid, de, en, dk, nl, fr, it, es, pl, gr, he, origindesc,parent_str)
SELECT e55_keyword.id AS navisid, n1edit."tblWoordenboek".de AS de, n1edit."tblWoordenboek".en AS en, n1edit."tblWoordenboek".dk AS dk, n1edit."tblWoordenboek".nl AS nl, n1edit."tblWoordenboek".fr AS fr, n1edit."tblWoordenboek".it AS it, n1edit."tblWoordenboek".es AS es, n1edit."tblWoordenboek".pl AS pl, n1edit."tblWoordenboek".gr AS gr, null AS he, 'tblWoordenboek'::varchar AS origindesc, originparent
FROM n1edit."tblWoordenboek", public.e55_keyword
WHERE e55_keyword.originkey = n1edit."tblWoordenboek".originkey AND public.e55_keyword.id > 4700
AND originparent NOT IN ('RESEARCHANDDOCUMENTATION','VIEWS','NULL','SAILINGGEAR')
ORDER BY originparent, en;

-- ship type

INSERT INTO "not".not_import (navisid, de, en, origindesc)
SELECT ("ID"+50000) as id, "Type", "Type", 'n1.tblLookupType' as origindesc FROM navis1."tblLookupType";

-- function and oe

INSERT INTO "not".not_import (navisid, de, en, origindesc) VALUES (60001,'Blockade','blockage','n1.function');
INSERT INTO "not".not_import (navisid, de, en, origindesc) VALUES (60002,'Küste','Coastal','n1.function');

-- UPDATE

UPDATE "not".not_import SET fk_id_parent = 4 WHERE origindesc = 'n1.tblLookupType';
UPDATE "not".not_import SET fk_id_parent = 1 WHERE origindesc = 'tblShipFunction';
UPDATE "not".not_import SET fk_id_parent = 2 WHERE origindesc = 'tblOperatingEnvironment';
UPDATE "not".not_import SET fk_id_parent = 3 WHERE origindesc = 'tblPropulsion';
UPDATE "not".not_import SET fk_id_parent = 4 WHERE origindesc = 'tblShipType';
UPDATE "not".not_import SET fk_id_parent = 6 WHERE origindesc = 'tblDictionaryHULL';
UPDATE "not".not_import SET fk_id_parent = 7 WHERE origindesc = 'tblDictionaryINTERNALCONSTRUCTION';
UPDATE "not".not_import SET fk_id_parent = 8 WHERE origindesc = 'tblDictionaryDECKS';
UPDATE "not".not_import SET fk_id_parent = 9 WHERE origindesc = 'tblDictionaryCONSTRUCTIONALFEATURES';
UPDATE "not".not_import SET fk_id_parent = 10 WHERE origindesc = 'tblDictionarySAILINGGEAR';
UPDATE "not".not_import SET fk_id_parent = 11 WHERE origindesc = 'tblDictionarySTEERINGGEAR';
UPDATE "not".not_import SET fk_id_parent = 12 WHERE origindesc = 'tblDictionaryROWINGANDPADDLING';
UPDATE "not".not_import SET fk_id_parent = 13 WHERE origindesc = 'tblDictionaryPUNTINGANDTOWING';
UPDATE "not".not_import SET fk_id_parent = 14 WHERE origindesc = 'tblDictionaryHANDLING';
UPDATE "not".not_import SET fk_id_parent = 15 WHERE origindesc = 'tblDictionaryWARFARE';
UPDATE "not".not_import SET fk_id_parent = 16 WHERE origindesc = 'tblDictionarySURFACETREATMENT';
UPDATE "not".not_import SET fk_id_parent = 19 WHERE origindesc = 'tblDictionarySUPERSTRUCTURE';
UPDATE "not".not_import SET fk_id_parent = 9 WHERE origindesc = 'tblLookupConstruction';