Instance: IMMZIND08Logic
InstanceOf: Library
Title: "IMMZ.IND.08 Logic"
Description: "This library defines population criteria for the IND.08 indicator in the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZIND08Logic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* name = "IMMZIND08Logic"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZIND08Logic.cql"