Instance: IMMZD5DTMeaslesCILogic
InstanceOf: Library
Title: "IMMZD5DTMeaslesCILogic"
Description: "This library defines decision support logic for the D2.DT.Measles Dose 0 decision table in the Immunization CPG"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary"
* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"
* url = "http://smart.who.int/immunizations-measles/Library/IMMZD5DTMeaslesCILogic"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
  * valueCode = #computable
* name = "IMMZD5DTMeaslesCILogic"
* status = #active
* experimental = true
* publisher = "World Health Organization (WHO)"
* type = $library-type#logic-library
* content.id = "ig-loader-IMMZD5DTMeaslesCILogic.cql"