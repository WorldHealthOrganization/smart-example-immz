---
---
{% assign igId = site.data.fhir.igId %}
{% assign resourceKey = "ImplementationGuide/" | append: igId %}
{% assign resource = site.data.resources[resourceKey] %}
{% assign source = resource.source %}



These files allow a quick setup of working servers, for testing of the specification in a known configuration.

source: {{source}}


### Questionnaires and StructureMap Transformations
Matchbox server 
{% if source contains 'C:' %}
  <!-- For local path -->
  {% assign img_path = source | split: '\fsh-generated' | first %}
  {% assign testing_url = 'file://' | append: img_path | append: '/testing' %}
{% else %}
  <!-- For GitHub repo -->
igId: {{ igId }}
  {% assign testing_url = 'https://raw.githubusercontent.com/WorldHealthOrganization/' | append: igId | split: '.' | last | append: '/main/testing' %}
{% endif %}
* <a href="{{ testing_url }}/docker/questionnaires/.env" download>.env file</a>  
* <a href="{{ testing_url }}/docker/questionnaires/docker-compose.yml" download>docker compose file</a>


### Scheduling and Decision Logic, Measures
CQFRuler
* <a href="{{ testing_url }}/docker/logic/.env" download>.env file</a>  
* <a href="{{ testing_url }}/docker/logic/docker-compose.yml" download>docker compose file</a>

