Instance: Immunization2
InstanceOf: SGImmunization
Description: "Immunization record - 2nd MMR vaccine"
* vaccineCode = $ICD11#XM8TF3
* lotNumber = "lot123"
* expirationDate = "2024-06-30"
//* extension[administeredProduct].valueReference = Reference(Measlesprod1)
* extension[administeredProduct].valueCodeableConcept = VaccineProducts#20009060/2
* patient.reference = "Patient/P123456"
* status = #completed
* location.display = "Vaccination site"
* occurrenceDateTime = "2023-06-02"
* protocolApplied.doseNumberPositiveInt = 1
