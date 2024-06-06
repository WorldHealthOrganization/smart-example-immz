Instance: IMMZIND12
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "IMMZ.IND.12 Measles indicator for first dose"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablemeasure"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablemeasure"
* extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
* description = "The percentage in the target population who have received one dose of measles and rubella vaccine during reporting period"
* url = "http://smart.who.int/immunizations-measles/Measure/IMMZIND12"
* status = #draft
* experimental = true
* date = "2023-10-12"
* name = "IMMZIND12"
* title = "IMMZ.IND.12 Measles indicator for first dose"
* publisher = "World Health Organization (WHO)"
* relatedArtifact[+]
  * type = #citation
  * citation = "WHO Immunization facility analysis guide"
* relatedArtifact[+]
  * type = #citation
  * citation = "WHO Handbook on immunization data"
* library = "http://smart.who.int/immunizations-measles/Library/IMMZIND12Logic"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * id = "IMMZ.IND.12.IP"
    * description = "Number in target group"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[denominator]
    * id = "IMMZ.IND.12.DEN"
    * description = "Number in target group"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * population[numerator]
    * id = "IMMZ.IND.12.NUM"
    * description = "Number of measles and rubella doses (1st dose) administered through routine services during reporting period"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"
  * stratifier[+]
    * id = "IMMZ.IND.12.S"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Stratification"