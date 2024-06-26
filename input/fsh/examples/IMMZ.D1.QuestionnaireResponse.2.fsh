Instance: Example.IMMZ.D1.QuestionnaireResponse.2
InstanceOf: QuestionnaireResponse
Description: "QuestionnaireResponse Example 2 - Client History  - Measles"

Usage: #example
* status = #completed
* authored = "2023-10-18T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1ClientHistoryMeasles)
* subject = Reference(patient654321)

* item[+]
  * linkId = "dose0"
  * answer.valueBoolean = false
* item[+]
  * linkId = "completedPrimarySeries"
  * answer.valueBoolean = false
* item[+]
  * linkId = "hivStatus"
  * answer.valueCoding = IMMZConcepts#D1.DE12
* item[+]
  * linkId = "pretermBirth"
  * answer.valueBoolean = false
* item[+]
  * linkId = "severelyImmunosuppressed"
  * answer.valueBoolean = false
* item[+]
  * linkId = "vaccineHistory"
  * item[+]
    * linkId = "vaccineType"
    * answer.valueCoding = $ICD11#XM4AJ8
  * item[+]
    * linkId = "vaccineDate"
    * answer.valueDate = "2023-04-05"


