Instance: IMMZIND12
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cv-measure-cqfm

* description = "The percentage in the target population who have received one dose of measles and rubella vaccine during reporting period"
* url = "http://smart.who.int/immunizations-measles/Measure/IMMZIND12"
* version = "0.2.0"
* status = #draft
* experimental = false
* date = "2024-04-25"
* name = "IMMZIND12"
* title = "Immunization coverage for Measles and rubella containing vaccine, 1st dose "
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/immunizations-measles/Library/IMMZINDMeasles"
* scoring = $measure-scoring#continuous-variable "Continuous Variable"
* group[+]
  * population[initialPopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.12.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql
    * criteria.expression = "Initial Population 12"
  * population[measurePopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.12.MP"
    * description = "Measure Population"
    * code = $measure-population#measure-population "Measure Population"
    * criteria.language = #text/cql
    * criteria.expression = "Measure Population 12"
  * population[measureObservation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-criteriaReference].valueString = "measure-population"
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-aggregateMethod].valueCode = #count
    * id = "IMMZ.IND.12.MO"
    * description = "Measure Observation"
    * code = $measure-population#measure-observation
    * criteria.language = #text/cql
    * criteria.expression = "Measure Observation 12"
  * stratifier[+]
    * id = "IMMZ.IND.12.S"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification"