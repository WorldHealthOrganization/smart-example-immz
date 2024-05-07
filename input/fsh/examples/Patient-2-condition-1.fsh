Instance: patient-2-condition-1
InstanceOf: Condition
Usage: #example
* clinicalStatus.coding.version = "0.5.0"
* clinicalStatus.coding = $condition-clinical#active "Active"
* verificationStatus.coding.version = "0.5.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* code.coding = IMMZ.D4#DE167 "Severe allergic reactions"
* subject = Reference(Patient/P654321)
* onsetDateTime = "2022-10-10T10:00:00-07:00"