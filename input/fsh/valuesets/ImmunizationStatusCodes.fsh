
ValueSet: SGImmunizationStatusCodes
Id: SGImmunizationStatusCodes
Title: "Immunization Status Codes"
Description: "The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the administered dose of vaccine."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"
* ^status = #draft
* ^experimental = true
* EventStatus#completed
* EventStatus#entered-in-error
* EventStatus#not-done