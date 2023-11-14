Instance: IMMZVaccineLibrary
InstanceOf: Library
Title: "IMMZVaccineLibrary"
Description: "This library defines logic and mappings for the use of vaccines in the Immunization CPG"
Usage: #definition
* url = "http://smart.who.int/immunizations-measles/Library/IMMZVaccineLibrary"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZVaccineLibrary"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZVaccineLibrary.cql"