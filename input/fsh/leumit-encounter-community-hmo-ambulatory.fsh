Profile: LeumitILHDPEncounterCommunityHMOAmbulatory
Parent: http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-encounter-community-hmo-ambulatory
Id: leumit-encounter-community-hmo-ambulatory
Title: "Leumit IL-HDP Encounter Community HMO Ambulatory Profile"

* meta 1..1 // HDP parent profile will be changed to 1..1, keeping this until then
// If more profiles are needed in the future, relax the below constraint
* meta.profile 1..1
* meta.profile = "http://fhir.leumit.co.il/StructureDefinition/leumit-encounter-community-hmo-ambulatory" (exactly)

* identifier.system 1..1
* identifier.value 1..1

* class.system 1..1
* class.code 1..1
* class.display 1..1

* type contains
    // snomed 1..1 and // See comment below
    tamar-sys 0..1 and
    or-sys 0..1 and
    suppliers-sys 0..1

* type[tamar-sys] ^patternCodeableConcept.coding.system = $tamar-visit-types
* type[tamar-sys].coding.system 1..1
* type[tamar-sys].coding.code 1..1

* type[or-sys] ^patternCodeableConcept.coding.system = $or-visit-types
* type[or-sys].coding.system 1..1
* type[or-sys].coding.code 1..1

* type[suppliers-sys] ^patternCodeableConcept.coding.system = $suppliers-visit-types
* type[suppliers-sys].coding.system 1..1
* type[suppliers-sys].coding.code 1..1

* serviceType.coding 2..*
* serviceType.coding ^slicing.discriminator.type = #value
* serviceType.coding ^slicing.discriminator.path = "system"
* serviceType.coding ^slicing.rules = #open
* serviceType.coding contains
    il-core 1..* and
    leumit 1..*

* serviceType.coding[il-core] from $vs-il-core-service-type (required)
* serviceType.coding[il-core].system = $sct (exactly)
* serviceType.coding[il-core].code 1..1
* serviceType.coding[il-core].display 1..1

* serviceType.coding[leumit] from $visit-expertise-vs (required)
* serviceType.coding[leumit].system = $expertise-code (exactly)
* serviceType.coding[leumit].code 1..1
* serviceType.coding[leumit].display 1..1

* subject.reference 1..1

* participant[primary-performer] 1..1

* period 1..1
* period.start 1..1
* period.end 1..1

* reasonCode 1..* // Mandatory data item but reasonCode[moh-reason-code] isnt mandatory element so as long as we provide something we are OK
* reasonCode contains leumit-reason-code 0..* // reasonCode is a mandatory data element but not mandatory in parent profile. There are some scenarios where there is no local code.

* reasonCode[leumit-reason-code].coding 1..*
* reasonCode[leumit-reason-code].coding.system 1..1
* reasonCode[leumit-reason-code] ^patternCodeableConcept.coding.system = $patient-visit-reason-leumit
* reasonCode[leumit-reason-code].coding.code 1..1
* reasonCode[leumit-reason-code].coding.display 1..1

* reasonReference.reference 1..1

* diagnosis.condition 1..1

* location.location.reference 1..1

* serviceProvider 1..1
* serviceProvider.reference 1..1

* insert ConformanceMetadata
