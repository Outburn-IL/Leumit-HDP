Instance: specimen-example-blood
InstanceOf: LabTestOrderSpecimen
Usage: #example
Title: "דוגמה לדגימת דם"
Description: "Example of a blood specimen for lab test order"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #laboratoryTests
* meta.security[HDP].display = "בדיקות מעבדה"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"rtl\"><p><b>דגימת דם לבדיקות מעבדה</b></p><p>מזהה דגימה: SPEC-2024-001234</p><p>סוג דגימה: סרום</p><p>מטופל: ישראל ישראלי</p><p>תאריך איסוף: 08/02/2024 08:30</p><p>מקום לקיחה: ורידי זרוע שמאל</p><p>סטטוס: זמין</p></div>"

* identifier[0].system = "http://fhir.leumit.co.il/identifier/specimen"
* identifier[0].value = "SPEC-2024-001234"

* accessionIdentifier.system = "http://fhir.leumit.co.il/identifier/specimen-accession"
* accessionIdentifier.value = "ACC-2024-005678"

* status = #available

* type.coding[specimen-type].system = $LeumitSpecimenType
* type.coding[specimen-type].code = #10
* type.coding[specimen-type].display = "סרום"

* type.coding[+].system = $sct
* type.coding[=].code = #119364003
* type.coding[=].display = "Serum specimen"

* subject = Reference(Patient/patient-example-leumit)
* subject.display = "ישראל ישראלי"

* receivedTime = "2024-02-08T08:45:00+02:00"

* collection.collectedDateTime = "2024-02-08T08:30:00+02:00"

* collection.bodySite.coding[leumit].system = $LeumitBodySite
* collection.bodySite.coding[leumit].code = #160
* collection.bodySite.coding[leumit].display = "דם"

* collection.bodySite.coding[+].system = $sct
* collection.bodySite.coding[=].code = #368209003
* collection.bodySite.coding[=].display = "Right arm"

* container.type.coding[leumit].system = $leumit-container-type
* container.type.coding[leumit].code = #TUBE-VAC
* container.type.coding[leumit].display = "צינור ואקום"

* request = Reference(ServiceRequest/servicerequest-example-leumit)
