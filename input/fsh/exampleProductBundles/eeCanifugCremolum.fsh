Instance: 005-CanifugCremolum-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Canifug Cremolum. Estonia. Combination package of clotrimazole 10mg/g creme and six 100mg pessaries."

* type = #transaction
* entry[0].resource = CanifugCremolum-EE-MPD
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicinalProductDefinition/CanifugCremolum-EE-MPD"
* entry[+].resource = CanifugCremolum-EE-RA
* entry[=].request.method = #PUT
* entry[=].request.url = "RegulatedAuthorization/CanifugCremolum-EE-RA"
* entry[+].resource = CanifugCremolum-10mg1g-Cream-EE-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/CanifugCremolum-10mg1g-Cream-EE-APD"
* entry[+].resource = CanifugCremolum-100mg-Pessary-EE-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/CanifugCremolum-100mg-Pessary-EE-APD"
* entry[+].resource = CanifugCremolum-10mg1g-Cream-EE-MID
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/CanifugCremolum-10mg1g-Cream-EE-MID"
* entry[+].resource = CanifugCremolum-100mg-Pessary-EE-MID
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/CanifugCremolum-100mg-Pessary-EE-MID"
* entry[+].resource = CanifugCremolum-10mg1g-Cream-EE-I
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/CanifugCremolum-10mg1g-Cream-EE-I"
* entry[+].resource = CanifugCremolum-100mg-Pessary-EE-I
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/CanifugCremolum-100mg-Pessary-EE-I"
* entry[+].resource = CanifugCremolum-EE-PPD-1033692
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/CanifugCremolum-EE-PPD-1033692"