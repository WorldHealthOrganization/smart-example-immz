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



Instance: Measlesprod1
InstanceOf: VaccineProduct
* extension[classification].valueCodeableConcept = $ICD11#XM28X5
* code = VaccineProducts#20009060/2 


Instance: Measlesprod2
InstanceOf: VaccineProduct
* extension[classification].valueCodeableConcept = $ICD11#XM28X5
* code = VaccineProducts#7680007030014 



Instance: Immunization1
InstanceOf: SGImmunization
* vaccineCode = #20009060/2
* lotNumber = "lot123"
* expirationDate = "2023-10-01"
* extension[administeredProduct].valueReference = Reference(Measlesprod1)
* patient.reference = "Patient/Patient1"

* status = #active
* occurrenceDateTime = "2023-08-05"
