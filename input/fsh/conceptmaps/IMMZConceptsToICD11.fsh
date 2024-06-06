Instance:     IMMZConceptsToICD11
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ Concepts to ICD-11"
Usage:        #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"

* name = "IMMZConceptsToICD11"
* title = "ConceptMap to and from ICD-11"
* status = #active
* experimental = true

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $ICD11
  * insert ElementMap(C.DE6, XX2UQ8, equivalent)
  * insert ElementMap(C.DE7, XX2V25, equivalent)
  * insert ElementMap(C.DE8, XX2PX3, equivalent)
  * insert ElementMap(C.DE9, XX45B7, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(XX2UQ8, C.DE6, equivalent)
  * insert ElementMap(XX2V25, C.DE7, equivalent)
  * insert ElementMap(XX2PX3, C.DE8, equivalent)
  * insert ElementMap(XX45B7, C.DE9, equivalent)

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $ICD11
  * insert ElementMap(D1.DE11, 1C62.Z, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"

  * insert ElementMap(D1.DE12, QA02.Y, relatedto)
  * insert ElementMap(D1.DE15, KA21.4, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(1C62.Z, D1.DE11, wider)
  * insert ElementMap(QA02.Y, D1.DE12, relatedto)
  * insert ElementMap(KA21.4, D1.DE15, equivalent)

* group[+]
  * source = Canonical(IMMZConcepts)
  * target = $ICD11
  * insert ElementMap(D4.DE162, QA41, equivalent)
  * insert ElementMap(D4.DE165, 4B4Z, relatedto)
  * insert ElementMap(D4.DE166, QC44.0, equivalent)
  * insert ElementMap(D4.DE167, QC44.2, relatedto)
  * insert ElementMap(D4.DE168, 1C62.1, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZConcepts)
  * insert ElementMap(QA41, D4.DE162, equivalent)
  * insert ElementMap(4B4Z, D4.DE165, relatedto)
  * insert ElementMap(QC44.0, D4.DE166, equivalent)
  * insert ElementMap(QC44.2, D4.DE167, relatedto)
  * insert ElementMap(1C62.1, D4.DE168, equivalent)

