Instance: IMMZD2DTMeasles
InstanceOf: Library
Title: "IMMZD2DTMeasles"
Description: "This library defines decision support logic for the D2.DT.Measles decision table in the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/ig/smart-immunizations-measles/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeasles"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZD2DTMeasles.cql"