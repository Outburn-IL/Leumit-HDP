Profile: LeumitMedRequestPrescription
Parent: ILHDPMedicationRequest
Id: med-request-prescription
Title: "Leumit MedicationRequest Prescription"
Description: "Leumit prescription MedicationRequest profile"
* ^status = #draft

// Require the Leumit profile URL in meta.profile
* meta.profile 1..*
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
* medicationCodeableConcept.coding[yarpa-local].system = "http://fhir.leumit.co.il/cs/yarpa-catalog-local" (exactly)
* medicationCodeableConcept.coding[yarpa-local].system 1..1
* medicationCodeableConcept.coding[yarpa-local].code 1..1
* medicationCodeableConcept.coding[yarpa-local].display 1..1
* medicationCodeableConcept.coding[snomed].system = $sct (exactly)
* medicationCodeableConcept.coding[snomed].system 1..1
* medicationCodeableConcept.coding[snomed].code 1..1
* medicationCodeableConcept.coding[snomed].display 1..1

* groupIdentifier.system = "http://fhir.leumit.co.il/identifier/tamar-med-prescription-group" (exactly)

* courseOfTherapyType.coding.system = $hl7-course-of-therapy (exactly)
* courseOfTherapyType.coding.code = #acute (exactly)
* courseOfTherapyType.coding.display = "Short course (acute) therapy" (exactly)

* note.text 1..1

* dosageInstruction.extension contains $dosage-matan named matan-code 0..1
* dosageInstruction.extension[matan-code].url = $dosage-matan (exactly)
* dosageInstruction.extension[matan-code].valueCodeableConcept 1..1
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding 1..1
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.system 1..1
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.system = $matan-code (exactly)
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.code 1..1
* dosageInstruction.extension[matan-code].valueCodeableConcept.coding.display 0..1

* dosageInstruction.route.coding.system = $sct (exactly)
* dosageInstruction.site.coding.system = $sct (exactly)
* dosageInstruction.method.coding.system = $sct (exactly)

* insert ConformanceMetadata
