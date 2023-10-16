Profile: VaccineProposal
Parent: MedicationRequest
* intent = #proposal
* medicationCodeableConcept from VSVaccineTypes


Profile: VaccineRequest
Parent: MedicationRequest
* intent = #instance-order
* medication[x] only Reference(VaccineProduct) 



Instance: VaccineProposal1
InstanceOf: VaccineProposal
* status = #active
* medicationCodeableConcept = $ICD11#XM28X5
* subject = Reference(Patient/patient1)