Instance: Immunization1
InstanceOf: SGImmunization
Description: "Immunization record - 1st MMMR vaccine"
* vaccineCode = $ICD11#XM8TF3
* lotNumber = "lot123"
* expirationDate = "2024-06-30"
//* extension[administeredProduct].valueReference = Reference(Measlesprod1)
* extension[administeredProduct].valueCodeableConcept = VaccineProducts#20009060/2
* patient.reference = "Patient/P123456"
* status = #completed
* location.display = "Vaccination site"
* occurrenceDateTime = "2023-02-05"
* protocolApplied.doseNumberPositiveInt = 1
