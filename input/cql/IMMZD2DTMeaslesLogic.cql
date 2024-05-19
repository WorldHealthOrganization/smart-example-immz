/*
@DecisionID: IMMZ.D2.DT.Measles.Ongoing transmission
@BusinessRule: Determine if the client is due for a measles vaccination according to the national immunization schedule
@Trigger: IMMZ.D2 Determine required vaccination(s) if any
@Description: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of MCV at 9 months and second dose of MCV at 15 months)

@DecisionID: IMMZ.D2.DT.Measles.Low transmission
@BusinessRule: Determine if the client is due for a measles vaccination according to the national immunization schedule
@Trigger: IMMZ.D2 Determine required vaccination(s) if any
@Description: Countries with low levels of measles transmission (countries that provide first dose of MCV at 12 months and second dose of MCV at 15 months)

@DecisionID: IMMZ.D2.DT.Measles.MCV dose 0
@BusinessRule: Determine if the client is due for a measles vaccination according to the national immunization schedule
@Trigger: IMMZ.D2 Determine required vaccination(s) if any
@Description: MCV dose 0 (MCV0) administration

@DecisionID: IMMZ.D2.DT.Measles.Supplementary dose
@BusinessRule: Determine if the client is due for a measles vaccination according to the national immunization schedule
@Trigger: IMMZ.D2 Determine required vaccination(s) if any
@Description: Measles supplementary dose administration

@DecisionID: IMMZ.D5.DT.Measles contraindications
@BusinessRule: Check for contraindications before administering the vaccine(s) due					
@Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
*/
library IMMZMeaslesLogic

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include WHOCommon called WC
include IMMZConcepts called Concepts
include IMMZCommon called Common
include IMMZConfig called Config
include IMMZEncounterElements called Elements

parameter AsOf default Today()

// TODO: Should these be data elements?
parameter "Individual is at high risk of contracting measles" Boolean default false
parameter "Individual is travelling to a country experiencing measles outbreaks" Boolean default false
parameter "Individual is known to be HIV-infected or exposed" Boolean default false
parameter "Immune reconstitution was achieved" Boolean default false

context Patient

define "Age of MCV0": 6 months
define "Age of MCV1": if Config."In a setting where there is high transmission of Measles" then 9 months else 12 months
define "Age of MCV2": 15 months

define "Age In Months":
  AgeInMonthsAt(AsOf)

define "Number Of Primary Series Doses Administered":
  Count(
    Elements."MCV Primary Series Dose" PrimaryDose
      where PrimaryDose.occurrence.toInterval() starts on or before AsOf
  )

define "Most Recent Live Vaccine Dose":
  Elements."Live vaccine dose".mostRecent()

define "Date Last Live Vaccine Administered":
  date from start of "Most Recent Live Vaccine Dose".occurrence.toInterval()

/*
IMMZ.D2.DT.Measles.Ongoing transmission
IMMZ.D2.DT.Measles.Low transmission
*/

define "MCV1 Status":
  if "Number Of Primary Series Doses Administered" = 0 then 
    'Needed'
  else
    'Complete'

define "MCV1 Due Date":
  if "MCV1 Status" = 'Needed' then
    WC.LatestOf({
        Patient.birthDate + "Age of MCV1",
        "Date Last Live Vaccine Administered" + 4 weeks,
        AsOf
    })
  else
    null

define "Client Is Due For MCV1":
  "MCV1 Status" = 'Needed'
    and "MCV1 Due Date" >= AsOf

define "MCV2 Status":
  if "Number Of Primary Series Doses Administered" = 1 then
    'Needed'
  else
    'Complete'

define "MCV2 Due Date":
  if "MCV2 Status" = 'Needed' then
    WC.LatestOf({
        Patient.birthDate + "Age of MCV2",
        "Date Last Live Vaccine Administered" + 4 weeks,
        AsOf
    })
  else
    null

define "Client Is Due For MCV2":
  "MCV2 Status" = 'Needed'
    and "MCV2 Due Date" >= AsOf

define "MCV Primary Series Status":
  if "Number Of Primary Series Doses Administered" >= 2 then
    'Complete'
  else
    'Incomplete'

/*
IMMZ.D2.DT.Measles.MCV dose 0
*/

define "Number Of Dose 0 Doses Administered":
  0

define "MCV0 Status":
  if "Number Of Dose 0 Doses Administered" = 0 and "Age In Months" between 6 and 9 then
    'Needed'
  else
    'Complete'

define "MCV0 Due Date":
  if "MCV0 Status" = 'Needed' then
    WC.LatestOf({
        Patient.birthDate + "Age of MCV0",
        "Date Last Live Vaccine Administered" + 4 weeks,
        AsOf
    })
  else
    null

/*
IMMZ.D2.DT.Measles.Supplementary dose
*/

define "Number Of Supplementary Doses Administered":
  0

define "Patient Is HIV-infected And Immune Reconstitution Has Been Achieved Or 6 To 12 Months Have Passed Since HAART Initiation":
  false

define "MCV Supplementary Dose Status":
  if "Number Of Supplementary Doses Administered" = 0 and "MCV Primary Series Status" = 'Complete' 
    and "Patient Is HIV-infected And Immune Reconstitution Has Been Achieved Or 6 To 12 Months Have Passed Since HAART Initiation" then
    'Eligible'
  else
    'Complete'

define "MCV Supplementary Dose Due Date":
  if "MCV Supplementary Dose Status" = 'Eligible' then
    WC.LatestOf({
        "Date Last Live Vaccine Administered" + 4 weeks,
        AsOf
    })
  else
    null

define "Client Is Due For MCV Supplementary Dose":
  "MCV Supplementary Dose Status" = 'Eligible'
    and "MCV Supplementary Dose Due Date" >= AsOf

/*
IMMZ.D5.DT.Measles contraindications
*/
define "Measles Vaccination Could Be Contraindicated":
  Elements."History Of Anaphylactic Reactions"
    or Elements."Severe Allergic Reactions"
    or Elements."Symptomatic HIV Infection"

define "Measles Vaccination Contraindicated":
  Elements."Currently Pregnant"
    or Elements."Severely Immunosuppressed"



