Instance: IMMZIND13Logic
InstanceOf: Library
Title: "IMMZ.IND.13 Logic"
Description: "This library defines population criteria logic for the IND.13 indicator in the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZIND13Logic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* name = "IMMZIND13Logic"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZIND13Logic.cql"