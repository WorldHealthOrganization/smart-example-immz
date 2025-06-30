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
* scoring = $measure-scoring#ratio "Ratio"
* group[+]
  * population[demnominator-initialPopulation]
    * id = "IMMZ.IND.12.IP"
    * description = "Locations in target group, as defined by Member State, but defaulted based on locations with encounters"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator Initial Population"
  * population[denominator]
    * id = "IMMZ.IND.12.DEN"
    * description = "Locations in target group, as defined by Member State, but defaulted based on locations with encounters"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * population[denominator-observation]
    * id = "IMMZ.IND.12.NUMOBS"
    * description = "Number in target group, as defined by Member State, but defaulted to number of patients with encounters at each location"
    * code = $measure-population#measure-observation "Measure Observation"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator Observation"
  * population[numerator-initialPopulation]
    * id = "IMMZ.IND.12.IP"
    * description = "Patients with at least one encounter during the reporting period"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator Initial Population"
  * population[numerator]
    * id = "IMMZ.IND.12.NUM"
    * description = "Patients with measles and rubella doses (1st dose) administered through routine services during reporting period"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"
  * population[numerator-observation]
    * id = "IMMZ.IND.12.NUMOBS"
    * description = "Number of measles and rubella doses (1st dose) administered through routine services during reporting period"
    * code = $measure-population#measure-observation "Measure Observation"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator Observation"
  * stratifier[+]
    * id = "IMMZ.IND.12.S"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Stratification"