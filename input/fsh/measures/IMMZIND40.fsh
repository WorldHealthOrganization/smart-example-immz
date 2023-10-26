Instance: IMMZIND40
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cohort-measure-cqfm
Title: "IMMZIND40"

* description = "IMMZ.IND.40 Measles indicator for second dose."
* url = "http://smart.who.int/ig/smart-immunizations-measles/Measure/IMMZIND40"
* version = "0.1.0"
* status = #draft
* experimental = false
* date = "2023-10-05"
* name = "IMMZIND40"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/ig/smart-immunizations-measles/Library/IMMZINDMeasles"
* scoring = $measure-scoring#cohort "Cohort"
* group[+]
  * population[initialPopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.40.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql
    * criteria.expression = "Measure Population 40"
  * stratifier[+]
    * id = "IMMZ.IND.05.S"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification"