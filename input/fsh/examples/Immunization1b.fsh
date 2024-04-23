Instance: Immunization1b
InstanceOf: SGImmunization
Description: "Immunization record"
* vaccineCode = $ICD11#XM4AJ8 "Measles, combinations with mumps, rubella and varicella, live attenuated"
* lotNumber = "lot124"
* expirationDate = "2024-10-01"
//* extension[administeredProduct].valueReference = Reference(Measlesprod1)
* extension[administeredProduct].valueCodeableConcept = VaccineProducts#20009060/2
* patient.reference = "Patient/P654321"
* status = #completed
* occurrenceDateTime = "2024-01-02T00:00:00.000Z"
* recorded = "2024-01-02T00:00:00.000Z"
* primarySource = true
