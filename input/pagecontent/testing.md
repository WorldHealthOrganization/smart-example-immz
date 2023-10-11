---
---
{% assign igId = site.data.fhir.igId %}
{% assign resourceKey = "ImplementationGuide/" | append: igId %}
{% assign resource = site.data.resources[resourceKey] %}
{% assign source = resource.source %}



These files allow a quick setup of working servers, for testing of the specification in a known configuration.


### Questionnaires and StructureMap Transformations
Matchbox server 

* <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations-measles/main/testing/docker/questionnaires/.env" download>.env file</a>  
* <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations-measles/main/testing/docker/questionnaires/docker-compose.yml" download>docker compose file</a>


### Scheduling and Decision Logic, Measures
CQFRuler
* <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations-measles/main/testing/docker/logic/.env" download>.env file</a>  
* <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations-measles/main/testing/docker/logic/docker-compose.yml" download>docker compose file</a>

