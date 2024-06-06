Instance: IMMZD2DTMeaslesDose0
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles MCV Dose 0"
Description: "If the child or patient has not been given MCV0 between 6 and 9 months"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"

* library = "http://smart.who.int/immunizations-measles/Library/IMMZD2DTMeaslesDose0Logic"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/immunizations-measles/PlanDefinition/IMMZD2DTMeaslesDose0"
* name = "IMMZD2DTMeaslesDose0"
* status = #draft
* experimental = true
* publisher = "World Health Organization (WHO)"
* relatedArtifact[+]
  * type = #citation
  * citation = "WHO recommendations for routine immunization - summary tables (March 2023)"
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = "Note: The countries should apply the national immunization policy for MCV0 dose and adjust this logic accordingly.<br/>A supplementary dose of MCV (recorded as MCV0) should be considered for infants known to be exposed (i.e. born to an HIV-infected woman) or soon after diagnosis of HIV infection in children older than 6 months who are not receiving HAART and for whom the risk of measles is high, with the aim of providing partial protection until they are revaccinated after immune reconstitution with HAART.<br/>In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age:<br/>* (1) during a measles outbreak as part of intensified service delivery;<br/>* (2) during campaigns in settings where the risk of measles among infants < 9 months of age remains high (e.g. in endemic countries experiencing regular outbreaks);<br/>* (3) for internally displaced populations and refugees, and populations in conflict zones;<br/>* (4) for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);<br/>* (5)for infants travelling to countries experiencing measles outbreaks;<br/>* (6) infants known to be HIV-infected or exposed (i.e. born to an HIV-infected woman).<br/>In areas where there is a high incidence of both HIV infection and measles, an initial dose of MCV may be offered as early as age 6 months (recorded as MCV0). The 2 routine doses of MCV (MCV1 and MCV2) should then be administered to these children according to the national immunization schedule.<br/>As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine."
  * title = "Immunize patient for Measles"
  * condition[+]
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Measles Routine Immunization Schedule Incomplete"
  * action[+]
    * title = "Consider MCV0 Dose"
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
      * dynamicValue[+]
        * path = "dispenseRequest.validityPeriod.start"
        * expression
          * description = "Due date of the dose"
          * language = #text/cql-identifier
          * expression = "MCV0 Schedule Date"
      * dynamicValue[+]
        * path = "dispenseRequest.validityPeriod.end"
        * expression
          * description = "Expiration date for MCV dose"
          * language = #text/cql-identifier
          * expression = "MCV0 Expiration Date"
  * action[+]
    * title = "MCV0 Dose Administered"
    * description = "MCV0 was administered. Check measles routine immunization schedule."
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "MCV0 Dose Administered"
