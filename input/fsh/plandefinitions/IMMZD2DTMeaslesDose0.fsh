Instance: IMMZD2DTMeaslesDose0
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles MCV Dose 0"
Description: "If the child or patient has not been given MCV0 between 6 and 9 months"
Usage: #definition

* library = "http://smart.who.int/immunizations-measles/Library/IMMZD2DTMeaslesDose0Logic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/immunizations-measles/PlanDefinition/IMMZD2DTMeaslesDose0"
* name = "IMMZD2DTMeaslesDose0"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Immunize patient for Measles"
  * condition[+]
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Measles Routine Immunization Schedule Incomplete"
  * action[+]
    * title = "No MCV0 Doses Administered"
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "No MCV0 Doses Administered"
    * action[+]
      * title = "Client Age Less Than 6 Months"
      * description = "Should not vaccinate client for MCV0 as client is less than 6 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV0."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Age Less Than 6 Months"
    * action[+]
      * title = "Last Live Vaccine Administered Within 4 Weeks"
      * description = "Should not vaccinate client for MCV0 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV0."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Last Live Vaccine Administered Within 4 Weeks"
    * action[+]
      * title = "Provide Measles Vaccine"
      * description = "May vaccinate client for MCV0 as client is within appropriate age range, MCV0 was not administered and no live vaccine was administered in the last 4 weeks. Check if one of the MCV0 specific scenarios is applicable."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Is Due For MCV0"
      * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)
  * action[+]
    * title = "MCV Dose Administered"
    * description = "MCV0 was administered. Check measles routine immunization schedule."
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "MCV Dose Administered"
