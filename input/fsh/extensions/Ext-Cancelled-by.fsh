Extension: ExtCancelledBy
Id: ext-cancelled-by
Title: "Ext Cancelled By"
Description: "Extension: MedicationStatement cancelled by practitioner or automatic job"
Context: MedicationStatement
* ^url = $ext-cancelled-by
* value[x] only Reference(LeumitPractitioner or Device)
* valueReference 1..1
* valueReference.type 1..1
* valueReference.display 1..1
* valueReference.identifier 0..1
* valueReference.identifier.system 1..1
* valueReference.identifier.system = "http://practitioners.health.gov.il/Practitioners" (exactly)
* valueReference.identifier.value 1..1
* insert ConformanceMetadata