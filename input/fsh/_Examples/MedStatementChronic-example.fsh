Instance: LeumitMedStatementChronic01
InstanceOf: LeumitMedStatementChronic
Usage: #example
Title: "Leumit Chronic MedicationStatement - Atorvastatin"
Description: "A sample chronic medication statement for a Leumit patient on Atorvastatin 20mg daily."

* id = "CHR.98234701"

* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-statement"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/med-statement-chronic"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"

* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-chronic-med"
* identifier.value = "98234701"

* status = #active

* category.coding = http://fhir.health.gov.il/cs/il-core-medication-statement-category#community-hmo "Community-hmo"

* medicationCodeableConcept.coding[yarpa].system = "http://yarpa.co.il/catalog"
* medicationCodeableConcept.coding[yarpa].code = #29055
* medicationCodeableConcept.coding[yarpa].display = "ATORVASTATIN TEVA 20 MG TABLETS"
* medicationCodeableConcept.coding[yarpa].userSelected = true
* medicationCodeableConcept.text = "אטורבסטטין 20 מ\"ג"

* subject = Reference(Patient/leumit-pat-928374)
* subject.reference = "Patient/leumit-pat-928374"

* context = Reference(Encounter/leumit-enc-556201)
* context.reference = "Encounter/leumit-enc-556201"

* effectiveDateTime = "2024-03-15"
* dateAsserted = "2024-03-15T10:30:00+02:00"

* informationSource = Reference(Practitioner/leumit-prac-44210)
* informationSource.reference = "Practitioner/leumit-prac-44210"

* dosage.timing.repeat.boundsPeriod.start = "2024-03-15"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #26643006
* dosage.route.coding.display = "Oral route"
* dosage.route.coding.userSelected = false

* dosage.doseAndRate.doseQuantity.value = 20
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg

Instance: LeumitMedStatementChronic02
InstanceOf: LeumitMedStatementChronic
Usage: #example
Title: "Leumit Chronic MedicationStatement - Ventolin (Stopped, automatic cancellation)"
Description: "A sample chronic medication statement for Ventolin that was automatically stopped by the system, demonstrating the cancellation-reason coding and the cancelled-by-practitioner extension's automatic-practitioner identifier branch."

* id = "CHR.1bbfb85d-54ba-524d-b6ba-f132bde07c17"

* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-statement"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/med-statement-chronic"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"
* extension[cancelled-by].valueReference.type = "Device"
* extension[cancelled-by].valueReference.display = "Automatic job"

* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-chronic-med"
* identifier.value = "21927.1.459675922.20101230.9"

* status = #stopped

* statusReason.coding.system = "http://fhir.leumit.co.il/cs/tamar-cancel-reason"
* statusReason.coding.code = #17
* statusReason.extension[canecelled-by].valueReference.identifier.system = "http://fhir.leumit.co.il/identifier/automatic-practitioner"
* statusReason.extension[canecelled-by].valueReference.identifier.value = "99999"

* category.coding = http://fhir.health.gov.il/cs/il-core-medication-statement-category#community-hmo "Community-hmo"

* medicationCodeableConcept.coding[local-yarpa].system = "http://fhir.leumit.co.il/cs/yarpa-catalog-local"
* medicationCodeableConcept.coding[local-yarpa].code = #21927
* medicationCodeableConcept.coding[local-yarpa].display = "VENTOLIN DIS.200MCGX60 DO"
* medicationCodeableConcept.coding[local-yarpa].userSelected = true

* subject.reference = "Patient?identifier=http://fhir.health.gov.il/identifier/il-national-id|459675922"

* effectivePeriod.start = "2008-01-21"
* effectivePeriod.end = "2010-12-30"
* dateAsserted = "2010-12-30T00:00:00+02:00"

* informationSource.reference = "Practitioner?identifier=http://practitioners.health.gov.il/Practitioners|1-29105"

* dosage.extension[matan-code].valueCodeableConcept.coding.system = "http://fhir.leumit.co.il/cs/matan-code"
* dosage.extension[matan-code].valueCodeableConcept.coding.code = #RS
* dosage.extension[matan-code].valueCodeableConcept.coding.display = "לשאיפה"
* dosage.additionalInstruction.coding.system = "http://fhir.leumit.co.il/cs/matan-code"
* dosage.additionalInstruction.coding.code = #RS
* dosage.additionalInstruction.coding.display = "לשאיפה"
* dosage.additionalInstruction.text = "לשאיפה"

* dosage.timing.repeat.boundsPeriod.start = "2008-01-21"
* dosage.timing.repeat.boundsPeriod.end = "2010-12-30"
* dosage.timing.repeat.count = 10
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #447694001
* dosage.route.coding.display = "Respiratory tract route (qualifier value)"

* dosage.method.coding.system = "http://snomed.info/sct"
* dosage.method.coding.code = #740666001
* dosage.method.coding.display = "Inhale (administration method)"

* dosage.doseAndRate.doseQuantity.value = 1
* dosage.doseAndRate.doseQuantity.unit = "dose"
