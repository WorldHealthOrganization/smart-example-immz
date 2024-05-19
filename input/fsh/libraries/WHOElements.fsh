Instance: WHOElements
InstanceOf: Library
Title: "WHOElements"
Description: "This library defines context-independent elements used throughout WHO SMART Guidelines content"
Usage: #definition
* url = "http://smart.who.int/base-clinical/Library/WHOElements"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "WHOElements"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-WHOElements.cql"