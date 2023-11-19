
Logical:      IMMZDUpdateVaccinationRecord
Title:        "IMMZ.D Update Vaccination Record"
Description:  "Data elements for IMMZ.D Update Vaccination Record."
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^name = "IMMZDUpdateVaccinationRecord"
* ^status = #active

* immunizatioEventStatus 1..1 code "The current status of the individual immunization event"
//  * ^code[+] = IMMZ.D#DE1
* immunizatioEventStatus from IMMZ.D1.DE1VS


* reasonNotDone 0..1 code "Reason vaccine was not administered" "The reason this immunization event was not performed"
//  * ^code[+] = IMMZ.D#DE5 
* reasonNotDone from IMMZ.D1.DE5VS



* vaccineProduct 1..1 Coding "Vaccine brand" "The brand or trade name used to refer to the vaccine received"
//  * ^code[+] = #IMMZ.D#DE18 
* liveVaccine 0..1 boolean "Live attenuated vaccine" "Uses a living but weakened version of the virus or one that's very similar"
//  * ^code[+] = #IMMZ.D#DE173 
* vaccineType 0..1 Coding "Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
//  * ^code[+] = #IMMZ.D#DE19 
* dateTime 1..1 dateTime "Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"
//  * ^code[+] = #IMMZ.D#DE20 
* countryOfVaccination 1..1 Coding "Country of vaccination" "The service delivery country where the vaccine administration occurred"
//  * ^code[+] = #IMMZ.D.DE21 
* countryOfVaccination from SGCountryValueSet

* vaccinationLocation 0..1 string "Vaccination location" "The service delivery location where the vaccine administration occurred"  
//  * ^code[+] = #IMMZ.D.DE22 
* vaccineManufacturer 0..1 string "Vaccine manufacturer" "The manufacturer of the vaccine product"
//  * ^code[+] = #IMMZ.D.DE23
* vaccineLotNumber 0..1 string "Vaccine batch number" "Batch number or lot number of vaccine"
//  * ^code[+] = #IMMZ.D.DE24 
* vaccineMAH 0..1 string "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED"
//  * ^code[+] = #IMMZ.D.DE25 
* vaccineExpirationDate 0..1 string "Expiration date" "The expiration date of the vaccine"
//  * ^code[+] = #IMMZ.D.DE26 
* vaccineDoseQuantity 0..1 string "Dose quantity" "The quantity of vaccine product that was administered"
//  * ^code[+] = #IMMZ.D.DE34
* healthWorker 0..1 string "Health worker identifier" "The person, organization, or role of the entity that performed the act of giving the vaccine to the client. The implementing system can choose to populate this field using data from a health worker registry or health facility registry"
//  * ^code[+] = #IMMZ.D.DE35 
* vaccineDoseNumber 0..1 integer "Dose number" "Vaccine dose number including dose number within series"
//  * ^code[+] = #IMMZ.D.DE124
* vaccineTotalDosesInSeries 0..1 integer "Total doses in series" "The recommended number of doses for immunity according to the national protocol"
//  * ^code[+] = #IMMZ.D.DE125 



CodeSystem:   IMMZ.D1.DE1
Title:        "IMMZ.D1.DE1 CodeSystem for Immunization status"
Description:  "CodeSystem for IMMZ.D1.DE1 Immunization status"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D1"

* #IMMZ.D.DE2 "Completed" "The immunization event was successfully carried out as intended"
* #IMMZ.D.DE3 "Entered in error" "Immunization event record has been mistakenly created or entered into system. Recorded information is incorrect or should not have been documented, though it is possible that real-world decisions were based on it"
* #IMMZ.D.DE4 "Not Done" "Planned immunization event was not carried out for some reason"


ValueSet: IMMZ.D1.DE1VS
Title:        "IMMZ.D1.DE1 CodeSystem for Immunization status"
Description:  "CodeSystem for IMMZ.D1.DE1 Immunization status"
* ^experimental = false
* ^name = "IMMZD1DE1VS"

* IMMZ.D1.DE1#IMMZ.D.DE2
* IMMZ.D1.DE1#IMMZ.D.DE3
* IMMZ.D1.DE1#IMMZ.D.DE4





CodeSystem:   IMMZ.D1.DE5
Title:        "IMMZ.D1.DE5 CodeSystem for Reason Not Done"
Description:  "CodeSystem for IMMZ.D1.DE5 Reason Not Done"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D1"

* #IMMZ.D.DE6 "Immunity Testing has shown that the client already has immunity to the agent targeted by the immunization"
* #IMMZ.D.DE7 "Medical precaution" "The client currently has a medical condition for which the vaccine is contraindicated or for which precaution is warranted"
* #IMMZ.D.DE8 "Product out of stock" "There was no supply of the product on hand to perform the service"
* #IMMZ.D.DE9 "Client objection" "The client or their guardian objects to receiving the vaccine"
* #IMMZ.D.DE10 "Caregiver refusal" "The client's caregiver refused the vaccine"
* #IMMZ.D.DE11 "Unspecified reason" "The immunization event was not carried out for an unspecified reason"
* #IMMZ.D.DE12 "Client allergy to vaccine or component" "The immunization event was not carried out because of client allergy to vaccine or component"
* #IMMZ.D.DE13 "Immunocompromised" "The immunization event was not carried out because the client is immunocompromised"
* #IMMZ.D.DE14 "Chronic illness or condition" "The immunization event was not carried out due a chronic illness or condition of the client"
* #IMMZ.D.DE15 "Acute illness" "The immunization event was not carried out due to an acute illness present in the client"
* #IMMZ.D.DE16 "Had the disease" "The immunization event was not carried out due to the client having had the disease"
* #IMMZ.D.DE17 "Immunization not carried out for other reasons" "The immunization event was not carried out for other reasons"



ValueSet: IMMZ.D1.DE5VS
Title:        "IMMZ.D1.DE5 CodeSystem for Reason Not Done"
Description:  "CodeSystem for IMMZ.D1.DE5 Reason Not Done"
* ^experimental = false
* ^name = "IMMZD1DE5VS"

* IMMZ.D1.DE5#IMMZ.D.DE6
* IMMZ.D1.DE5#IMMZ.D.DE7
* IMMZ.D1.DE5#IMMZ.D.DE8
* IMMZ.D1.DE5#IMMZ.D.DE9
* IMMZ.D1.DE5#IMMZ.D.DE10
* IMMZ.D1.DE5#IMMZ.D.DE11
* IMMZ.D1.DE5#IMMZ.D.DE12
* IMMZ.D1.DE5#IMMZ.D.DE13
* IMMZ.D1.DE5#IMMZ.D.DE14
* IMMZ.D1.DE5#IMMZ.D.DE15
* IMMZ.D1.DE5#IMMZ.D.DE16
* IMMZ.D1.DE5#IMMZ.D.DE17







