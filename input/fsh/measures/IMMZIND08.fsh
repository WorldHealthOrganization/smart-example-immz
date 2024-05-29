Instance: IMMZIND08
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cv-measure-cqfm
Title: "IMMZ.IND.08 Immunization coverage for Measles containing vaccine (Estimated Denominator)"
* extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean

* description = "IMMZ.IND.08 Immunization coverage for Measles containing vaccine (Estimated Denominator)"
* url = "http://smart.who.int/immunizations-measles/Measure/IMMZIND08"
* status = #draft
* experimental = false
* date = "2023-10-05"
* name = "IMMZIND08"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/immunizations-measles/Library/IMMZIND08Logic"
* scoring = $measure-scoring#continuous-variable "Continuous Variable"
* group[+]
  * population[initialPopulation]
    * id = "IMMZ.IND.08.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-indicator
    * criteria.expression = "Initial Population"
  * population[measurePopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.08.MP"
    * description = "Measure Population"
    * code = $measure-population#measure-population "Measure Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Measure Population"
  * population[measureObservation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-criteriaReference].valueString = "measure-population"
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-aggregateMethod].valueCode = #count
    * id = "IMMZ.IND.08.MO"
    * description = "Measure Observation"
    * code = $measure-population#measure-observation
    * criteria.language = #text/cql
    * criteria.expression = "Measure Observation"
  * stratifier[+]
    * id = "IMMZ.IND.08.S"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification"