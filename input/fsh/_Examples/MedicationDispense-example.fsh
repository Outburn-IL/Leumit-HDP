Instance: leumit-med-dispense-001
InstanceOf: LeumitMedicationDispense
Usage: #example
Title: "Leumit MedicationDispense - Atorvastatin refill"
Description: "A sample completed dispense of Atorvastatin 20mg for a Leumit patient, refilled against an existing prescription."

* id = "TMR.4471829"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"
* meta.profile[leumit] = "http://fhir.leumit.co.il/StructureDefinition/med-dispense"
* meta.profile[hdp] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-dispense"

* identifier.system = "http://fhir.leumit.co.il/identifier/tmr-med-dispense"
* identifier.value = "4471829"

* status = #completed

* category.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category.coding.code = #community-hmo
* category.coding.display = "Community Care/HMO"

* medicationCodeableConcept.coding[internal].code = #78910
* medicationCodeableConcept.coding[internal].display = "ליפיטור 20 מ״ג"
* medicationCodeableConcept.coding[SNOMED].code = #373444002
* medicationCodeableConcept.coding[SNOMED].display = "Atorvastatin (substance)"
* medicationCodeableConcept.text = "Lipitor 20mg"

* subject.reference = "Patient/leumit-patient-001"
* performer.actor.reference = "Practitioner/leumit-practitioner-001"
* location.reference = "Location/leumit-location-001"
* authorizingPrescription.reference = "MedicationRequest/leumit-medreq-001"

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding.code = #RF
* type.coding.display = "Refill"

* quantity.value = 30
* quantity.unit = "טבליות"
* quantity.system = "http://unitsofmeasure.org"

* whenHandedOver = "2025-07-07T11:00:00+03:00"

* dosageInstruction.additionalInstruction.coding.system = "http://fhir.leumit.co.il/cs/matan-code"
* dosageInstruction.additionalInstruction.coding.code = #PO
* dosageInstruction.additionalInstruction.coding.display = "דרך הפה"
* dosageInstruction.timing.repeat.count = 30
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "טבליה"
* dosageInstruction.route.coding[snomed].code = #26643006
* dosageInstruction.route.coding[snomed].display = "Oral route"
