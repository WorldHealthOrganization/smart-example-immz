Alias: $IMMZ-C = http://smart.who.int/smart-immunizations-measles/CodeSystem/IMMZ-C

Instance: IMMZCQuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Title: "Example Questionnaire Response"
Description: "Questionnaire Response - Patient p007 registration"

Usage: #example
* status = #completed
* authored = "2023-09-26T16:28:56.811Z"
* questionnaire = Canonical(Questionnaire-IMMZCRegisterClient)
* item[0]
  * linkId = "uniqueId"
  * text = "Unique identifier for the client"
  * answer.valueString = "p007"
* item[+]
  * linkId = "name"
  * text = "Client name"
  * item[0]
    * linkId = "fullName"
    * text = "Full name of the client"
    * answer.valueString = "Jose Costa Teixeira"
  * item[+]
    * linkId = "firstName"
    * text = "First or given name"
    * answer.valueString = "Jose"
  * item[+]
    * linkId = "familyName"
    * text = "Family name"
    * answer.valueString = "Costa Teixeira"
* item[+]
  * linkId = "sex"
  * text = "Sex"
  * answer.valueCoding = $IMMZ-C#DE6 "Male"
* item[+]
  * linkId = "birthDate"
  * text = "Birth Date"
  * answer.valueDate = "2002-02-22"
* item[+]
  * linkId = "caregiver"
  * text = "Care giver name"
  * item[0]
    * linkId = "cgfullName"
    * text = "Full name of the care giver"
    * answer.valueString = "Alice Costa Teixeira"
  * item[+]
    * linkId = "cgfirstName"
    * text = "First or given name"
    * answer.valueString = "Alice"
  * item[+]
    * linkId = "cgfamilyName"
    * text = "Family name"
    * answer.valueString = "Costa Teixeira"
* item[+]
  * linkId = "phone"
  * text = "Client Phone number"
  * answer.valueString = "+123456789"
* item[+]
  * linkId = "administrativeArea"
  * text = "Administrative area"
  * answer.valueCoding = urn:iso:std:iso:3166:-2#KE-30 "Nairobi City"
* item[+]
  * linkId = "healthWorker"
  * text = "Health Worker"
  * answer.valueBoolean = false
