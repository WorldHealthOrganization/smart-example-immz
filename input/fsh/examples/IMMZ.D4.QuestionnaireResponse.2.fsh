Instance: Example.IMMZ.D4.QuestionnaireResponse.2
InstanceOf: QuestionnaireResponse
Description: "QuestionnaireResponse Example 2 - Contraindications - Measles"

Usage: #example
* status = #completed
* authored = "2023-10-11"
* questionnaire = Canonical(QIMMZD4CheckContraindicationsMeasles)
* subject = Reference(patient123456)

* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZConcepts#D4.DE165 "Severely immunosuppressed"