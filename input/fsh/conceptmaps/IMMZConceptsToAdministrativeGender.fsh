Instance:     IMMZConceptsToAdministrativeGender
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.C sex coding to FHIR Administrative Gender."
Usage:        #definition

* name = "IMMZConceptsToAdministrativeGender"
* title = "ConceptMap to and from Immunization Concepts to administrative gender"
* status = #active
* experimental = false

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $GENDER
  * insert ElementMap(DE6, male, equivalent)
  * insert ElementMap(DE7, female, equivalent)
  * insert ElementMap(DE8, unknown, equivalent)
  * insert ElementMap(DE9, other, wider)

* group[+]
  * source = $GENDER
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(male, DE6, equivalent)
  * insert ElementMap(female, DE7, equivalent)
  * insert ElementMap(unknown, DE8, equivalent)
  * insert ElementMap(other, DE9, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"