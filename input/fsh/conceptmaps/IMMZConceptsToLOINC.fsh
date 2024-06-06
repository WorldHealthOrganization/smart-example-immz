Instance:     IMMZConceptsToLOINC
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ Concepts to LOINC"
Usage:        #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"

* name = "IMMZConceptsToLOINC"
* title = "ConceptMap to and from LOINC"
* status = #active
* experimental = true

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $LNC
  * insert ElementMap(C.DE2, 54125-0, equivalent)
  * insert ElementMap(C.DE3, 45392-8, relatedto)
  * insert ElementMap(C.DE4, 45394-4, relatedto)
  * insert ElementMap(C.DE5, 46098-0, equivalent)
  * insert ElementMap(C.DE10, 21112-8, equivalent)
  * insert ElementMap(C.DE13, 63900-5, wider)
  * insert ElementMap(C.DE18, 42077-8, equivalent)
  * insert ElementMap(C.DE19, 56799-0, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"


* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $LNC
  * insert ElementMap(D1.DE11, 45683-0, equivalent)
  * insert ElementMap(D1.DE10, 55277-8, equivalent)
  * insert ElementMap(D1.DE92, 96381-9, relatedto)
  * insert ElementMap(D1.DE15, 76517-2, equivalent)
  * insert ElementMap(D1.DE19, 39236-5, equivalent)
  * insert ElementMap(D1.DE20, 30952-6, equivalent)

* group[+]
  * source = $LNC
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(45683-0, D1.DE11, equivalent)
  * insert ElementMap(55277-8, D1.DE10, equivalent)
  * insert ElementMap(96381-9, D1.DE92, relatedto)
  * insert ElementMap(76517-2, D1.DE15, equivalent)
  * insert ElementMap(39236-5, D1.DE19, equivalent)
  * insert ElementMap(30952-6, D1.DE20, equivalent)

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $LNC
  * insert ElementMap(D4.DE162, 82810-3, equivalent)
  * insert ElementMap(D4.DE165, 96381-9, relatedto)
  * insert ElementMap(D4.DE168, 47244-9, wider)

* group[+]
  * source = $LNC
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(82810-3, D4.DE162, equivalent)
  * insert ElementMap(96381-9, D4.DE165, relatedto)
  * insert ElementMap(47244-9, D4.DE168, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"

