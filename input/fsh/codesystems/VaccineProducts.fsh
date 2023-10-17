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
