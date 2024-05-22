Instance: IMMZIND12
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "IMMZ.IND.12 Measles indicator for first dose"

* extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
* description = "IMMZ.IND.12 Measles indicator for first dose"
* url = "http://smart.who.int/immunizations-measles/Measure/IMMZIND12"
* status = #draft
* experimental = false
* date = "2023-10-12"
* name = "IMMZIND12"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/immunizations-measles/Library/IMMZIND12Logic"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * id = "IMMZ.IND.12.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[denominator]
    * id = "IMMZ.IND.12.DEN"
    * description = "Denominator"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * population[numerator]
    * id = "IMMZ.IND.12.NUM"
    * description = "Numerator"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"
  * stratifier[+]
    * id = "IMMZ.IND.12.S"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Stratification"