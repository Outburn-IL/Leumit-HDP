Profile: LabTestOrderSpecimen
Parent: http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-specimen-lab
Id: lab-test-order-specimen
Title: "הזמנה - שורות דגימה"
Description: "Lab Test Order specimen profile"
* ^status = #draft
* insert ConformanceMetadata

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains specimen-type 0..*
* type.coding[specimen-type].system = $LeumitSpecimenType
* type.coding[specimen-type] from $vs-leumit-specimen-type (extensible)

* collection.bodySite.coding ^slicing.discriminator.type = #value
* collection.bodySite.coding ^slicing.discriminator.path = "system"
* collection.bodySite.coding ^slicing.rules = #open
* collection.bodySite.coding contains leumit 0..*
* collection.bodySite.coding[leumit].system = $LeumitBodySite
* collection.bodySite.coding[leumit] from $vs-leumit-body-site (extensible)

* container.type.coding ^slicing.discriminator.type = #value
* container.type.coding ^slicing.discriminator.path = "system"
* container.type.coding ^slicing.rules = #open
* container.type.coding contains leumit 0..*
* container.type.coding[leumit].system = $leumit-container-type
* container.type.coding[leumit] from $vs-leumit-container-type (extensible)
