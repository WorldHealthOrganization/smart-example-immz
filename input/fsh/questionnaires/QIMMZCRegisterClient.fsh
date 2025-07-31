Instance: QIMMZCRegisterClient
InstanceOf: sdc-questionnaire-extr-smap
Title: "Client Registration Questionnaire"
Description: "Immunization - Client Registration Questionnaire"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablequestionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablequestionnaire"
* status = #active
* experimental = true
* subjectType = #Patient
* language = #en
* contained[+] = IMMZ.C.DE5
//* contained[+] = YesNoUnknown

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/immunizations-measles/StructureMap/IMMZCQRToPatient"


//Header
//* insert Question(header,Client Registration form: to fill in by ....,display,true,false)

* insert Question(uniqueId, Unique identifier for the client,string,true,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE1

* insert Question(name, Client name,group,true,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE2
  * code[+] = $LNC#54125-0 "Patient name"
  * code[+] = $SCT#371484003 "Patient name (observable entity)"
  * insert Question(fullName, Full name of the client,string,true,false)
  * item[=]
    * code[+] = IMMZConcepts#C.DE2
    * code[+] = $LNC#54125-0 "Patient name"
    * code[+] = $SCT#371484003 "Patient name (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZConcepts#C.DE3
    * code[+] = $LNC#45392-8 "First name"
    * code[+] = $SCT#184095009 "Patient forename (observable entity)"

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZConcepts#C.DE4
    * code[+] = $LNC#45394-4 "Last name"
    * code[+] = $SCT#184096005 "Patient surname (observable entity)"


* insert Question(sex, Sex,choice,true,false)
* item[=]
  * answerValueSet = "#IMMZ.C.DE5"
  * code[+] = IMMZConcepts#C.DE5
  * code[+] = $LNC#46098-0	"Sex"
  * code[+] = $SCT#184100006 "Patient sex (observable entity)"

* insert Question(birthDate, Birth Date,date,false,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE10
  * code[+] = $LNC#21112-8	"Birth date"
  * code[+] = $SCT#184099003 "Date of birth (observable entity)"

* insert Question(caregiver, Caregiver name,group,true,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE14
  * code[+] = $SCT#184140000 "Caregiver details (observable entity)"

  * insert Question(fullName, Full name of the caregiver,string,true,false)
  * item[=]
    * code[+] = IMMZConcepts#C.DE15
    * code[+] = $SCT#184140000 "Caregiver details (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZConcepts#C.DE16

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZConcepts#C.DE17

* insert Question(phone, Client Phone number,string,true,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE18
  * code[+] = $LNC#42077-8 "Patient Phone number"
  * code[+] = $SCT#184103008 "Patient telephone number (observable entity)"

* insert Question(administrativeArea,Administrative area,choice,false,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE19
  * code[+] = $LNC#56799-0 "Address"
  * code[+] = $SCT#184097001 "Patient address (observable entity)"


* insert Question(healthWorker, Health Worker,boolean,true,false)
* item[=]
  * code[+] = IMMZConcepts#C.DE20


