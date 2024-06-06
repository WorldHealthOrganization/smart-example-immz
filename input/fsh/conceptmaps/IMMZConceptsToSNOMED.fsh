Instance:     IMMZConceptsToSNOMED
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ Concepts to SNOMED"
Usage:        #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"

* name = "IMMZConceptsToSNOMED"
* title = "ConceptMap to and from SNOMED"
* status = #active
* experimental = true

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $SCT
  * insert ElementMap(C.DE2, 371484003, equivalent)
  * insert ElementMap(C.DE3, 184095009, relatedto)
  * insert ElementMap(C.DE4, 184096005, relatedto)
  * insert ElementMap(C.DE5, 184100006, equivalent)
  * insert ElementMap(C.DE6, 248153007, equivalent)
  * insert ElementMap(C.DE7, 248152002, equivalent)
  * insert ElementMap(C.DE8, 772004004, relatedto)
  * insert ElementMap(C.DE9, 15867007, equivalent)
  * insert ElementMap(C.DE10, 184099003, equivalent)
  * insert ElementMap(C.DE14, 184140000, wider)
  * insert ElementMap(C.DE15, 184140000, wider)
  * insert ElementMap(C.DE18, 184103008, equivalent)
  * insert ElementMap(C.DE19, 184097001, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"

* group[+]
  * source = $SCT
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(248153007, C.DE6, equivalent)
  * insert ElementMap(248152002, C.DE7, equivalent)
  * insert ElementMap(772004004, C.DE8, relatedto)
  * insert ElementMap(15867007, C.DE9, equivalent)


* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $SCT
  * insert ElementMap(D1.DE12, 165815009, equivalent)
  * insert ElementMap(D1.DE11, 165816005, equivalent)
  * insert ElementMap(D1.DE13, 261665006, wider)
  * insert ElementMap(D1.DE10, 278977008, equivalent)
  * insert ElementMap(D1.DE15, 395507008, equivalent)


* group[+]
  * source = $SCT
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(165815009, D1.DE12, equivalent)
  * insert ElementMap(165816005, D1.DE11, equivalent)
  * insert ElementMap(261665006, D1.DE13, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(278977008, D1.DE10, equivalent)
  * insert ElementMap(395507008, D1.DE15, equivalent)

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $SCT
  * insert ElementMap(D4.DE162, 77386006, equivalent)
  * insert ElementMap(D4.DE165, 370388006, equivalent)
  * insert ElementMap(D4.DE166, 10839421000119100, equivalent)
  * insert ElementMap(D4.DE167, 419076005, wider)
  * insert ElementMap(D4.DE168, 86406008, equivalent)


* group[+]
  * source = $SCT
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(77386006, D4.DE162, equivalent)
  * insert ElementMap(370388006, D4.DE165, equivalent)
  * insert ElementMap(10839421000119100, D4.DE166, equivalent)
  * insert ElementMap(419076005, D4.DE167, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(86406008, D4.DE168, equivalent)
