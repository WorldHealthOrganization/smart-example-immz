Instance: IMMZD2DTMeaslesSupplementaryLogic
InstanceOf: Library
Title: "IMMZD2DTMeaslesSupplementaryLogic"
Description: "This library defines decision support logic for the D2.DT.Measles Dose 0 decision table in the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZD2DTMeaslesSupplementaryLogic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* name = "IMMZD2DTMeaslesSupplementaryLogic"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZD2DTMeaslesSupplementaryLogic.cql"