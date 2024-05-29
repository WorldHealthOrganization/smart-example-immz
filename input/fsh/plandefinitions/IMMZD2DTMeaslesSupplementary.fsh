Instance: IMMZD2DTMeaslesSupplementary
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles MCV Dose 0"
Description: "If the child or patient has not been given a supplementary dose"
Usage: #definition

* library = "http://smart.who.int/immunizations-measles/Library/IMMZD2DTMeaslesSupplementaryLogic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/immunizations-measles/PlanDefinition/IMMZD2DTMeaslesSupplementary"
* name = "IMMZD2DTMeaslesSupplementary"
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
      * expression = "Measles Routine Immunization Schedule Complete"
  * action[+]
    * extension[+]
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
      * valueMarkdown = "An additional dose of MCV should be administered to HIV-infected children receiving HAART following immune reconstitution. If CD4+ T lymphocyte counts are monitored, an additional dose of MCV should be administered when immune reconstitution has been achieved, e.g. when the CD4+ T lymphocyte count reaches 20–25%. Where CD4+ T lymphocyte monitoring is not available, children should receive an additional dose of MCV 6–12 months after initiation of HAART.<br/>As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine"
    * title = "Consider supplementary dose"
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "No Supplementary Dose Administered"
    * action[+]
      * title = "Last Live Vaccine Administered Within 4 Weeks"
      * description = "Should not vaccinate client for measles supplementary dose as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for supplementary dose."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Last Live Vaccine Administered Within 4 Weeks"
    * action[+]
      * title = "Provide Measles Vaccine"
      * description = "May vaccinate client for measles supplementary dose as supplementary dose was not administered, measles routine immunization schedule is complete and no live vaccine administered in the last 4 weeks. Check if one of the measles supplementary dose specific scenarios is applicable."
      * condition[+]
        * kind = #applicability
        * expression
          * language = #text/cql-identifier
          * expression = "Client Is Due For Supplementary Dose"
      * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)
  * action[+]
    * title = "Supplementary Dose Administered"
    * description = "Measles immunization schedule is complete. Measles supplementary dose was administered."
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "Supplementary Dose Administered"