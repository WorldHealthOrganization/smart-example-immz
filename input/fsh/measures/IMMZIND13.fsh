Instance: IMMZIND13
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "IMMZ.IND.13 Measles indicator for second dose"

* extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
* description = "IMMZ.IND.13 Measles indicator for second dose"
* url = "http://smart.who.int/immunizations-measles/Measure/IMMZIND13"
* status = #draft
* experimental = false
* date = "2023-10-13"
* name = "IMMZIND13"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/immunizations-measles/Library/IMMZIND13Logic"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * id = "IMMZ.IND.13.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[denominator]
    * id = "IMMZ.IND.13.DEN"
    * description = "Denominator"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * population[numerator]
    * id = "IMMZ.IND.13.NUM"
    * description = "Numerator"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"
  * stratifier[+]
    * id = "IMMZ.IND.13.S"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Stratification"