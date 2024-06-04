Instance: QIMMZD4CheckContraindicationsMeasles
InstanceOf: sdc-questionnaire-extr-smap
Title: "Check Contraindications Questionnaire"
Description: "Immunization - Check Contraindications Questionnaire"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablequestionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablequestionnaire"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = IMMZ.D4.DE161

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/immunizations-measles/StructureMap/IMMZD4QRToResources"

//* insert Question(contraindications, Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine, choice, false, true)
* insert Question(contraindications, Contraindications, choice, false, true)
* item[=]
  * answerValueSet = "#IMMZ.D4.DE161"
  * code[+] = IMMZConcepts#D4.DE161
