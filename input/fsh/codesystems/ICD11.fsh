CodeSystem: ICD11
Id: ICD11        
Title:     "ICD-11"
Description: "ICD-11."

* ^url = $ICD11
//* ^hierarchyMeaning = #is-a

* ^property[+].code = #parent
* ^property[=].type = #code
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"



* #XM28X5 "Measles vaccines"
  // * ^property[+].code = #child
  // * ^property[=].valueCode = #XM8L15
  // * ^property[+].code = #child
  // * ^property[=].valueCode = #XM9439
  // * ^property[+].code = #child
  // * ^property[=].valueCode = #XM8TF3
  // * ^property[+].code = #child
  // * ^property[=].valueCode = #XM21H2
  // * ^property[+].code = #child
  // * ^property[=].valueCode = #XM4AJ8
  * #XM8L15 "Measles, live attenuated"
    // * ^property[+].code = #parent
    // * ^property[=].valueCode = #XM28X5
  * #XM9439 "Measles, combinations with mumps, live attenuated"
    // * ^property[+].code = #parent
    // * ^property[=].valueCode = #XM28X5
  * #XM8TF3 "Measles, combinations with mumps and rubella, live attenuated"
    // * ^property[+].code = #parent
    // * ^property[=].valueCode = #XM28X5
  * #XM21H2 "Measles, combinations with rubella, live attenuated"
    // * ^property[+].code = #parent
    // * ^property[=].valueCode = #XM28X5
  * #XM4AJ8 "Measles, combinations with mumps, rubella and varicella, live attenuated"
    // * ^property[+].code = #parent
    // * ^property[=].valueCode = #XM28X5

* #XM1131 "Mumps vaccines"
  // * ^property[+].code = #child
  // * ^property[=].valueCode = #XM2340
  * #XM2340 "Mumps, live attenuated"
    // * ^property[+].code = #parent
    // * ^property[=].valueCode = #XM1131



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
* #QA41 "Pregnant state"
* #QC44.0 "Personal history of anaphylaxis"
* #QC44.2 "Personal history of allergy to drugs, medicaments or biological substances"
* #1C62.1 "HIV disease clinical stage 2 without mention of tuberculosis or malaria"