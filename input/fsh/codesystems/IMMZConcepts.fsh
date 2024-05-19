CodeSystem: IMMZConcepts
Title: "Immunizations Concepts CodeSystem"
Description: "This code system defines concepts used in SMART Immunizations"

* ^experimental = false
* ^caseSensitive = false
* #C.DE1 "Unique identifier" "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* #C.DE2 "Name" "The full name of the client"
* #C.DE3 "First name" "Client's first name or given name"
* #C.DE4 "Family name" "Client's family name or last name"
* #C.DE5 "Sex" "Documentation of a specific instance of sex information for the client"
* #C.DE6 "Male" "Client's biological sex is male"
* #C.DE7 "Female" "Client's biological sex is female"
* #C.DE8 "Biological sex not specified" "Client's biological sex is not specified"
* #C.DE9 "Intersex" "Client's biological sex is intersex"
* #C.DE10 "Date of birth" "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
* #C.DE13 "Age" "The client's calculated age (presented as number of years, months, days) based on the date of birth (DOB) and the visit date"
* #C.DE14 "Caregivers (multiple)" "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
* #C.DE15 "Caregiver's full name" "The full name of the client's caregiver"
* #C.DE16 "Caregiver's first name" "First or given name of the client's caregiver"
* #C.DE17 "Caregiver's family name" "Family name or last name of the client's caregiver"
* #C.DE18 "Contact phone number" "Client's phone number"
* #C.DE19 "Administrative area" "The name of the city/municipality/town/village of where the client lives"
* #C.DE20 "Active health worker" "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."

* #D.DE2 "Completed" "The immunization event was successfully carried out as intended"
* #D.DE3 "Entered in error" "Immunization event record has been mistakenly created or entered into system. Recorded information is incorrect or should not have been documented, though it is possible that real-world decisions were based on it"
* #D.DE4 "Not Done" "Planned immunization event was not carried out for some reason"
* #D.DE6 "Immunity Testing has shown that the client already has immunity to the agent targeted by the immunization"
* #D.DE7 "Medical precaution" "The client currently has a medical condition for which the vaccine is contraindicated or for which precaution is warranted"
* #D.DE8 "Product out of stock" "There was no supply of the product on hand to perform the service"
* #D.DE9 "Client objection" "The client or their guardian objects to receiving the vaccine"
* #D.DE10 "Caregiver refusal" "The client's caregiver refused the vaccine"
* #D.DE11 "Unspecified reason" "The immunization event was not carried out for an unspecified reason"
* #D.DE12 "Client allergy to vaccine or component" "The immunization event was not carried out because of client allergy to vaccine or component"
* #D.DE13 "Immunocompromised" "The immunization event was not carried out because the client is immunocompromised"
* #D.DE14 "Chronic illness or condition" "The immunization event was not carried out due a chronic illness or condition of the client"
* #D.DE15 "Acute illness" "The immunization event was not carried out due to an acute illness present in the client"
* #D.DE16 "Had the disease" "The immunization event was not carried out due to the client having had the disease"
* #D.DE17 "Immunization not carried out for other reasons" "The immunization event was not carried out for other reasons"

* #D1.DE80 "Dose 0 administered" "Indicates if the client has received a birth dose and/or supplementary dose"
* #D1.DE8 "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
* #D1.DE81 "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
* #D1.DE10 "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
* #D1.DE11 "HIV-positive" "The client is known to be HIV positive"
* #D1.DE12 "HIV-negative" "The client is known to be HIV negative"
* #D1.DE13 "Unknown" "The client's HIV status is unknown"
* #D1.DE15 "Preterm birth" "The infant was preterm; the mother gave birth to the infant when gestational age was less than 37 weeks"
* #D1.DE92 "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
* #D1.DE49 "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
* #D1.DE19	"Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
* #D1.DE20	"Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"

* #D4.DE161 "Potential contraindications" "Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine"
* #D4.DE162 "Currently pregnant" "The client is currently pregnant"
* #D4.DE165 "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
* #D4.DE166 "History of anaphylactic reactions" "The client is known to have history of anaphylaxis in the past. Anaphylaxis is a severe and potentially life-threatening allergic reaction that can occur rapidly after exposure to an allergen or vaccine component."
* #D4.DE167 "Severe allergic reactions" "The client is known to have severe allergic reaction to vaccine"
* #D4.DE168 "Symptomatic HIV infection" "The client is experiencing HIV-related symptoms"
