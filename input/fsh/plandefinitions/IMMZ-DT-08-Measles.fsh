Instance: IMMZ-DT-08-Measles
InstanceOf: PlanDefinition
Title: "PlanDefinition - Measles"
Description: "PlanDefinition - Measles..."
Usage: #example
* status = #draft
* name = "IMMZ.DT.08.Measles"
* title = "IMMZ.DT.08.Measles"
* description = "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
* library = "http://worldhealthorganization.github.io/smart-immunizations-mini/Library/IMMZDT08"
* action
  * title = "Immunize patient for Measles"
  * description = "Provide measles immunization"
  * condition
    * kind = #applicability
    * expression
      * description = "Provision of the MCV dose"
      * language = #text/cql-identifier
      * expression = "Provision of the MCV dose"
  * definitionCanonical = "http://worldhealthorganization.github.io/smart-immunizations-mini/ActivityDefinition/IMMZ.DT.08.Measles.MR"