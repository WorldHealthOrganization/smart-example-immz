CodeSystem:   IMMZ.D4
Title:        "IMMZ.D4 CodeSystem for Check Contraindications Data Elements"
Description:  "CodeSystem for IMMZ.D4 Check Contraindications Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D4"

* #DE161 "Potential contraindications" "Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine"
* #DE162 "Currently pregnant" "The client is currently pregnant"
* #DE165 "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
* #DE166 "History of anaphylactic reactions" "The client is known to have history of anaphylaxis in the past. Anaphylaxis is a severe and potentially life-threatening allergic reaction that can occur rapidly after exposure to an allergen or vaccine component."
* #DE167 "Severe allergic reactions" "The client is known to have severe allergic reaction to vaccine"
* #DE168 "Symptomatic HIV infection" "The client is experiencing HIV-related symptoms"


ValueSet:     IMMZ.D4.DE161
Title:        "IMMZ.D4.DE161 ValueSet for Potential Contraindications"
Description:  "ValueSet for Potential Contraindications for IMMZ.D4.DE161."

* ^status = #active
* ^name = "IMMZ_D4_DE161"

* IMMZ.D4#DE162 "Currently pregnant"
* IMMZ.D4#DE165 "Severely immunosuppressed"
* IMMZ.D4#DE166 "History of anaphylactic reactions"
* IMMZ.D4#DE167 "Severe allergic reactions"
* IMMZ.D4#DE168 "Symptomatic HIV infection"


