Instance: immz-e-fxnreq
InstanceOf: Requirements
Usage: #example
Title: "IMMUNIZATION - Business Process E: Register Client - Functional requirements"
Description: "IMMUNIZATION - Business Process E: Register Client - Functional requirements"
* status = #active
* statement[0]
  * key = "IMMZ.FXNREQ.087"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want To confirm I have selected the correct record\nso that I know I have the correct record"
* statement[+]
  * key = "IMMZ.FXNREQ.088"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want To enter all necessary registration data\nso that It will be available to the system and others who should have access to it"
* statement[+]
  * key = "IMMZ.FXNREQ.089"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want To select the place of birth from a list as defined by the system administrator\nso that We have a standardized list of locations to prevent entry errors"
* statement[+]
  * key = "IMMZ.FXNREQ.090"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want To select the health centre of the client from a list as defined by the system administrator\nso that I can be sure the client is assigned to the correct clinic and that all systems and users will understand it to be the same clinic"
* statement[+]
  * key = "IMMZ.FXNREQ.091"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to validate that a client does not exist before adding a new record.\nso that Duplicates can be prevented"
* statement[+]
  * key = "IMMZ.FXNREQ.092"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to enforce a minimal required data set for new registrations\nso that Sufficient data is entered to be able to identify the client"
* statement[+]
  * key = "IMMZ.FXNREQ.093"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to uniquely identify every client using a system generated unique identifier or an existing identifier e.g. health care, national ID, health unique ID\nso that The client can be definitively identified using that number"
* statement[+]
  * key = "IMMZ.FXNREQ.094"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to generate a unique identifier\nso that The client can be uniquely identified for vaccination activities across systems using the same ID"
* statement[+]
  * key = "IMMZ.FXNREQ.095"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want Validate a unique ID when offline\nso that Entry errors are prevented"
* statement[+]
  * key = "IMMZ.FXNREQ.096"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to provide a mechanism to prevent unwanted duplication of records, i.e. the system warns if a client is registered with same name and date of birth\nso that Duplicates can be prevented, and entries that are not duplicates can be confirmed as similar but separate"
* statement[+]
  * key = "IMMZ.FXNREQ.097"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want To handle duplicates (such as merging records)\nso that Duplicate records are minimized or eliminated"
* statement[+]
  * key = "IMMZ.FXNREQ.098"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability for remote access and update of client records (via mobile device)\nso that Records can be updated when the client is present, to confirm any information"
* statement[+]
  * key = "IMMZ.FXNREQ.099"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability for the system administrator to configure what information and what data will be returned to determine a match\nso that To maintain confidentiality of records by only displaying what is needed to make a match"
* statement[+]
  * key = "IMMZ.FXNREQ.100"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability to add a historical vaccination history on a new client\nso that the record will contain the full vaccine history"
* statement[+]
  * key = "IMMZ.FXNREQ.101"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability to generate a barcode label to affix to the paper record\nso that The record can easily be uniquely identified by scanning the ID"
* statement[+]
  * key = "IMMZ.FXNREQ.102"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability to include an appropriate data on the barcode including the unique ID and data to support the digital vaccination certificate verification and validation process such as web end point or public key\nso that Interaction with other systems can be facilitated"
* statement[+]
  * key = "IMMZ.FXNREQ.103"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability to associate a unique ID generated by another authority (local or global) to the record\nso that The record can be more easily shared or identified with other appropriate systems"
* statement[+]
  * key = "IMMZ.FXNREQ.104"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The ability to add relevant health history if needed\nso that Relevant clinical information will be available to users of the system to improve decisions making"
* statement[+]
  * key = "IMMZ.FXNREQ.105"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want To modify or update appropriate client data as needed\nso that Most up to date information is available to all users"
* statement[+]
  * key = "IMMZ.FXNREQ.106"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to track that I have changed or modified an existing record\nso that accountability for correct data is improved"
* statement[+]
  * key = "IMMZ.FXNREQ.107"
  * requirement = "As a [health worker (HW)](ActorDefinition-HealthWorker.html)\nI want The system to identify changes made to the record for my confirmation before saving\nso that I can have the opportunity to double check the data to prevent errors"