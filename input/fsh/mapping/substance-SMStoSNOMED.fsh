Instance: sms-snomed-substance-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "SMS-SNOMED CT substances"
* experimental = true
* title = "SPOR-SNOMED CT substances"
* description = "EMA SPOR SMS mapped to SNOMED CT concepts. Small example."
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-17T17:40:44.521+00:00"
* status = #draft
* contact.telecom.system = #email
* group.element[0].code = #100000085259
* group.element[=].target.code = #386864001
* group.element[=].target.relationship = #equivalent
* group.element[=].target.display = "Amlodipine"
* group.element[=].display = "Amlodipine"
* group.element[+].code = #100000090079
* group.element[=].target.code = #384976003
* group.element[=].target.relationship = #equivalent
* group.element[=].target.display = "Amlodipine besilate"
* group.element[=].display = "Amlodipine besilate"
* group.source = $sms
* group.target = $snomed
* version = "1"
* sourceScopeCanonical = "http://unicom-project.eu/fhir/ValueSet/substances-vs"

// 100000092667 Cefuroxime  372833007
// 100000091436	Cefuroxime sodium 48753004
// 100000091596	Amoxicillin 372687004
// 100000090113 Amoxicillin sodium 427483001
// 100000092629 Amoxicillin trihydrate 96068000
// 100000089842	Clavulanic acid 395939008
// 100000093061 Potassium clavulanate 395938000 Clavulanate potassium
