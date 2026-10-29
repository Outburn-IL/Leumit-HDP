Instance: leumit-med-request-pres-001
InstanceOf: LeumitMedRequestPrescription
Usage: #example
Title: "Leumit MedicationRequest Prescription - Atorvastatin"
Description: "Prescription for Atorvastatin 20mg for a Leumit patient."

* id = "leumit-med-request-pres-001"

* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-request"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/med-request-prescription"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

// Leumit identifier with strong-id type
* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription"
* identifier.value = "PRES.20240315.001"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #active

* intent = #order

// Leumit-fixed category
* category[il-core].coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category[il-core].coding.code = #community-other
* category[il-core].coding.display = "Community Care/Long Term Care/Home"

// All three Leumit coding slices: yarpa (standard catalog), yarpa-local (always required), snomed
* medicationCodeableConcept.coding[yarpa].system = "http://yarpa.co.il/catalog"
* medicationCodeableConcept.coding[yarpa].code = #29055
* medicationCodeableConcept.coding[yarpa].display = "ATORVASTATIN TEVA 20 MG TABLETS"
* medicationCodeableConcept.coding[yarpa].userSelected = true
* medicationCodeableConcept.coding[yarpa-local].system = "http://fhir.leumit.co.il/cs/yarpa-catalog-local"
* medicationCodeableConcept.coding[yarpa-local].code = #L29055
* medicationCodeableConcept.coding[yarpa-local].display = "אטורבסטטין טבע 20 מ\"ג טבליות"
* medicationCodeableConcept.coding[yarpa-local].userSelected = true
* medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[snomed].code = #373444002
* medicationCodeableConcept.coding[snomed].display = "Atorvastatin (substance)"
* medicationCodeableConcept.coding[snomed].userSelected = false
* medicationCodeableConcept.text = "אטורבסטטין 20 מ\"ג"

* subject.reference = "Patient/leumit-pat-928374"

* encounter.reference = "Encounter/leumit-enc-556201"

* authoredOn = "2024-03-15T10:00:00+02:00"

* requester.reference = "Practitioner/leumit-prac-44210"

* courseOfTherapyType.coding.system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* courseOfTherapyType.coding.code = #acute
* courseOfTherapyType.coding.display = "Short course (acute) therapy"

// Prescription group identifier
* groupIdentifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription-group"
* groupIdentifier.value = "GRP.20240315.001"

* note.text = "יש ליטול בלילה עם אוכל"

* dosageInstruction.text = "טבליה אחת פעם ביום בלילה"
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.system = "http://fhir.leumit.co.il/cs/matan-code"
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.code = #12
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.display = "יש ליטול עם אוכל"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-03-15"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d

* dosageInstruction.route.coding.system = "http://snomed.info/sct"
* dosageInstruction.route.coding.code = #26643006
* dosageInstruction.route.coding.display = "Oral route"

* dosageInstruction.doseAndRate.doseQuantity.value = 20
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseQuantity.code = #mg
