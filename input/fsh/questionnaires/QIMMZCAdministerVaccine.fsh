Instance: QIMMZCAdministerVaccine
InstanceOf: sdc-questionnaire-extr-smap
Title: "Administer Vaccine"
Description: "Questionnaire for registering the events leading to and including the administration of a vaccine"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablequestionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablequestionnaire"
* subjectType = #Patient
* language = #en
* title = "Administer Vaccine"

* status = #active
* contained[+] = VSMeaslesVaccineProducts
* contained[+] = SGImmunizationStatusCodes
* contained[+] = AllVaccineTypes

* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* extension.valueExpression.language = #application/x-fhir-query
* extension.valueExpression.expression = "Encounter"
* extension.valueExpression.name = "encounter"
* item[0]
  * type = #boolean
  * linkId = "3888885591343"
  * text = "Was consent given?"
  * required = true
  * repeats = false
  * readOnly = false
* item[+]
  * type = #boolean
  * linkId = "894262034915"
  * text = "Is stock available?"
  * required = true
  * repeats = false
  * readOnly = false
* item[+]
  * type = #group
  * linkId = "8599813785588"
  * text = "Administer Vaccine"
  * enableWhen[0].question = "3888885591343"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerBoolean = true
  * enableWhen[+].question = "894262034915"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerBoolean = true
  * enableBehavior = #all
  * required = false
  * repeats = false
  * readOnly = true

  * insert Question(status, Status,choice,true,false)
  * item[=]
    * answerValueSet = "#SGImmunizationStatusCodes"
  * insert Question(datetime, Date/Time,dateTime,true,false)
  * insert Question(vaccine-type, Vaccine Type,choice,true,false)
  * item[=]
    * answerValueSet = "#AllVaccineTypes"
  // * item[=]
  //   * answerValueSet = "#VSMeaslesVaccineProducts"
  
  * item[+]
    * text = "Administered Product"
    * linkId = "administered-product"
    * type = #group
   

    * insert Question(product-code, Product Code,choice,true,false)
    * item[=]
      * answerValueSet = "#VSMeaslesVaccineProducts"
    * insert Question(product-lotnr, Lot or batch number,string,false,false)
    * item[=]

    * insert Question(product-expirydate, Expiration date,string,false,false)
    * item[=]

      
  
