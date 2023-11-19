Instance: Immunization1
InstanceOf: SGImmunization
Description: "Immunization record"
* vaccineCode = $ICD11#XM28X5
* lotNumber = "lot123"
* expirationDate = "2023-10-01"
//* extension[administeredProduct].valueReference = Reference(Measlesprod1)
* extension[administeredProduct].valueCodeableConcept = VaccineProducts#20009060/2
* patient.reference = "Patient/P123456"
* status = #completed
* occurrenceDateTime = "2023-08-05"
