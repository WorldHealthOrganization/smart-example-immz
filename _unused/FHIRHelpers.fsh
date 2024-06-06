Instance: FHIRHelpers
InstanceOf: Library
Title: "FHIRHelpers"
Description: "This library defines functions to convert between FHIR data types and CQL system-defined types, as well as functions to support FHIRPath implementation. For more information, the FHIRHelpers wiki page: https://github.com/cqframework/clinical_quality_language/wiki/FHIRHelpers"
Usage: #definition
* url = "http://fhir.org/guides/cqf/common/Library/FHIRHelpers"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
  * valueCode = #computable
* version = "4.0.1"
* name = "FHIRHelpers"
* status = #draft
* experimental = true
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRHelpers.cql"