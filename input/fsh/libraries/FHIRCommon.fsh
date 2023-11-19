Instance: FHIRCommon
InstanceOf: Library
Title: "FHIRCommon"
Description: "This library defines terminologies and functions commonly used in FHIR-based CQL artifacts"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/FHIRCommon"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "FHIRCommon"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRCommon.cql"