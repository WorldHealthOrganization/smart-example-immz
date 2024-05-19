Instance: IMMZIndicatorElements
InstanceOf: Library
Title: "IMMZIndicatorElements"
Description: "This library defines indicator-based elements and terminologies used throughout the Immunization CPG indicators"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZIndicatorElements"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* name = "IMMZIndicatorElements"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZIndicatorElements.cql"