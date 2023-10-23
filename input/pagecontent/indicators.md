This page includes indicators and performance metrics that would be aggregated from core data elements identified and is extracted from the WHO Digital Adaptation Kit (DAK): SMART Guidelines for Immunizations (link forthcoming). 

For full operational descriptions of the indicators included and their references, see Web Annex C of the DAK. 
For machine-readable representations, see the <a href="indicators-measures.html">Indicators and Measures</a>. 

These indicators may be aggregated automatically from the digital tracking tool to populate a digital health management information system (HMIS). 

### Indicator table column descriptions

| Data Element | Description |
|----|----|
|Indicator code|An identifier for the indicator|
|Indicator name|A short name for the indicator|
|Description|A description about the indicator|
|Numerator definition|The description of numerator used to calculate the indicator.|
|Numerator computation|The calculation or how to derive this numerator. Any specific data elements noted here should align directly with the individual-level Data Element Name.|
|Denominator definition|The dglossescription of denominator used to calculate the indicator.|
|Denominator definition|The description of denominator used to calculate the indicator.|
|Denominator computation|The calculation or how to derive this denominator. Any specific data elements noted here should align directly with the individual-level Data Element Name.|
|Disaggregations|Are there any dis-aggregations that you would like to be able to do in order to conduct the necessary analysis?|
|References|If there are any national or global guidelines (e.g. WHO guidelines) that dictate how and why this indicator should be calculated or reported, it should be noted here. If any guidelines or recommendations change, having a clear reference listed would help in updating or restructuring your data.|				
|References|If there are any national or global guidelines (e.g. WHO guidelines) that dictate how and why this indicator should be calculated or reported, it should be noted here. If any guidelines or recommendations change, having a clear reference listed would help in updating or restructuring your data.|
{:.grid}

### Indicators and performance metrics table
The following indicators are extracted from the DAK for Immunizations. The full indicators and performance metrics table is available in Web Annex C of the DAK. To see linkages to references and full details of the L2 content, please reference the DAK. 

<div style=" width: 100%; height: 500px; overflow: scroll;">

  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
        <tr>
          <th>Indicator code</th>
          <th>Indicator name</th>
          <th>Description</th>
          <th>Numerator definition</th>
          <th>Numerator computation</th>
          <th>Denominator definition</th>
          <th>Denominator computation</th>
          <th>Disaggregation</th>
        </tr>
      </thead>
    <tbody>
      <tr>
        <td>IMMZ.IND.05</td>
        <td>Immunization coverage for Measles containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Measles Containing Vaccines (MCV) with the estimated number of surviving infants (if dose 1) or a country supplied denominator (if dose 2) expressed as a percentage.</td>
        <td>Number of administrations of vaccinations containing a Measles component during reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Measles vaccine (IMMZ.Z1.DE9) and "status code" = completed and vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants (for dose 1) and country supplied denominator for dose sequence 2 (see comments)</td>
        <td>PARAMETER number of surviving infants (if Dose Sequence = 1) or PARAMETER of country supplied denominator (if Dose Sequence = 2)</td>
        <td>Dose Sequence - 1, 2; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.40</td>
        <td>Immunization coverage for Measles containing vaccine (Computed Denominator)</td>
        <td>Compares the administered doses of measles containing vaccines with the number of registered surviving infants.</td>
        <td>Number of patient administered a Measles component vaccine during the reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5-----AND EXISTS (immunization event WHERE "vaccine code" is a Measles vaccine (IMMZ.Z1.DE9) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Sequence - 1, 2; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
    </tbody>
  </table>
</div>
