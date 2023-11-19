Instance: IMMZINDMeasles
InstanceOf: Library
Title: "IMMZINDMeasles"
Description: "This library defines population criteria for the Measles indicator in the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZINDMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZINDMeasles"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZINDMeasles.cql"