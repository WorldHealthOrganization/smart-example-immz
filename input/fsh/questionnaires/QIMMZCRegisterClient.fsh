Instance: QIMMZCRegisterClient
InstanceOf: sdc-questionnaire-extr-smap
Title: "Client Registration Questionnaire"
Description: "Immunization - Client Registration Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* contained[+] = IMMZ.C.DE5
//* contained[+] = YesNoUnknown

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/ig/smart-immunizations-measles/StructureMap/IMMZCQRToPatient"


//Header
//* insert Question(header,Client Registration form: to fill in by ....,display,true,false)

* insert Question(uniqueId, Unique identifier for the client,string,true,false)
* item[=]
  * code[+] = IMMZ.C#DE1


  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE3

  * insert Question(middleName, middle name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE3.1

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE4


* insert Question(sex, Sex,choice,true,false)
* item[=]
  * answerValueSet = Canonical(IMMZ.C.DE5)
  * code[+] = IMMZ.C#DE5
  * code[+] = $LNC#46098-0	"Sex"
  * code[+] = $SCT#184100006 "Patient sex (observable entity)"

* insert Question(birthDate, Birth Date,date,false,false)
* item[=]
  * code[+] = IMMZ.C#DE10
  * code[+] = $LNC#21112-8	"Birth date"
  * code[+] = $SCT#184099003 "Date of birth (observable entity)"

* insert Question(Mother, Mother name,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE14
  * code[+] = $SCT#184140000 "Mother details (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.1

 * insert Question(middleName, Middle name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.2

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE17

* insert Question(Father, Father name,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE14.1
  * code[+] = $SCT#184140000 "Father details (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.1

 * insert Question(middleName, Middle name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.2

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE17

* insert Question(phone, Client Phone number,string,true,false)
* item[=]
  * code[+] = IMMZ.C#DE18
  * code[+] = $LNC#42077-8 "Patient Phone number"
  * code[+] = $SCT#184103008 "Patient telephone number (observable entity)"

* insert Question(County, County,choice,false,false)
* item[=]
  * code[+] = IMMZ.C#DE19.1
//  * code[+] = $LNC#56799-0 "Address"
 // * code[+] = $SCT#184097001 "Patient address (observable entity)"

* insert Question(Sub County, Sub County,choice,false,false)
* item[=]
  * code[+] = IMMZ.C#DE19.2

* insert Question(Ward, Ward,choice,false,false)
* item[=]
  * code[+] = IMMZ.C#DE19.2

* insert Question(CHU, CHU,choice,false,false)
* item[=]
  * code[+] = IMMZ.C#DE19.3


