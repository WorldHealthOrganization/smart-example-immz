
ValueSet: SGCountryValueSet
Id: sgcountry
Title: "Country ValueSet"
Description: """This value set defines a base set of codes for countries.   
   
   Note: The codes for countries are taken from    [ISO 3166](https://www.iso.org/iso-3166-country-codes.html)."""
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"
* ^status = #draft
* ^experimental = true
* include codes from system ISO3166Part1