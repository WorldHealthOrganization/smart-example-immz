
RuleSet: ESActor(id,type,name,description)
* actor[+]
  * actorId = "{id}"
  * type = #{type}
  * name = "{name}"
  * description = "{description}"

RuleSet: ESInstance(id,type,name,description)
* instance[+]
  * resourceId = "{id}"
  * resourceType = #{type}
  * name = "{name}"
  * description = "{description}"


Instance: Scenario1
InstanceOf: ExampleScenario
Title: "SMART Immunization Guidelines - Measles"
Usage: #definition
* status = #draft
* purpose = "Purpose: this serves to demonstrate the comprehensive usage of the SMART Guidelines for Immunization, by applying to a concrete scenario for Measles."

* insert ESActor(HCW,person,Healthcare Worker,Healthcare Worker)
* insert ESActor(FF,entity,Form Filler,Form Filler)

//* insert ESActor(EXT,entity,Initial Prescription,The initial prescription which describes \"medication X\, 3 times per day\" - the exact scheduling is not  in the initial prescription (it is left for the care teams to decide on the schedule\).)

* insert ESInstance(IMMZCQuestionnaireResponse1,QuestionnaireResponse,Client registry details,Client registry details.)




* process
  * title = "Measles Immunization Guideline"
  * description = "This scenario demonstrates the process of triggering guidance defined by the SMART guidelines."
  * preConditions = "Unvaccinated patient enters facility"
  * postConditions = "Patient is vaccinated and records are updated."
  * step[0].operation
    * number = "1"
    * name = "Gather patient details"
    * initiator = "HCW"
    * receiver = "FF"

  * step[+].operation
    * number = "2"
    * name = "Extract data"
    * initiator = "FF"
    * receiver = "FF"
    * response.resourceId = "IMMZCQuestionnaireResponse1"
  

//   * step[+].process
//     * title = "P1. Query Administration Requests"
//     * description = "Query for medication administration orders, For today's shift- For today's patients"
//     * step[+].operation
//       * number = "2"
//       * name = "2.Query for medication administration orders - For today's shift- For today's patients"
//       * initiator = "HCW"
//       * receiver = "FF"
    //   * response.resourceId = "iherx001bundle"
/*
  * step[+].pause = true
  * step[+].operation
    * number = "4"
    * name = "Notify (alert)"
    * initiator = "MAP"
    * receiver = "Nurse"
  * step[+].operation
    * number = "5"
    * name = "Read orders"
    * initiator = "Nurse"
    * receiver = "MAP"
  * step[+].pause = true
  * step[+].operation
    * number = "5"
    * name = "Ask if patient took meds"
    * initiator = "Nurse"
    * receiver = "Nurse"
  * step[+]
    * alternative[0]
      * title = "Patient took drugs"
      * description = "Invoke if patient took medications"
      * step.process
        * title = "Register Meds taken"
        * step.operation
          * number = "1a"
          * name = "Register Meds taken"
          * initiator = "Nurse"
          * receiver = "MAP"
          * initiatorActive = true
    * alternative[+]
      * title = "No drugs"
      * description = "No, patient did not take drugs"
      * step.process
        * title = "Register Meds NOT taken"
        * step.operation
          * number = "1b"
          * name = "Register Meds NOT taken"
          * initiator = "Nurse"
          * receiver = "MAP"
          * initiatorActive = true
    * alternative[+]
      * title = "Not clear"
      * description = "Unknown whether patient took medications or not"
      * step.pause = true
  * step[+].pause = true
  * step[+].operation
    * number = "6"
    * name = "Administer drug"
    * initiator = "Nurse"
    * receiver = "Nurse"
  * step[+].operation
    * number = "7"
    * name = "Register administration"
    * initiator = "Nurse"
    * receiver = "MAP"
    * initiatorActive = true
  * step[+].pause = true
  * step[+].process
    * title = "P2. Update administration reports"
    * step.operation
      * number = "8"
      * name = "Nurse updates administration report"
      * initiator = "Nurse"
      * receiver = "MAP"
      * initiatorActive = true
      * request.resourceId = "iheadm002"
  * step[+].pause = true
  * step[+].process
    * title = "P3. Upload administration reports"
    * description = "The nurse's system uploads the administration results to the server"
    * step.operation
      * number = "9"
      * name = "Refresh"
      * initiator = "MAP"
      * receiver = "MAC"
      * request.resourceId = "iheadm001"




#    */
