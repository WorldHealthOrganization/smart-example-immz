CodeSystem: VaccineProducts
Title: "Vaccine Product codes CodeSet"
Description: "Vaccine Product codes, containing the different available products."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"
* ^experimental = true
* ^caseSensitive = true

* ^property[+].code = #classification
* ^property[=].type = #code
* ^property[=].uri = "http://smart.who.int/immunizations-measles#classification"

* #20009060/2 "Serum Institute of India Measles vaccine"
  * ^property[+].code = #classification
  * ^property[=].valueCode = #XM8L15
* #7680007030014 "M-M-RvaxPRO"
  * ^property[+].code = #classification
  * ^property[=].valueCode = #XM8TF3
