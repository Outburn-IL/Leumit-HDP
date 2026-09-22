Profile: LeumitMedicationDispense
Parent: ILHDPMedicationDispense
Id: med-dispense
Title: "Leumit MedicationDispense Profile"
Description: "Leumit local profile for medication dispenses, derived from ILHDPMedicationDispense."
* insert ConformanceMetadata

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains leumit 0..1 and hdp 0..1
* meta.profile[leumit] = "http://fhir.leumit.co.il/StructureDefinition/med-dispense" (exactly)
* meta.profile[hdp] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-dispense" (exactly)
* id 1..1

* identifier.system = "http://fhir.leumit.co.il/identifier/tmr-med-dispense" (exactly)

* statusReason[x] only CodeableConcept
* statusReasonCodeableConcept.coding 1..1
* statusReasonCodeableConcept.coding.system = "http://fhir.leumit.co.il/cs/dispense-cancelled-reason" (exactly)

* category.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category" (exactly)

* medication[x] only CodeableConcept
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    internal 0..1 and
    SNOMED 0..1
* medicationCodeableConcept.coding[internal].system = "http://fhir.leumit.co.il/cs/yarpa-catalog-local" (exactly)
* medicationCodeableConcept.coding[SNOMED].system = $sct (exactly)

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)

* quantity.system = "http://unitsofmeasure.org" (exactly)

* dosageInstruction.additionalInstruction.coding.system = "http://fhir.leumit.co.il/cs/matan-code" (exactly)
* dosageInstruction.timing.repeat.period = 1 (exactly)
* dosageInstruction.timing.repeat.periodUnit = #d (exactly)
* dosageInstruction.route.coding ^slicing.discriminator.type = #value
* dosageInstruction.route.coding ^slicing.discriminator.path = "system"
* dosageInstruction.route.coding ^slicing.rules = #open
* dosageInstruction.route.coding contains snomed 0..*
* dosageInstruction.route.coding[snomed].system = $sct (exactly)
