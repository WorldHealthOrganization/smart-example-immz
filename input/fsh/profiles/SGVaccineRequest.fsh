Profile: SGVaccineRequest
Parent: MedicationRequest
Description: "An order for an actual product"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
* intent = #instance-order
* medication[x] only Reference(SGVaccineProduct) 