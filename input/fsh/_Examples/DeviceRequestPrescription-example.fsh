Instance: LeumitDeviceRequestPrescriptionExample
InstanceOf: LeumitDeviceRequestPrescription
Usage: #example
Title: "Leumit DeviceRequest Prescription - Ahiston"
Description: "A sample Leumit device prescription request."

* id = "3333.1.20250401"
* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-device-request"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/device-request-prescription"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription"
* identifier.value = "3333.1.20250401"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active
* intent = #order

* codeCodeableConcept.coding[local].system = "http://fhir.leumit.co.il/cs/local-catalog"
* codeCodeableConcept.coding[local].code = #154
* codeCodeableConcept.coding[local].display = "AHISTON 2 MG 20 TAB"
* codeCodeableConcept.coding[local].userSelected = true
* codeCodeableConcept.text = "AHISTON 2 MG 20 TAB"

* subject.reference = "Patient/BP.0091058414"
* authoredOn = "2025-04-01T20:21:10Z"
* occurrencePeriod.start = "2026-01-25"
* occurrencePeriod.end = "2026-04-25"
* requester.reference = "Practitioner/leumit-practitioner-example"
* groupIdentifier.system = "http://fhir.leumit.co.il/identifier/tamar-device-prescription-group"
* groupIdentifier.value = "3333.1"
* note.text = "comment-comment"