Instance: 013-LantusSolostar-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Lantus Solostar, insulin glargine, solution for injection in 3ml pre-filled pens."

* type = #collection
* entry[0].resource = LantusSolostar-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-LantusSolostar-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-LantusSolostar-EE-MPD"

* entry[+].resource = LantusSolostar-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-LantusSolostar-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-LantusSolostar-EE-RA"

* entry[+].resource = LOC-100000869-Sanofi-Aventis-Deutchland
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100000869-Sanofi-Aventis-Deutchland"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100000869-Sanofi-Aventis-Deutchland"

* entry[+].resource = LantusSolostar-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-LantusSolostar-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-LantusSolostar-EE-APD"

* entry[+].resource = LantusSolostar-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-LantusSolostar-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-LantusSolostar-EE-MID"

* entry[+].resource = LantusSolostar-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-LantusSolostar-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-LantusSolostar-EE-I"

* entry[+].resource = LantusSolostar-EE-PPD-1265778
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-LantusSolostar-EE-PPD-1265778"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-LantusSolostar-EE-PPD-1265778"

Instance: LantusSolostar-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "EE-100000869-3157"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000007#100000074039 "Solution for injection in pre-filled pen"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000094023 "insulin glargine"
* classification[+] = $who-atc#A10AE04  "insulin glargine"
* name.productName = "Lantus SoloStar 100 ühikut/ml süstelahus pen-süstlis"
* name.part[invented].part = "Lantus Solostar"
* name.part[strength].part = "100 ühikut/ml"
* name.part[doseForm].part = "süstelahus pen-süstlis"
* name.usage.country = $100000000002#100000000388 "Republic of Estonia"
//* name.usage.language = urn:ietf:bcp:47#et "Estonian"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"

Instance: LantusSolostar-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "EU/1/00/134"
* subject = Reference(LantusSolostar-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000390 "European Union"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2022-06-28"
* holder = Reference(LOC-100000869-Sanofi-Aventis-Deutchland)


Instance: LOC-100000869-Sanofi-Aventis-Deutchland
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100000869"
* identifier[org].value = "ORG-100001175"
* name = "Sanofi-Aventis Deutschland GmbH"

Instance: LantusSolostar-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(LantusSolostar-EE-MPD)
* administrableDoseForm = $200000000004#100000073863 "Solution for injection"
* unitOfPresentation = $200000000014#200000002135 "Pen"
* producedFrom = Reference(LantusSolostar-EE-MID)
* routeOfAdministration.code = $100000073345#100000073633 "Subcutaneous use"

Instance: LantusSolostar-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073863 "Solution for injection"
* unitOfPresentation = $200000000014#200000002135 "Pen"

Instance: LantusSolostar-EE-I
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(LantusSolostar-EE-MPD)
* for[+] = Reference(LantusSolostar-EE-MID)
* for[+] = Reference(LantusSolostar-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000085460 "Insulin glargine"
//* substance.strength.concentrationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.concentrationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.concentrationRatio.numerator = 100 $100000110633#100000110756 "unit(s)"
* substance.strength.concentrationRatio.denominator = 1 $100000110633#100000110662 "millilitre(s)"

Instance: LantusSolostar-EE-PPD-1265778
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* identifier[pcid].value = "EE-100000869-3157-1265778"
* packageFor = Reference(LantusSolostar-EE-MPD)
* containedItemQuantity = 5 $200000000014#200000002135 "Pen"
* description = "Lantus SoloStar 100 ühikut/ml süstelahus pen-süstlis. I tüüpi värvitust klaasist kolbampull musta värvi kolvi (broombutüülkumm), äärikkattega
(alumiinium) ja korgiga (broombutüülkumm või polüisopreenlaminaat ja broombutüülkumm);
sisaldab 3 ml süstelahust. Kolbampull on paigaldatud mittetäidetavasse pen-süstlisse. Nõelad ei sisaldu pakendis.
Pakendis on 5 pen-süstlit."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073543 "Pre-filled pen"
* packaging.packaging.quantity = 5
* packaging.packaging.containedItem.item.reference = Reference(LantusSolostar-EE-MID)
* packaging.packaging.containedItem.amount = 3 $100000110633#100000110662 "millilitre(s)"
