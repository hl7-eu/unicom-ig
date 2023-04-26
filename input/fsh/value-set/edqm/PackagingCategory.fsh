Instance: packaging-category
InstanceOf: ValueSet
Usage: #definition
Title: "EDQM Packaging Category"

* title = "EDQM Packaging Category"
* description = "ValueSet Packaging category from EDQM, PAC, see https://standardterms.edqm.eu/#"
* name = "PackagingCategory"
* status = #active
* experimental = false
* immutable = false
* compose.include.system = $edqm-standardterms


* compose.include.concept[+].code = #0001
* compose.include.concept[=].display = "Container"


* compose.include.concept[+].code = #0002
* compose.include.concept[=].display = "Closure"


* compose.include.concept[+].code = #0003
* compose.include.concept[=].display = "Administration device"
