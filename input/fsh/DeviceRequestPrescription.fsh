Profile: LeumitDeviceRequestPrescription
Parent: ILHDPDeviceRequest
Id: device-request-prescription
Title: "Leumit DeviceRequest Prescription"
Description: "Leumit profile for device prescription requests."
* ^status = #draft

* meta.profile 0..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains leumit-device-request 0..1 and hdp 0..1
* meta.profile[leumit-device-request] = "http://fhir.leumit.co.il/StructureDefinition/device-request-prescription" (exactly)
* meta.profile[hdp] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-device-request" (exactly)

* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription" (exactly)
* identifier.type.coding.system = $il-core-identifier-type (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier"

* status 0..1
* code[x] 1..1
* intent = #order

* codeCodeableConcept 0..1
* codeCodeableConcept.coding ^slicing.discriminator.type = #value
* codeCodeableConcept.coding ^slicing.discriminator.path = "system"
* codeCodeableConcept.coding ^slicing.rules = #open
* codeCodeableConcept.coding contains
    local 0..1 and
    snomed 0..1
* codeCodeableConcept.coding[local].system = "http://fhir.leumit.co.il/cs/local-catalog" (exactly)
* codeCodeableConcept.coding[local].code 0..1
* codeCodeableConcept.coding[local].display 0..1
* codeCodeableConcept.coding[snomed].system = $sct (exactly)
* codeCodeableConcept.coding[snomed].code 0..1
* codeCodeableConcept.coding[snomed].display 0..1

* subject 1..1
* authoredOn 1..1
* occurrencePeriod 0..1
* occurrencePeriod.start 0..1
* occurrencePeriod.end 0..1
* note.text 1..1
* groupIdentifier.system = "http://fhir.leumit.co.il/identifier/tamar-device-prescription-group" (exactly)

* insert ConformanceMetadata