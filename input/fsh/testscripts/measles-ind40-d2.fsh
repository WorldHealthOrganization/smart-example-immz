Alias: $restful-interaction = http://hl7.org/fhir/restful-interaction

Instance: testscript-evaluate-measure-ind-40
InstanceOf: TestScript
Usage: #example
* url = "http://smart.who.int/immunizations/TestScript/testscript-smart-immunizations-measles-ind08-d2"
* version = "1.0"
* name = "TestScriptEvaluateIND40"
* title = "TestScript - Evaluate Measure - IND40"
* status = #draft
* experimental = true
* date = "2017-01-18"

* description = "TestScript for Measles IND 40"

* purpose = "Test Measles immmunization indicator 40"
* copyright = "© 2024+"
* metadata
  * capability

//* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-TestScript.scope.artifact] = Reference(IMMZIND08Measles)

* fixture[+]
  * id = "patient-P123456"
  * autocreate = true
  * autodelete = false
  * resource = Reference(Patient/P123456) "Patient P123456"
* fixture[+]
  * id = "Immunization1"
  * autocreate = true
  * autodelete = false
  * resource = Reference(Immunization/Immunization1) "Patient P123456 - first measles immunization"
* fixture[+]
  * id = "Immunization2"
  * autocreate = true
  * autodelete = false
  * resource = Reference(Immunization/Immunization2) "Patient P123456 - second measles immunization"


* variable[+]
  * name = "femaleCountExpression"
  * description = "Evaluate the returned total of females with the expected vaccine coverage"
  * expression = "MeasureReport.group.stratifier.where(id='IMMZ.IND.08.S2').stratum.where(value.text='female').population.where(id='IMMZ.IND.08.N').count.toInteger()"


* variable[+]
  * name = "cqlserverbase"
  * description = "URL for the CQL server"
  * defaultValue = "http://localhost:8080/fhir"

* variable[+]
  * name = "expectedCount"
  * description = "Expected patient count for mealles immunization indicator 40"
  * defaultValue = "1"



* setup
  * action[0]
    * operation
      * type = $restful-interaction#post
      * resource = #Patient
      * description = "POST resources to server."
      * accept = #json
      * encodeRequestUrl = true
      * sourceId = "patient-P123456"
    * assert
      * description = "Confirm that results were POSTed OK."
      * response = #created
      * warningOnly = false

  * action[+]
    * operation
      * type = $restful-interaction#post
      * resource = #Immunization
      * description = "POST resources to server."
      * accept = #json
      * encodeRequestUrl = true
      * sourceId = "Immunization1"
    * assert
      * description = "Confirm that results was POSTed OK."
      * response = #created
      * warningOnly = false

  * action[+]
    * operation
      * type = $restful-interaction#post
      * resource = #Immunization
      * description = "POST resources to server."
      * accept = #json
      * encodeRequestUrl = true
      * sourceId = "Immunization2"
    * assert
      * description = "Confirm that results was POSTed OK."
      * response = #created
      * warningOnly = false





* test[0]
  * id = "01-Evaluate"
  * name = "Evaluate the measure"
  * description = "Evaluate the measure."
  * action[0]
    * operation
      * type = http://hl7.org/fhir/restful-interaction#evaluate  // note there's an issue in the R4 spec example?. Should not be $evaluate

  //    * resource = #
      * description = "Send the request for the Measure evaluation."
      * accept = #json
      * contentType = #json
      * encodeRequestUrl = true
      * responseId = "PatientCreateResponse"
      * sourceId = "fixture-patient-create"

      * url = "${cqlserverbase}/Measure/IMMZIND40/$evaluate-measure?periodStart=2000-01-01&periodEnd=2024-12-31"


    * assert
      * description = "Confirm that the returned HTTP status is 201(Created)."
      * response = #okay
      * warningOnly = false

  * action[+].assert
    * description = "Confirm that the returned result evaluates to the expected value"
    * expression = "${femaleCountExpression}=$#{expectedCount}"
    * warningOnly = false

