Instance: IMMZD5DTMeaslesCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Measles.Contraindication"
Description: "Check contraindications for Measles vaccine"
Usage: #definition

* library = "http://smart.who.int/immunizations-measles/Library/IMMZD5DTMeaslesCILogic"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/immunizations-measles/PlanDefinition/IMMZD5DTMeaslesCI"
* name = "IMMZD5DTMeaslesContraindication"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Check Contraindication for Measles Immunization"
  * description = "Contraindication for measles immunization"
  * type = $action-type#update
  * condition[+]
    * kind = #applicability
    * expression
      * description = "MCV Dose Contraindicated"
      * language = #text/cql-identifier
      * expression = "MCV Dose Contraindicated"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesCIMR)
* action[+]
  * title = "Evaluate Contraindication for Measles"
  * description = "Provide further evaluation for measles contraindication"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Contraindication Evaluation of the MCV dose"
      * language = #text/cql-identifier
      * expression = "Contraindication Evaluation of the MCV dose"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesEval)