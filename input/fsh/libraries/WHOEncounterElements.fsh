Instance: WHOEncounterElements
InstanceOf: Library
Title: "WHOEncounterElements"
Description: "This library defines encounter-based elements used throughout WHO SMART Guidelines content"
Usage: #definition
* url = "http://smart.who.int/base-clinical/Library/WHOEncounterElements"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "WHOEncounterElements"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-WHOEncounterElements.cql"