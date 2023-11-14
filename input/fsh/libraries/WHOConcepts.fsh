Instance: WHOConcepts
InstanceOf: Library
Title: "WHOConcepts"
Description: "This library defines common concepts used throughout WHO SMART Guidelines content"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/WHOConcepts"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "WHOConcepts"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-WHOConcepts.cql"