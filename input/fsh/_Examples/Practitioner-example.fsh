Instance: LeumitPractitionerExample
InstanceOf: LeumitPractitioner
Usage: #example
Title: "Leumit Practitioner Example"
Description: "A Leumit practitioner used as the recorder in local clinical examples."

* id = "leumit-practitioner-example"
* meta.profile[0] = "http://fhir.health.gov.il/StructureDefinition/il-core-practitioner"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/leumit-practitioner"
* identifier[UserId].system = "http://fhir.leumit.co.il/Identifier/UserId"
* identifier[UserId].value = "allergy-recorder-001"
* identifier[UserId].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[UserId].type.coding.code = #EN
* name.family = "Levin"
* name.given = "Dana"