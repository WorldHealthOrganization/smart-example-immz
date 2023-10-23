This page describes the decision support logic included in the WHO
Digital Adaptation Kit (DAK): SMART Guidelines for Immunizations (link forthcoming).

The decision-support logic component provides the decision logic and
algorithms, as well as the scheduling of services, in accordance with
WHO guidelines. The decision logic and algorithms in this implementation
guide deconstruct the recommendations within the immunization guidelines
and guidance into a machine readable format that clearly labels the
inputs and outputs that would be operationalized in a digital
decision-support system, such as an electronic immunization registry
(EIR).

### Decision Support Logic Overview
The table below provides an overview of the decision-support tables and
algorithms for the different business processes in an EIR. The structure
of the decision-support tables is based on an adaptation of the Decision
Model and Notation (DMN™), an industry standard for modelling and
executing decision logic. These decision-support tables detail the
business rules, data inputs and outputs to support EIR business
processes.

**Overview of decision support tables for vaccine delivery (Measles excerpt)**

<div style=" width: 100%;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead>
      <tr style="text-align: left;">
        <th>Activity ID &amp; Activity Name</th>
        <th>Decision Table ID</th>
        <th>Decision Table Description</th>
        <th>Reference/Source</th>
      </tr>
    </thead>
    <tbody style="text-align: left; vertical-align: top">
      <tr>
        <td rowspan="22">IMMZ.G2.Determine required vaccinations if any</td>
        <td>IMMZ.DT.01.BCG</td>
        <td>If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth</td>
        <td rowspan="22">WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>...</td>
        <td>...</td>
      </tr>
      <tr>
        <td>IMMZ.DT.08.Measles</td>
        <td>If the child or client has not been given MCV1 (usually at 9 months) and MCV2 (usually between 15-18 months) vaccination</td>
      </tr>
      <tr>
        <td>...</td>
        <td>...</td>
      </tr>
    </tbody>
  </table>
</div>

### Decision Logic Tables

#### IMMZ.DT.08.Measles Determine required vaccinations - Measles Example


| [Number of birth doses administered](#) | [Age in Months](#) | [Number of weeks since last dose](#) | [Number of doses administered](#) | [HIV status](#) | [Patient is currently receiving ART](#) | [Patient is currently pregnant](#) | [Immune reconstitution was achieved](#) | [CD4+ T Lymphocyte monitoring is available](#) | [Number of months since HAART was initiated](#) | [Current vaccination status](#) | Decision | Annotation |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | >6 and <9 | N/A | N/A | Positive | FALSE | N/A | N/A | N/A | N/A | No doses | Should vaccinate patient for measles (supplimentary) | [See note 1](#note1) |
| 0 | >=9 | N/A | 0 | N/A | N/A | FALSE | N/A | N/A | N/A | No doses | Should vaccinate patient for measles | [See note 2](#note2) |
| 0 | >=12 | N/A | 0 | N/A | N/A | FALSE | N/A | N/A | N/A | No doses | Should vaccinate patient for measles | [See note 3](#note3) |
| 1 | >=15 | >=4 | 1 | N/A | N/A | FALSE | N/A | N/A | N/A | 1 Dose | Should vaccinate patient for measles | N/A |
| N/A | N/A | N/A | N/A | Positive | TRUE | FALSE | TRUE | N/A | N/A | Supplimentary | Should vaccinate patient for measles supplimentary dose | [See note 4](#note4) |
| N/A | N/A | N/A | N/A | Positive | TRUE | FALSE | N/A | FALSE | >=6 and <=12 | Supplimentary | Should vaccinate patient for measles supplimentary dose | N/A |
{:.table-bordered .table-sm} 

<a name="note1"></a> Note 1: Refer to the first note in the CSV data for specifics on the supplementary dose.  
<a name="note2"></a> Note 2: This dose is applicable if the patient is in a setting where there is high transmission of Measles.  
<a name="note3"></a> Note 3: This dose is applicable if the patient is in a setting where there is low transmission of Measles.  
<a name="note4"></a> Note 4: This dose is applicable if immune reconstitution was achieved for the individual following HAART.
