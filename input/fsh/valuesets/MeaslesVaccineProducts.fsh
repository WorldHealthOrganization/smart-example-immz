ValueSet: VSMeaslesVaccineProducts
Id: VSMeaslesVaccineProducts        
Title:     "MeaslesVaccine Products ValueSet"
Description: "Vaccine Product Codes - representing the codes of the products currently available."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"
* ^experimental = true
* codes from system VaccineProducts //where classification = "XM28X5"