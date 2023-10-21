Logical:      IMMZD1ClientHistoryMeasles
Title:        "IMMZ.D1 Capture Client History for Measles"
Description:  "Data elements for the IMMZ.D1 Capture Client History Data Dictionary for Measles."

* ^name = "IMMZ_D1_Client_History_Measles"

* patient 1..1 Reference "Patient" "The patient who is being checked for contraindications."
* dose0 0..1 boolean "Dose 0 administered" "Indicates if the client has received a birth dose and/or supplementary dose"
  * ^code[+] = IMMZ.D1#DE80
* completedPrimarySeries 0..1 boolean "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
  * ^code[+] = IMMZ.D1#DE8
* dateSeriesCompleted 1..1 date "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
  * ^code[+] = IMMZ.D1#DE81
* hivStatus 0..1 Coding "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
  * ^code[+] = IMMZ.D1#DE10
* hivStatus from IMMZ.D1.DE10
* pretermBirth 0..1 boolean "Preterm birth" "The infant was preterm, the mother gave birth to the infant when gestational age was less than 37 weeks"
  * ^code[+] = IMMZ.D1#DE15
* severelyImmunosuppressed 1..1 boolean "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
  * ^code[+] = IMMZ.D1#DE92
* artStartDate 1..1 date "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
  * ^code[+] = IMMZ.D1#DE49
* vaccineHistory 0..* BackboneElement "Vaccine History" "History of previous vaccine doses."
  * vaccineType 0..1 Coding "Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
    * ^code[+] = IMMZ.D1#DE19
  * vaccineType from IMMZ.Z.DE9
  * vaccineDate 0..1 date "Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"
    * ^code[+] = IMMZ.D1#DE20
