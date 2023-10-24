Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

ValueSet: CountryValueSet
Id: country
Title: "Country ValueSet"
Description: """This value set defines a base set of codes for countries.   
   
   Note: The codes for countries are taken from    [ISO 3166](https://www.iso.org/iso-3166-country-codes.html)."""
* ^meta.lastUpdated = "2023-03-26T15:21:02.749+11:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/ValueSet/country"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.3.3297"
* ^version = "5.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-26T15:21:02+11:00"
* ^publisher = "FHIR Project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* include codes from system ISO3166Part1