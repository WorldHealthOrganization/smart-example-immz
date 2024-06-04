Profile: SGVaccineProposal
Parent: MedicationRequest
Description: "An order for immunization (for a disease, not a specific product)"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
* intent = #proposal
* medicationCodeableConcept from VaccineTypes