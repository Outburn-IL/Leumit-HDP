Profile: LeumitMedRequestPrescription
Parent: ILHDPMedicationRequest
Id: med-request-prescription
Title: "Leumit MedicationRequest Prescription"
Description: "Leumit prescription MedicationRequest profile"
* ^status = #draft

// Require both the HDP and Leumit profile URLs in meta.profile
* meta.profile 2..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains leumit-med-request-prescription 1..1
* meta.profile[leumit-med-request-prescription] = "http://fhir.leumit.co.il/StructureDefinition/med-request-prescription" (exactly)

* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription" (exactly)
* identifier.type.coding.system = $il-core-identifier-type (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)

* intent = #order

* category[il-core].coding.code = #community-other (exactly)
* category[il-core].coding.display = "Community Care/Long Term Care/Home" (exactly)
* category[il-core].coding.display 1..1

* medicationCodeableConcept.coding 1..*
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    yarpa 0..1 and
    yarpa-local 0..1 and
    snomed 0..*
* medicationCodeableConcept.coding[yarpa].system = "http://yarpa.co.il/catalog" (exactly)
* medicationCodeableConcept.coding[yarpa].system 1..1
* medicationCodeableConcept.coding[yarpa].code 1..1
* medicationCodeableConcept.coding[yarpa].display 1..1
* medicationCodeableConcept.coding[yarpa].userSelected = true
* medicationCodeableConcept.coding[yarpa-local].system = "http://fhir.leumit.co.il/cs/yarpa-catalog-local" (exactly)
* medicationCodeableConcept.coding[yarpa-local].system 1..1
* medicationCodeableConcept.coding[yarpa-local].code 1..1
* medicationCodeableConcept.coding[yarpa-local].display 1..1
* medicationCodeableConcept.coding[yarpa-local].userSelected = true
* medicationCodeableConcept.coding[snomed].system = $sct (exactly)
* medicationCodeableConcept.coding[snomed].system 1..1
* medicationCodeableConcept.coding[snomed].code 1..1
* medicationCodeableConcept.coding[snomed].display 1..1
* medicationCodeableConcept.coding[snomed].userSelected = false

* groupIdentifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription-group" (exactly)

* courseOfTherapyType.coding ^slicing.discriminator.type = #value
* courseOfTherapyType.coding ^slicing.discriminator.path = "system"
* courseOfTherapyType.coding ^slicing.rules = #open
* courseOfTherapyType.coding contains leumit 1..1
* courseOfTherapyType.coding[leumit].system = $hl7-course-of-therapy (exactly)
* courseOfTherapyType.coding[leumit].system 1..1
* courseOfTherapyType.coding[leumit].code = #acute (exactly)
* courseOfTherapyType.coding[leumit].display = "Short course (acute) therapy" (exactly)

* note.text 1..1

* dosageInstruction.additionalInstruction.coding ^slicing.discriminator.type = #value
* dosageInstruction.additionalInstruction.coding ^slicing.discriminator.path = "system"
* dosageInstruction.additionalInstruction.coding ^slicing.rules = #open
* dosageInstruction.additionalInstruction.coding contains leumit 0..*
* dosageInstruction.additionalInstruction.coding[leumit].system = $matan-code (exactly)
* dosageInstruction.additionalInstruction.coding[leumit].system 1..1
* dosageInstruction.additionalInstruction.coding[leumit].code 1..1
* dosageInstruction.additionalInstruction.coding[leumit].display 1..1

* dosageInstruction.route.coding ^slicing.discriminator.type = #value
* dosageInstruction.route.coding ^slicing.discriminator.path = "system"
* dosageInstruction.route.coding ^slicing.rules = #open
* dosageInstruction.route.coding contains
    local 0..* and
    snomed 0..*
* dosageInstruction.route.coding[local].system = "http://fhir.leumit.co.il/cs/med-route" (exactly)
* dosageInstruction.route.coding[local].system 1..1
* dosageInstruction.route.coding[local].code 1..1
* dosageInstruction.route.coding[local].display 1..1
* dosageInstruction.route.coding[snomed].system = $sct (exactly)
* dosageInstruction.route.coding[snomed].system 1..1
* dosageInstruction.route.coding[snomed].code 1..1
* dosageInstruction.route.coding[snomed].display 1..1

* dosageInstruction.method.coding ^slicing.discriminator.type = #value
* dosageInstruction.method.coding ^slicing.discriminator.path = "system"
* dosageInstruction.method.coding ^slicing.rules = #open
* dosageInstruction.method.coding contains leumit 0..*
* dosageInstruction.method.coding[leumit].system = "http://fhir.leumit.co.il/cs/med-method" (exactly)
* dosageInstruction.method.coding[leumit].system 1..1
* dosageInstruction.method.coding[leumit].code 1..1
* dosageInstruction.method.coding[leumit].display 1..1

* dosageInstruction.doseAndRate.doseQuantity.system = $ucum (exactly)
* dosageInstruction.doseAndRate.doseQuantity.extension contains $DAR named dataAbsent 0..1
* dosageInstruction.doseAndRate.doseQuantity.extension[dataAbsent].valueCode = #unknown

* insert ConformanceMetadata
