Instance: example
InstanceOf: ExampleScenario
Usage: #definition
* status = #draft
* purpose = "This serves to demonstrate the performing of medication administration, by using remote / mobile devices to a) Get the planned medication administrations and b) Record the performing of these administrations without a permanent connection to the EHR."
* actor[0]
  * actorId = "Nurse"
  * type = #person
  * name = "Nurse"
  * description = "The Nurse"
* actor[+] 
  * actorId = "MAP"
  * type = #entity
  * name = "Nurse's Tablet"
  * description = "The entity that receives the Administration Requests to show the nurse to perform them"
* actor[+]
  * actorId = "OP"
  * type = #entity
  * name = "MAR / Scheduler"
  * description = "The Medication Administration Order Placer"
* actor[+]
  * actorId = "MAC"
  * type = #entity
  * name = "MAR / EHR"
  * description = "The entity that receives the Medication Administration reports"
* instance[0]
  * resourceId = "iherx001"
  * resourceType = #MedicationRequest
  * name = "Initial Prescription"
  * description = "The initial prescription which describes \"medication X, 3 times per day\" - the exact scheduling is not   in the initial prescription (it is left for the care teams to decide on the schedule)."
* instance[+]
  * resourceId = "iherx001.001"
  * resourceType = #MedicationRequest
  * name = "Request for day 1, morning"
  * description = "The administration request for day 1, morning"
* instance[+]
  * resourceId = "iherx001.002"
  * resourceType = #MedicationRequest
  * name = "Request for day 1, lunch"
  * description = "The administration request for day 1, lunch"
* instance[+]
  * resourceId = "iherx001.003"
  * resourceType = #MedicationRequest
  * name = "Request for day 1, evening"
  * description = "The administration request for day 1, evening"
* instance[+]
  * resourceId = "iherx001.004"
  * resourceType = #MedicationRequest
  * name = "Request for day 2, morning"
  * description = "The administration request for day 2, morning"
* instance[+]
  * resourceId = "iherx001.005"
  * resourceType = #MedicationRequest
  * name = "Request for day 2, lunch"
  * description = "The administration request for day 2, lunch"
* instance[+]
  * resourceId = "iherx001.006"
  * resourceType = #MedicationRequest
  * name = "Request for day 2, evening"
  * description = "The administration request for day 2, evening"
* instance[+]
  * resourceId = "iheadm001a"
  * resourceType = #MedicationAdministration
  * name = "Morning meds - taken"
  * description = "Administration report for day 1, morning: Taken"
* instance[+]
  * resourceId = "iheadm001b"
  * resourceType = #MedicationAdministration
  * name = "Morning meds - not taken"
  * description = "Administration report for day 1, morning: NOT Taken"
* instance[+]
  * resourceId = "iherx001bundle"
  * resourceType = #MedicationRequest
  * name = "Bundle of Medication Requests"
  * description = "All the medication Requests for Day 1"
  * containedInstance[0].resourceId = "iherx001.001"
  * containedInstance[+].resourceId = "iherx001.002"
  * containedInstance[+].resourceId = "iherx001.003"
  * containedInstance[+].resourceId = "iherx001.004"
  * containedInstance[+].resourceId = "iherx001.005"
  * containedInstance[+].resourceId = "iherx001.006"
* instance[+]
  * resourceId = "iheadm002"
  * resourceType = #MedicationAdministration
  * name = "Lunch meds - taken"
  * description = "Administration report for day 1, lunch: Taken"
  * version[0].versionId = "iheadm002v1"
  * version[=].description = "Medication just taken"
  * version[+].versionId = "iheadm002v2"
  * version[=].description = "Medication rejected"
* instance[+]
  * resourceId = "iherxqry"
  * resourceType = #SearchParameter
  * name = "Search query1"
  * description = "The search administration request for day 1, morning"
* process
  * title = "Mobile Medication Administration"
  * description = "This scenario demonstrates the process of getting the relevant medication instructions for a patient visit and reporting the results of administration. The scenario is as follows: After the prescription is issued, the institution schedules each individual administration event in the Medication Administration Record (MAR). When preparing for a visit, the nurse queries the MAR for the scheduled administrations, obtaining a bundle of records. The nurse then performs the care activities and registers the results in the device. Upon synchronization of the device and the institution, the results of administration are uploaded to the EHR, thus updating the MAR."
  * preConditions = "Medication administration requests are in the EHR / MAR, scheduled for each individual intake."
  * postConditions = "Medication administration Reports are submitted, EHR is updated."
  * step[0]
    * operation
      * number = "1"
      * name = "Get today's schedule"
      * initiator = "Nurse"
      * receiver = "MAP"
  * step[+]
    * operation
      * number = "2"
      * name = "Query administration orders"
      * initiator = "MAP"
      * receiver = "OP"
      * description = "Query for medication administration orders,&0xa;- For today's shifts&0xa;- For today's patients"
      * request.resourceId = "iherxqry"
      * response.resourceId = "iherx001bundle"
    * pause = true
  * step[+]
    * operation
      * number = "3"
      * name = "Notify (alert)"
      * initiator = "MAP"
      * receiver = "Nurse"
  * step[+] 
    * operation
      * number = "4"
      * name = "Read orders"
      * initiator = "Nurse"
      * receiver = "MAP"
    * pause = true
  * step[+]
    * operation
      * number = "5"
      * name = "Ask if patient took meds"
      * initiator = "Nurse"
      * receiver = "Nurse"
  * step[+]
    * alternative[0]
      * title = "Patient took meds"
      * description = "Invoke if patient took medications"
      * step
        * operation
          * number = "6a"
          * name = "Register meds taken"
          * initiator = "Nurse"
          * receiver = "MAP"
          * initiatorActive = true
    * alternative[+]
      * title = "No drugs"
      * description = "No, patient did not take meds"
      * step
        * operation
          * number = "6b"
          * name = "Register meds NOT taken"
          * initiator = "Nurse"
          * receiver = "MAP"
          * initiatorActive = true
    * alternative[+]
      * title = "Not clear"
      * description = "Unknown whether patient took medications or not"
    * pause = true
  * step[+] 
    * operation.number = "7"
    * operation.name = "Administer drug"
    * operation.initiator = "Nurse"
    * operation.receiver = "Nurse"
  * step[+]
    * operation.number = "8"
    * operation.name = "Record administration"
    * operation.initiator = "Nurse"
    * operation.receiver = "MAP"
    * operation.initiatorActive = true
    * pause = true
  * step[+]
    * operation.number = "9"
    * operation.name = "Upload administration reports"
    * operation.initiator = "Nurse"
    * operation.receiver = "MAP"
    * operation.initiatorActive = true
    * operation.request.resourceId = "iheadm002"
    * operation.request.versionId = "iheadm002v1"
    * pause = true
  * step[+]
    * operation.number = "10"
    * operation.name = "Upload administration reports"
    * operation.initiator = "MAP"
    * operation.receiver = "MAC"
    * operation.description = "The nurse's system uploads the administration results to the server"
    * operation.request.resourceId = "iheadm001a"