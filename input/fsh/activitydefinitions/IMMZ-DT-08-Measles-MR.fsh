Alias: $mms = http://id.who.int/icd/release/11/mms

Instance: IMMZ-DT-08-Measles-MR
InstanceOf: ActivityDefinition
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity"
* url = "http://worldhealthorganization.github.io/smart-immunizations-measles/ActivityDefinition/IMMZ-DT-08-Measles-MR"
* version = "0.1.0"
* name = "IMMZ-DT-08-Measles"
* title = "IMMZ.DT.08.Measles"
* status = #active
* experimental = true
* date = "2022-05-06T12:05:48.3799313-04:00"
* publisher = "World Health Organization (WHO)"
* contact.telecom
  * system = #url
  * value = "https://who.int"
* description = "Provide measles immunization"
* kind = #MedicationRequest
* code = $SCT#33879002 "Administration of vaccine to produce active immunity"
* intent = #proposal
* productCodeableConcept = $mms#XM28X5 "Measles vaccines"
* doNotPerform = true
* dynamicValue[0]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
* dynamicValue[+]
  * path = "intent"
  * expression
    * language = #text/cql
    * expression = "'proposal'"
* dynamicValue[+]
  * path = "dispenseRequest.validityPeriod.start"
  * expression
    * description = "Due date of the dose"
    * language = #text/cql-identifier
    * expression = "Schedule Due Date for MCV dose"
* dynamicValue[+]
  * path = "dispenseRequest.validityPeriod.end"
  * expression
    * description = "Expiration date for MCV dose"
    * language = #text/cql-identifier
    * expression = "Expiration Date for MCV dose"