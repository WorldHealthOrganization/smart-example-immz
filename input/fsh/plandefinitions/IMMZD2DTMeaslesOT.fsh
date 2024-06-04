Instance: IMMZD2DTMeaslesOT
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles Ongoing Transmission"
Description: "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"

* library = "http://smart.who.int/immunizations-measles/Library/IMMZD2DTMeaslesOTLogic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/immunizations-measles/PlanDefinition/IMMZD2DTMeaslesOT"
* name = "IMMZD2DTMeaslesOT"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* relatedArtifact[+]
  * type = #citation
  * citation = "WHO recommendations for routine immunization - summary tables (March 2023)"
* action[+]
  * title = "Immunize patient for Measles"
  * condition[+]
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Measles Routine Immunization Schedule Incomplete"
  * action[+]
    * extension[+]
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
      * valueMarkdown = "In countries with ongoing transmission in which the risk of measles mortality remains high, MCV1 should be given at age 9 months.<br/>As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine."
    * title = "Provide primary series measles vaccination (MCV1)"
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "No Primary Series Doses Administered"
    * action[+]
      * title = "Client Age Less Than 9 Months"
      * description = "Should not vaccinate client as client's age is less than 9 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV1."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Age Less Than 9 Months"
    * action[+]
      * title = "Last Live Vaccine Administered Within 4 Weeks"
      * description = "Should not vaccinate client for MCV1 as live vaccine was administered in the last 4 weeks. Check for any vaccines due and inform the caregiver of when to come back for MCV1."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Last Live Vaccine Administered Within 4 Weeks"
    * action[+]
      * title = "Provide Measles Vaccine"
      * description = "Should vaccinate client for MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine administered in the last 4 weeks. Check for contraindications."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Is Due For MCV1"
      * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)
  * action[+]
    * extension[+]
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
      * valueMarkdown = "In countries with ongoing transmission in which the risk of measles mortality remains high, MCV2 should be given between 15-18 months. The minimum interval between MCV1 and MCV2 is 4 weeks.<br/>As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine."
    * title = "Provide primary series measles vaccination (MCV2)"
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "One Primary Series Dose Administered"
    * action[+]
      * title = "Client Age Less Than 15 Months"
      * description = "Should not vaccinate client for MCV2 as client's age is less than 15 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV2."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Age Less Than 15 Months"
    * action[+]
      * title = "Last Live Vaccine Administered Within 4 Weeks"
      * description = "Should not vaccinate client for MCV2 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV2."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Last Live Vaccine Administered Within 4 Weeks"
    * action[+]
      * title = "Provide Measles Vaccine"
      * description = "Should vaccinate client for MCV2 as client is within appropriate age range and no live vaccine administered in the last 4 weeks. Check for contraindications."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Is Due For MCV2"
      * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)
  * action[+]
    * extension[+]
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
      * valueMarkdown = "An additional dose of MCV should be administered to HIV-infected children receiving HAART following immune reconstitution. If CD4+ T lymphocyte counts are monitored, an additional dose of MCV should be administered when immune reconstitution has been achieved, e.g. when the CD4+ T lymphocyte count reaches 20–25%. Where CD4+ T lymphocyte monitoring is not available, children should receive an additional dose of MCV 6–12 months after initiation of HAART."
    * title = "Measles primary series is complete"
    * description = "Measles primary series is complete. Two measles primary series doses were administered. Check if a measles supplementary dose is appropriate for the client."
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "Two Primary Series Doses Administered"
