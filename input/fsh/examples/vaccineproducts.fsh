CodeSystem: ICD11
Id: ICD11        
Title:     "ICD-11"
Description: "ICD-11."

* ^url = $ICD11

* #XM28X5 "Measles vaccines"
  * #XM8L15 "Measles, live attenuated"
  * #XM9439 "Measles, combinations with mumps, live attenuated"
  * #XM8TF3 "Measles, combinations with mumps and rubella, live attenuated"
  * #XM21H2 "Measles, combinations with rubella, live attenuated"
  * #XM4AJ8 "Measles, combinations with mumps, rubella and varicella, live attenuated"

* #XM1131 "Mumps vaccines"
  * #XM2340 "Mumps, live attenuated"

* #XX45B7 "Intersex"
* #XX2PX3 "Biological sex not specified"
* #XX2V25 "Female"
* #XX2UQ8 "Male"
* #1B1Z "Tuberculosis"
* #1C62.Z "Human immunodeficiency virus disease without mention of tuberculosis or malaria"
* #1H0Z "Certain infectious or parasitic diseases"
* #3A51 "Sickle cell disorders or other haemoglobinopathies"
* #4B4Z "Diseases of the immune system"
* #KA21.4 "Preterm newborn"
* #QA02.0 "Observation for suspected tuberculosis, ruled out"
* #QA02.Y "Medical observation or evaluation for suspected diseases or conditions, ruled out"
* #QA48.1 "Care or examination of lactating mother"
* #QC60 "Family history of infectious diseases"
* #XM18Y8 "Meningococcus C, purified polysaccharides antigen conjugated vaccines"
* #XM2280 "Meningococcus A, purified polysaccharides antigen conjugated vaccines"
* #XM33K4 "Typhoid, oral, live attenuated vaccines"
* #XM3KQ4 "Interferon gamma"
* #XM3SF6 "Typhoid, purified polysaccharide antigen vaccines"
* #XM47S0 "Encephalitis, Japanese, live attenuated"
* #XM5V19 "Poliomyelitis, trivalent, inactivated, whole virus"
* #XM79H3 "Poliomyelitis oral, bivalent, live attenuated"
* #XM7PF6 "Tuberculin"
* #XT0S "Pregnancy"


CodeSystem: VaccineProducts
Title:     "Vaccine Product codes CodeSet"
Description: "Vaccine Product codes, containing the different available products."

* ^property[+].code = #classification
* ^property[=].type = #code
* ^property[=].uri = "http://smart.who.int/ig/smart-immunizations-measles#classification"

* #20009060/2 "Serum Institute of India Measles vaccine"
  * ^property[+].code = #classification
  * ^property[=].valueCode = #XM8L15
* #7680007030014 "M-M-RvaxPRO"
  * ^property[+].code = #classification
  * ^property[=].valueCode = #XM8TF3


ValueSet: VSVaccineTypes
Id: VaccineTypes        
Title:     "Vaccine Type ValueSet"
Description: "Vaccine type Codes, containing the different types of antigens used in vaccine guidelines."
* codes from system ICD11


ValueSet: VSMeaslesVaccineProducts
Id: VSVaccineProducts        
Title:     "MeaslesVaccine Type ValueSet"
Description: "Vaccine type Codes, containing the different types of antigens used in vaccine guidelines."
* codes from system VaccineProducts // where property[classification] = #XM28X5


Instance: MedSIIMeaslesVaccine
InstanceOf: VaccineProduct
Title: "Serum Institute of India Measles - Medication Product"
Description: "Serum Institute of India Measles - Medication Product"
* code = VaccineProducts#20009060/2
* extension[classification][+].valueCodeableConcept = $ICD11#XM8L15

Instance: GSKMeaslesVaccine
InstanceOf: VaccineProduct
Title: "GSK - M-M-RvaxPRO"
Description: "M-M-RvaxPRO"
* code = VaccineProducts#7680007030014
* extension[classification][+].valueCodeableConcept = $ICD11#XM8L15
* extension[classification][+].valueCodeableConcept = $ICD11#XM2340


Extension: Classification
Description: "Medication Classification."
* value[x] only CodeableConcept
* value[x] from VSVaccineTypes (required)



Profile: VaccineProduct
Parent: Medication
Description: "A Vaccine product"

* extension contains Classification named classification 0..* MS


Profile: SGImmunization
Parent: Immunization
Description: "A record of an immunization, with a given product"

* extension contains SGIMMAdministeredProduct named administeredProduct 0..1


Extension: SGIMMAdministeredProduct
Id: sg-ext-administeredProduct
Title: "SGAdministeredProduct"
Description: "The product administered"
* value[x] only Reference(VaccineProduct) or CodeableConcept

