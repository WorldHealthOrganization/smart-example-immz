Logical:      IMMZD1clienthistorymeasles
Title:        "IMMZ-D1 Capture Client History for Measles"
Description:  "Data elements for the IMMZ-D1 Capture Client History Data Dictionary for Measles."

* ^name = "ClientHistoryMeasles"

* dose0 0..1 boolean "Dose 0 administered" "Indicates if the client has received a birth dose and/or supplementary dose"
  * ^code[+] = IMMZ-D1#DE80
* completedPrimarySeries 0..1 boolean "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
  * ^code[+] = IMMZ-D1#DE8
* dateSeriesCompleted 1..1 date "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
  * ^code[+] = IMMZ-D1#DE81
* pregnant 0..1 boolean "Currently pregnant" "The client is currently pregnant"
  * ^code[+] = IMMZ-D1#DE9
* breastfeeding 0..1 boolean "Breastfeeding" "The client is currently breastfeeding"
  * ^code[+] = IMMZ-D1#DE82
* hivStatus 0..1 Coding "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
  * ^code[+] = IMMZ-D1#DE10
* hivStatus from IMMZ-D1.DE10
* pretermBirth 0..1 boolean "Preterm birth" "The infant was preterm, the mother gave birth to the infant when gestational age was less than 37 weeks"
  * ^code[+] = IMMZ-D1#DE15
* immunocompromised 0..1 boolean "Immunocompromised" "The client is known to be immunocompromised or immunosuppressed. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases"
  * ^code[+] = IMMZ-D1#DE16
* onART 0..1 boolean "Currently on ART" "The client is currently receiving antiretroviral therapy (ART)"
  * ^code[+] = IMMZ-D1#DE17
* hivExposedInfant 1..1 boolean "HIV-exposed infant" "The infant is known to be exposed to HIV (i.e. born to an HIV-infected woman)"
  * ^code[+] = IMMZ-D1#DE90
* immuneReconstitutionAchieved 1..1 boolean "Immune reconstitution was achieved" "The client is known to have achieved immune reconstitution"
  * ^code[+] = IMMZ-D1#DE46
* severelyImmunosuppressed 1..1 boolean "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
  * ^code[+] = IMMZ-D1#DE92
* artStartDate 1..1 date "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
  * ^code[+] = IMMZ-D1#DE49
