Instance: IMMZD2DTMeaslesEval
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequestactivity
Title: "IMMZ.D2.DT.Measles.Eval"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://smart.who.int/immunizations-measles/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesContraindicationEvaluation"
* status = #draft
* experimental = false
* date = 2023-10-03
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #ServiceRequest
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "code.coding"
  * expression
    * description = "Measles Code"
    * language = #text/cql
    * expression = "Code { system: 'http://id.who.int/icd/release/11/mms', code: 'XM28X5' }"