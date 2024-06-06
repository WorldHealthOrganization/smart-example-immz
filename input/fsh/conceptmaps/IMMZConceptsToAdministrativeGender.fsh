Instance:     IMMZConceptsToAdministrativeGender
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.C sex coding to FHIR Administrative Gender."
Usage:        #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"

* name = "IMMZConceptsToAdministrativeGender"
* title = "ConceptMap to and from Immunization Concepts to administrative gender"
* status = #active
* experimental = true

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $GENDER
  * insert ElementMap(C.DE6, male, equivalent)
  * insert ElementMap(C.DE7, female, equivalent)
  * insert ElementMap(C.DE8, unknown, equivalent)
  * insert ElementMap(C.DE9, other, wider)

* group[+]
  * source = $GENDER
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(male, C.DE6, equivalent)
  * insert ElementMap(female, C.DE7, equivalent)
  * insert ElementMap(unknown, C.DE8, equivalent)
  * insert ElementMap(other, C.DE9, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"