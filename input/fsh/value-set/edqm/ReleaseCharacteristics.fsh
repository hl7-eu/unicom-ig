/*Instance: release-characteristics
InstanceOf: ValueSet
Usage: #definition
Title = "EDQM Release Characteristics"
* name = "ReleaseCharacteristics"

* title = "EDQM Release Characteristics"
* status = #active
* experimental = false
* description = "ValueSet Release characteristics (dose form characteristics) from EDQM, RCA, see https://standardterms.edqm.eu/#"
* immutable = false
* compose.include.system = $edqm-standardterms




* compose.include.concept[+].code = #0044
* compose.include.concept[=].display = "Delayed"



* compose.include.concept[+].code = #0045
* compose.include.concept[=].display = "Prolonged"



* compose.include.concept[+].code = #0046
* compose.include.concept[=].display = "Modified"



* compose.include.concept[+].code = #0047
* compose.include.concept[=].display = "Conventional"



* compose.include.concept[+].code = #0048
* compose.include.concept[=].display = "Unknown"
*/