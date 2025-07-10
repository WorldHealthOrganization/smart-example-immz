/*
 * Library: IMMZ.IND.12 Logic
 * Immunization coverage for Measles and rubella containing vaccine, 1st dose 
 * The percentage in the target population who have received one dose of measles and rubella vaccine during reporting period
 * 
 * Numerator: Number of measles and rubella doses (1st dose) administered through routine services during reporting period
 * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella containing vaccines"  for the first dose in the primary series AND "Date and time of vaccination" is during the reporting period
 * Denominator: Number in target group
 * Denominator Computation: As defined by the Member States
 * 
 * Disaggregation:
 *   - Administrative area
 *   - Sex
 *   - Age in years
 *   - Age group (depending on schedule) 
 * 
 * References: WHO Immunization facility analysis guide;WHO Handbook on immunization data
 */
library IMMZIND12Logic

/*
NOTE: This is an estimated denominator measure, meaning that the actual denominator values for each location will be provided
by the implementing environment. As such, this measure is modeled as a _patient-based_ _ratio_ of _continuous variables_, where the 
denominator is Locations, and the numerator is Patients
*/

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZConfig called Config
include IMMZIndicatorElements called Elements
include IMMZVaccineLibrary called VaccineLibrary

parameter "Measurement Period" Interval<Date>

context Patient

define "Encounter During Measurement Period":
  [Encounter] E
    where E.period during "Measurement Period"

/*
 * As defined by Member State, but defaulted based on locations with encounters
 */
define "Denominator Initial Population":
  [Location] L
    with "Encounter During Measurement Period" E
     such that E.location.references(L)

/*
 * Locations in target group, as defined by Member State, but defaulted based on locations with encounters
 */
define "Denominator":
  "Denominator Initial Population"

/*
 * Number in target group, as defined by Member State, but defaulted to number of patients with encounters at each location
 */
define function "Denominator Observation"(location Location):
  Count(
    "Encounter During Measurement Period" E
      where E.location.references(location)
      return E.subject
  )

/*
 * Patients with at least one encounter during the reporting period
 */
define "Numerator Initial Population":
  exists ("Encounter During Measurement Period")

/*
 * Patients with measles and rubella doses (1st dose) administered through routine services during reporting period
 */
define "Numerator":
  exists (
  	Elements."MCV Doses Administered to Patient During Measurement Period" I
	    where I.protocolApplied.only().doseNumber = 1
  )

/*
 * Numerator: Number of measles and rubella doses (1st dose) administered through routine services during reporting period
 * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella containing vaccines"  for the first dose in the primary series AND "Date and time of vaccination" is during the reporting period
 */
define function "Numerator Observation"():
  if "Numerator" then 1 else 0