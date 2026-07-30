Extension: ExtMedicationCancalledBy
Id: ext-medication-cancalled-by
Title: "Ext Medication Cancalled By"
Description: "Extension: Medication cancelled by practitioner"
Context: MedicationStatement.statusReason
* ^url = $ext-medication-cancalled-by
* url 1..1
* url = "http://fhir.leumit.co.il/StructureDefinition/ext-med-cancelled-by" (exactly)  
* value[x] only Reference(LeumitPractitioner)
* insert ConformanceMetadata
