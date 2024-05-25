Instance: FHIRCommon
InstanceOf: Library
Title: "FHIRCommon"
Description: "This library defines terminologies and functions commonly used in FHIR-based CQL artifacts"
Usage: #definition
* url = "http://fhir.org/guides/cqf/common/Library/FHIRCommon"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "4.0.1"
* name = "FHIRCommon"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRCommon.cql"