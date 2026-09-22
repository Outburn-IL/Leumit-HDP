
Instance: leumit-encounter-example-001
InstanceOf: LeumitILHDPEncounterCommunityHMOAmbulatory
Usage: #example
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #encounterInformation
* meta.security[HDP].display = "ביקורים"
* identifier.system = "http://fhir.leumit.co.il/identifier/encounter-id"
* identifier.value = "ENC-2025-001234"
* status = #finished
* class = $il-core-encounter-class#COMMUNITY-OR-HMO "Community Care/HMO setting"
* type[community-hmo-ambulatory] = http://fhir.health.gov.il/cs/il-core-encounter-type#community-hmo-ambulatory-hdp "Community/HMO ambulatory encounter (HDP encounter type)"
* type[+].coding[0] = $tamar-visit-types#1 "ביקור רגיל"
* type[=].coding[+] = $sct#390906007 "Follow-up encounter (procedure)"
* serviceType.coding[0] = $sct#224891009 "Healthcare services (qualifier value)"
* serviceType.coding[+] = $expertise-code#79 "דיאטה"
* subject = Reference(Patient/leumit-patient-001)
* participant[primary-performer].type = $v3-ParticipationType#PPRF "primary performer"
* participant[primary-performer].individual = Reference(Practitioner/leumit-practitioner-001)
* period.start = "2025-07-07T10:00:00+03:00"
* period.end = "2025-07-07T10:30:00+03:00"
* reasonCode[0] = $patient-visit-reason-moh#0 "לא רשום"
* reasonCode[+] = $patient-visit-reason-leumit#79 "דיאטה"
* reasonReference = Reference(Condition/leumit-condition-001)
* diagnosis.condition = Reference(Condition/leumit-condition-001)
* location.location = Reference(Location/leumit-location-001)
* serviceProvider = Reference(Organization/leumit-organization-001)