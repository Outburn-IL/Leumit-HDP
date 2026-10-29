Extension: ExtDosageMatan
Id: dosage-matan
Title: "Ext Dosage Matan"
Description: "Extension: Local dosage administration code"
Context: Dosage
* ^url = $dosage-matan
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system = $matan-code (exactly)
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.display 0..1
* insert ConformanceMetadata