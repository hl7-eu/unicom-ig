Instance: 001-Agen5mg-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Agen 5mg Tablet. Estonia. Simple example of one full product as a bundle. Packages, PCIDs, differ by material."

* type = #collection
* entry[0].resource = Agen-5mg-Tablet-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/Agen-5mg-Tablet-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/MedicinalProductDefinition-Agen-5mg-Tablet-EE-MPD"

* entry[+].resource = Agen-5mg-Tablet-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/Agen-5mg-Tablet-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/RegulatedAuthorization-Agen-5mg-Tablet-EE-RA"

* entry[+].resource = LOC-100002580-Zentiva
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100002580-Zentiva"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/Organization-LOC-100002580-Zentiva"

* entry[+].resource = Agen-5mg-Tablet-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/Agen-5mg-Tablet-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/AdministrableProductDefinition-Agen-5mg-Tablet-EE-APD"

* entry[+].resource = Agen-5mg-Tablet-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/Agen-5mg-Tablet-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/ManufacturedItemDefinition-Agen-5mg-Tablet-EE-MID"

* entry[+].resource = Agen-5mg-Tablet-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/Agen-5mg-Tablet-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/Ingredient-Agen-5mg-Tablet-EE-I"

* entry[+].resource = Agen-5mg-Tablet-EE-PPD-1109887-A
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Agen-5mg-Tablet-EE-PPD-1109887-A"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/PackagedProductDefinition-Agen-5mg-Tablet-EE-PPD-1109887-A"

* entry[+].resource = Agen-5mg-Tablet-EE-PPD-1109887-B
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Agen-5mg-Tablet-EE-PPD-1109887-B"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r5/PackagedProductDefinition-Agen-5mg-Tablet-EE-PPD-1109887-B"

// See examples of the resources in file 'examplesSingleProfiles.fsh' 