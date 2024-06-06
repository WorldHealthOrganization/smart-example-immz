Logical: IMMZDUpdateVaccinationRecord
Title: "IMMZ.D Update Vaccination Record"
Description: "Data elements for IMMZ.D Update Vaccination Record."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^status = #active
* ^experimental = true

* immunizatioEventStatus 1..1 code "The current status of the individual immunization event"
  * ^code[+] = IMMZConcepts#D.DE1
* immunizatioEventStatus from IMMZ.D1.DE1VS

* reasonNotDone 0..1 code "Reason vaccine was not administered" "The reason this immunization event was not performed"
  * ^code[+] = IMMZConcepts#D.DE5 
* reasonNotDone from IMMZ.D1.DE5VS

* vaccineProduct 1..1 Coding "Vaccine brand" "The brand or trade name used to refer to the vaccine received"
  * ^code[+] = IMMZConcepts#D.DE18 
* liveVaccine 0..1 boolean "Live attenuated vaccine" "Uses a living but weakened version of the virus or one that's very similar"
  * ^code[+] = IMMZConcepts#D.DE173 
* vaccineType 0..1 Coding "Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
  * ^code[+] = IMMZConcepts#D.DE19 
* dateTime 1..1 dateTime "Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"
  * ^code[+] = IMMZConcepts#D.DE20 
* countryOfVaccination 1..1 Coding "Country of vaccination" "The service delivery country where the vaccine administration occurred"
  * ^code[+] = IMMZConcepts#D.DE21 
* countryOfVaccination from SGCountryValueSet

* vaccinationLocation 0..1 string "Vaccination location" "The service delivery location where the vaccine administration occurred"  
  * ^code[+] = IMMZConcepts#D.DE22 
* vaccineManufacturer 0..1 string "Vaccine manufacturer" "The manufacturer of the vaccine product"
  * ^code[+] = IMMZConcepts#D.DE23
* vaccineLotNumber 0..1 string "Vaccine batch number" "Batch number or lot number of vaccine"
  * ^code[+] = IMMZConcepts#D.DE24 
* vaccineMAH 0..1 string "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED"
  * ^code[+] = IMMZConcepts#D.DE25 
* vaccineExpirationDate 0..1 string "Expiration date" "The expiration date of the vaccine"
  * ^code[+] = IMMZConcepts#D.DE26 
* vaccineDoseQuantity 0..1 string "Dose quantity" "The quantity of vaccine product that was administered"
  * ^code[+] = IMMZConcepts#D.DE34
* healthWorker 0..1 string "Health worker identifier" "The person, organization, or role of the entity that performed the act of giving the vaccine to the client. The implementing system can choose to populate this field using data from a health worker registry or health facility registry"
  * ^code[+] = IMMZConcepts#D.DE35 
* vaccineDoseNumber 0..1 integer "Dose number" "Vaccine dose number including dose number within series"
  * ^code[+] = IMMZConcepts#D.DE124
* vaccineTotalDosesInSeries 0..1 integer "Total doses in series" "The recommended number of doses for immunity according to the national protocol"
  * ^code[+] = IMMZConcepts#D.DE125 







