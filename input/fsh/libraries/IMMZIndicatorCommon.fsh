Instance: IMMZIndicatorCommon
InstanceOf: Library
Title: "IMMZIndicatorCommon"
Description: "This library defines common terminologies and functions used throughout the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZIndicatorCommon"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZIndicatorCommon"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZIndicatorCommon.cql"