Instance: WHOCommon
InstanceOf: Library
Title: "WHOCommon"
Description: "This library defines common terminologies and functions used throughout WHO SMART Guidelines content"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/WHOCommon"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "WHOCommon"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-WHOCommon.cql"