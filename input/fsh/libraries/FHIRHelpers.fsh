Instance: FHIRHelpers
InstanceOf: Library
Title: "FHIRHelpers"
Description: "This library defines functions to convert between FHIR data types and CQL system-defined types, as well as functions to support FHIRPath implementation. For more information, the FHIRHelpers wiki page: https://github.com/cqframework/clinical_quality_language/wiki/FHIRHelpers"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/FHIRHelpers"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "FHIRHelpers"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRHelpers.cql"