ValueSet: VaccineTypes
Id: VaccineTypes        
Title:     "Measles Vaccine Type ValueSet"
Description: "Measles Vaccine type Codes, containing the different types of antigens used in vaccine guidelines."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"
* ^status = #active
* ^experimental = true

* codes from system ICD11 where parent = #XM28X5 
* ICD11#XM28X5
* ICD11#XM2340

* $LNC#30940-1 "Measles virus+Mumps virus+Rubella virus dose count in combination vaccine"

* $SCT#836382004 "Measles morbillivirus antigen-containing vaccine product"