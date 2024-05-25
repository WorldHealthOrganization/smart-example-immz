Instance: IMMZDTImmunizationStrategy
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-strategydefinition
Title: "IMMZ.DT.Immunization Strategy"
Description: "Provide vaccinations according to the recommended schedule"
Usage: #definition

* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/immunizations-measles/PlanDefinition/IMMZDTImmunizationStrategy"
* name = "IMMZDTImmunizationStrategy"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Check Immunizations"
  * description = "Check immunization plan definitions to see what is required."
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
  * selectionBehavior = #all
  * action[+]
    * title = "Measles Dose 0"
    * description = "Consider measles dose 0 immunization"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
    * selectionBehavior = #all
    * definitionCanonical = Canonical(IMMZD2DTMeaslesDose0)
  * action[+]
    * title = "Measles Routine Immunization"
    * description = "Provide measles routine immunization"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
    * selectionBehavior = #all
    * definitionCanonical = Canonical(IMMZD2DTMeaslesOT)
  * action[+]
    * title = "Measles Supplementary Dose"
    * description = "Consider measles supplementary dose"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
    * selectionBehavior = #all
    * definitionCanonical = Canonical(IMMZD2DTMeaslesSupplementary)    
  * action[+]
    * title = "Measles Contraindications"
    * description = "Check measles contraindications"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
    * selectionBehavior = #all
    * definitionCanonical = Canonical(IMMZD5DTMeaslesCI)        