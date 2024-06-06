//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: Negativetestresultvalues
Id: Negativetestresult-values
Title: "Negative Test Results"
Description: "Codes representing negative test result values"
//don't touch status, experimental, immutable
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"
* ^status = #draft
* ^experimental = true
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* $SCT#260385009 "Negative (qualifier value)"
