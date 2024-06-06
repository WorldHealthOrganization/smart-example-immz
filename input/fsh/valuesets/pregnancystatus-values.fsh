Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

ValueSet: PregnancyStatusValues
Id: pregnancystatus-values
Title: "Pregnancy status values"
Description: "Codes representing possible values for the Pregnancy status element"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"
* ^status = #draft
* ^experimental = true
* ^date = "2023-10-12T09:43:25-04:00"
* ^publisher = "World Health Organization (WHO)"
* ^contact.name = "World Health Organization (WHO)"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.who.int"
* ^jurisdiction = $m49.htm#001
* ^immutable = true
* LOINC#LA15173-0 "Pregnant"
* LOINC#LA26683-5 "Not pregnant"
* LOINC#LA4489-6 "Unknown"
// TODO: These should not be in this set, this should be handled with mapping, yes?
* SNOMED_CT_INT#77386006 "Pregnant"
* SNOMED_CT_INT#60001007 "Not pregnant"
* SNOMED_CT_INT#261665006 "Unknown"