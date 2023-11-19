Instance: IMMZCommonIzDataElements
InstanceOf: Library
Title: "IMMZCommonIzDataElements"
Description: "This library defines common terminologies and functions used throughout the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZCommonIzDataElements"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZCommonIzDataElements"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZCommonIzDataElements.cql"