CodeSystem:   IMMZ.D1
Title:        "IMMZ.D1 CodeSystem for Data Elements"
Description:  "CodeSystem for IMMZ.C Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D1"


* #DE80 "Dose 0 administered" "Indicates if the client has received a birth dose and/or supplementary dose"
* #DE8 "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
* #DE81 "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
* #DE10 "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
* #DE11 "HIV-positive" "The client is known to be HIV positive"
* #DE12 "HIV-negative" "The client is known to be HIV negative"
* #DE13 "Unknown" "The client's HIV status is unknown"
* #DE15 "Preterm birth" "The infant was preterm; the mother gave birth to the infant when gestational age was less than 37 weeks"
* #DE92 "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
* #DE49 "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
* #DE19	"Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
* #DE20	"Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"


/*


* #DE80 "Dose 0 administered" "Indicates if the client has received a birth dose and/or supplementary dose"
* #DE8 "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
* #DE81 "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
* #DE9 "Currently pregnant" "The client is currently pregnant"
* #DE82 "Breastfeeding" "The client is currently breastfeeding"
* #DE10 "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
* #DE11 "HIV-positive" "The client is known to be HIV positive"
* #DE12 "HIV-negative" "The client is known to be HIV negative"
* #DE13 "Unknown" "The client's HIV status is unknown"
* #DE15 "Preterm birth" "The infant was preterm"
* #DE16 "Immunocompromised" "The client is known to be immunocompromised or immunosuppressed. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases"
* #DE17 "Currently on ART" "The client is currently receiving antiretroviral therapy (ART)"

* #DE84 "Type of TB infection test performed" "The type of TB infection test performed"
* #DE85 "IGRA" "Interferon-gamma release assay (IGRA)"
* #DE86 "TST" "Tuberculin skin test (TST)"
* #DE87 "TB infection test result" "Records the result of the TB infection test"
* #DE88 "Positive" "Test result was positive"
* #DE89 "Negative" "Test result was negative"
* #DE90 "HIV-exposed infant" "The infant is  known to be exposed to HIV (i.e. born to an HIV-infected woman)"
* #DE29 "Birth weight in grams" "Represents the client's birth weight value measures in grams"
* #DE35 "Type of polio dose" "The type of the polio vaccine dose administered to the client"
* #DE36 "IPV" "Inactivated poliovirus vaccine (IPV)"
* #DE37 "bOPV" "Bivalent oral poliovirus vaccine (bOPV)"
* #DE38 "Age in years when client received first DTP dose" "The client's age in years when they received their first diphtheria-tetanus-pertussis (DTP) dose"
* #DE39 "Age in months when client received first Hib dose" "The client's age in months when they received their first Haemophilus influenzae type b (Hib) dose"
* #DE40 "Sickle-cell disease" "The client is known to have a sickle-cell disease"
* #DE41 "Age in months when client received third pneumococcal dose" "The client's age in months when they received their third pneumococcal dose"
* #DE42 "No history of intussusception" "The client is known to have no history of intussusception"
* #DE43 "Previous rotavirus doses given were the same product" "Indicates whether or not all of the client's previous rotavirus doses were the same product"
* #DE46 "Immune reconstitution was achieved" "The client is known to have achieved immune reconstitution"
* #DE92 "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
* #DE49 "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
* #DE52 "Type of last JE dose" "The type of the last Japanese encephalitis (JE) vaccine dose administered to the client"
* #DE53 "Inactivated Vero cell-derived vaccine" "Inactivated Vero cell-derived Japanese encephalitis (JE) vaccine type"
* #DE54 "Live attenuated vaccine" "Live attenuated Japanese encephalitis (JE) vaccine type"
* #DE55 "Live recombinant vaccine" "Live recombinant Japanese encephalitis (JE) vaccine type"
* #DE56 "Type of last TBE dose" "The type of the last tick-borne encephalitis (TBE) vaccine dose administered"
* #DE57 "FSME-Immun" "FSME-Immun vaccine product, which is an inactivated whole-virus vaccine for tick-borne encephalitis (TBE)"
* #DE58 "Encepur" "Encepur vaccine product, which is an inactivated viral vaccine for tick-borne encephalitis (TBE)"
* #DE59 "TBE-Moscow" "TBE-Moscow vaccine product, which is a vaccine for tick-borne encephalitis (TBE)"
* #DE60 "EnceVir" "EnceVir vaccine product, which is a vaccine for tick-borne encephalitis (TBE)"
* #DE61 "Type of last typhoid dose" "The type of the last typhoid vaccine dose administered to the client"
* #DE62 "Typbar-TCV" "Typbar-TCV vaccine"
* #DE63 "ViPS" "Vi polysaccharide (ViPS) vaccine"
* #DE64 "Ty21a" "Ty21a vaccine"
* #DE65 "Type of last cholera dose" "The type of the last cholera vaccine dose administered to the client"
* #DE66 "WC vaccine" "Killed whole cell (WC) only cholera vaccine"
* #DE67 "WC-rBS vaccine" "Vaccine contains a mixture of the recombinant B subunit (rBS) of cholera toxin plus killed whole cell (WC)"
* #DE68 "Type of last meningococcal dose" "The type of the last meningococcal vaccine dose administered to the client"
* #DE69 "MenA conjugate vaccine (5µg)" "Monovalent serogroup A (MenA) conjugate vaccine (5µg) vaccine"
* #DE70 "Monovalent MenC conjugate" "Monovalent MenC conjugate vaccine"
* #DE71 "Quadrivalent conjugate" "Quadrivalent conjugate (A,C,W135,Y-D and A,C,W135,Y-CRM) vaccines"
* #DE72 "Age in months when client received first meningococcal dose" "The age in months when client received their first meningococcal dose"
* #DE73 "Type of last hepatitis A dose" "The type of the last hepatitis A vaccine dose administered to the client"
* #DE74 "Live attenuated hepatitis A vaccine" "Live attenuated hepatitis A vaccine"
* #DE75 "Inactivated hepatitis A vaccine" "Inactivated hepatitis A vaccine"
* #DE76 "VNA level" "Vaccine-induced neutralizing (VNA) antibody level. It is a measured as a serum antibody concentration amount observed from the result of the concentrated, purified cell culture and embryonated egg-based rabies vaccines (CCEEV)"
* #DE77 "Seronegative for dengue" "The client is known to be seronegative for dengue"


ValueSet:     IMMZ.D1.DE10
Title:        "IMMZ.D1.DE10 ValueSet for HIV Status"
Description:  "ValueSet for HIV Status for IMMZ.D1.DE10."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE10"

* IMMZ.D1#DE11 "HIV-positive"
* IMMZ.D1#DE12 "HIV-negative"
* IMMZ.D1#DE13 "Unknown"

ValueSet:     IMMZ.D1.DE84
Title:        "IMMZ.D1.DE84 ValueSet for Type of TB infection test performed"
Description:  "ValueSet for Type of TB infection test performed for IMMZ.D1.DE84."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE84"

* IMMZ.D1#DE85 "IGRA"
* IMMZ.D1#DE86 "TST"

ValueSet:     IMMZ.D1.DE87
Title:        "IMMZ.D1.DE87 ValueSet for TB infection test result"
Description:  "ValueSet for TB infection test result for IMMZ.D1.DE87."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE87"

* IMMZ.D1#DE88 "Positive"
* IMMZ.D1#DE89 "Negative"

ValueSet:     IMMZ.D1.DE35
Title:        "IMMZ.D1.DE35 ValueSet for Type of polio dose"
Description:  "ValueSet for Type of polio dose for IMMZ.D1.DE35."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE35"

* IMMZ.D1#DE36 "IPV"
* IMMZ.D1#DE37 "bOPV"

ValueSet:     IMMZ.D1.DE52
Title:        "IMMZ.D1.DE52 ValueSet for Type of last JE dose"
Description:  "ValueSet for Type of last JE dose for IMMZ.D1.DE52."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE52"

* IMMZ.D1#DE53 "Inactivated Vero cell-derived vaccine"
* IMMZ.D1#DE54 "Live attenuated vaccine"
* IMMZ.D1#DE55 "Live recombinant vaccine"

ValueSet:     IMMZ.D1.DE56
Title:        "IMMZ.D1.DE56 ValueSet for Type of last TBE dose"
Description:  "ValueSet for Type of last TBE dose for IMMZ.D1.DE56."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE56"

* IMMZ.D1#DE57 "FSME-Immun"
* IMMZ.D1#DE58 "Encepur"
* IMMZ.D1#DE59 "TBE-Moscow"
* IMMZ.D1#DE60 "EnceVir"

ValueSet:     IMMZ.D1.DE61
Title:        "IMMZ.D1.DE61 ValueSet for Type of last typhoid dose"
Description:  "ValueSet for Type of last typhoid dose for IMMZ.D1.DE61."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE61"

* IMMZ.D1#DE62 "Typbar-TCV"
* IMMZ.D1#DE63 "ViPS"
* IMMZ.D1#DE64 "Ty21a"

ValueSet:     IMMZ.D1.DE65
Title:        "IMMZ.D1.DE65 ValueSet for Type of last cholera dose"
Description:  "ValueSet for Type of last cholera dose for IMMZ.D1.DE65."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE65"

* IMMZ.D1#DE66 "WC vaccine"
* IMMZ.D1#DE67 "WC-rBS vaccine"

ValueSet:     IMMZ.D1.DE68
Title:        "IMMZ.D1.DE68 ValueSet for Type of last meningococcal dose"
Description:  "ValueSet for Type of last meningococcal dose for IMMZ.D1.DE68."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE68"

* IMMZ.D1#DE69 "MenA conjugate vaccine (5µg)"
* IMMZ.D1#DE70 "Monovalent MenC conjugate"
* IMMZ.D1#DE71 "Quadrivalent conjugate"

ValueSet:     IMMZ.D1.DE73
Title:        "IMMZ.D1.DE73 ValueSet for Type of last hepatitis A dose"
Description:  "ValueSet for Type of last hepatitis A dose for IMMZ.D1.DE73."

* ^status = #active
* ^experimental = false
* ^name = "IMMZ_D1_DE73"

* IMMZ.D1#DE74 "Live attenuated hepatitis A vaccine"
* IMMZ.D1#DE75 "Inactivated hepatitis A vaccine"

*/