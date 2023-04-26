Instance: 014-CanestenKombi-FI-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Canesten Kombi. Finland. Combination package of clotrimazole 20mg/g creme and 500mg pessary with an applicator."

* type = #collection
* entry[0].resource = CanestenKombi-FI-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-CanestenKombi-FI-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-CanestenKombi-FI-MPD"

* entry[+].resource = CanestenKombi-FI-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-CanestenKombi-FI-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-CanestenKombi-FI-RA"

* entry[+].resource = LOC-100004966-BayerOy
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100004966-BayerOy"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100004966-BayerOy"

* entry[+].resource = CanestenKombi-Cream-FI-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-CanestenKombi-Cream-FI-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-CanestenKombi-Cream-FI-APD"

* entry[+].resource = CanestenKombi-Pessary-FI-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-CanestenKombi-Pessary-FI-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-CanestenKombi-Pessary-FI-APD"

* entry[+].resource = CanestenKombi-Cream-FI-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-CanestenKombi-Cream-FI-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-CanestenKombi-Cream-FI-MID"

* entry[+].resource = CanestenKombi-Pessary-FI-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-CanestenKombi-Pessary-FI-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-CanestenKombi-Pessary-FI-MID"

* entry[+].resource = CanestenKombi-Cream-FI-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-CanestenKombi-Cream-FI-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-CanestenKombi-Cream-FI-I"

* entry[+].resource = CanestenKombi-Pessary-FI-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-CanestenKombi-Pessary-FI-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-CanestenKombi-Pessary-FI-I"

* entry[+].resource = CanestenKombi-FI-PPD-541276
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-CanestenKombi-FI-PPD-541276"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-CanestenKombi-FI-PPD-541276"

Instance: CanestenKombi-FI-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[pmsid].value = "FI00000003"
* identifier[mpid].value = "FI-100004966-18300"
* domain = $100000000004#100000000012 "Human use"
* status.coding[0] = $200000005003#200000005004 "Current"
//* status.coding[+] = $publication-status#active "Active"
* combinedPharmaceuticalDoseForm = $200000000008#100000173972 "Cream + pessary"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* classification[0] = $100000093533#100000095693 "clotrimazole"
* classification[+] = $who-atc#G01AF02 "clotrimazole"
* name.productName = "Canesten® Kombi 500 mg emätinpuikko + 10 mg/g emulsiovoide"
* name.part[invented].part = "Canesten Kombi"
* name.usage.country = $100000000002#100000000394 "Republic of Finland"
* name.usage.language = urn:ietf:bcp:47#fi "Finnish"

Instance: CanestenKombi-FI-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
Description: "Marketing Authorisation"
* identifier.value = "18300"
* subject = Reference(CanestenKombi-FI-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000394 "Republic of Finland"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2009-11-11"
* holder = Reference(LOC-100004966-BayerOy)


Instance: LOC-100004966-BayerOy
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100004966"
* identifier[org].value = "ORG-100000155"
* name = "Bayer Oy"

Instance: CanestenKombi-Cream-FI-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
Description: "Administrable/Pharmaceutical Product Definition: creme"
* status = #active
* formOf = Reference(CanestenKombi-FI-MPD)
* administrableDoseForm = $200000000004#100000073712 "Cream"
* unitOfPresentation = $200000000014#200000002156 "Tube"
* producedFrom = Reference(CanestenKombi-Cream-FI-MID)
* routeOfAdministration.code = $100000073345#100000073566 "Cutaneous use"

Instance: CanestenKombi-Pessary-FI-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
Description: "Administrable/Pharmaceutical Product Definition: pessary"
* status = #active
* formOf = Reference(CanestenKombi-FI-MPD)
* administrableDoseForm = $200000000004#100000073815 "Pessary"
* unitOfPresentation = $200000000014#200000002137 "Pessary"
* producedFrom = Reference(CanestenKombi-Pessary-FI-MID)
* routeOfAdministration.code = $100000073345#100000073639 "Vaginal use"

Instance: CanestenKombi-Cream-FI-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
Description: "Manufactured Item: cream in tube"
* status = #active
* manufacturedDoseForm = $200000000004#100000073712 "Cream"
* unitOfPresentation = $200000000014#200000002156 "Tube"

Instance: CanestenKombi-Pessary-FI-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
Description: "Manufactured Item: pessary"
* status = #active
* manufacturedDoseForm = $200000000004#100000073815 "Pessary"
* unitOfPresentation = $200000000014#200000002137 "Pessary"

Instance: CanestenKombi-Cream-FI-I
InstanceOf: PPLIngredient
Usage: #inline
Description: "Ingredient: clotrimazole, concentration strength"
* status = #active
* for[0] = Reference(CanestenKombi-FI-MPD)
* for[+] = Reference(CanestenKombi-Cream-FI-MID)
* for[+] = Reference(CanestenKombi-Cream-FI-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092074 "CLOTRIMAZOLE"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.concentrationRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.concentrationRatio.denominator = 1 $100000110633#100000110654 "gram(s)"

Instance: CanestenKombi-Pessary-FI-I
InstanceOf: PPLIngredient
Usage: #inline
Description: "Ingredient: clotrimazole, presentation strength"
* status = #active
* for[0] = Reference(CanestenKombi-FI-MPD)
* for[+] = Reference(CanestenKombi-Pessary-FI-MID)
* for[+] = Reference(CanestenKombi-Pessary-FI-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092074 "CLOTRIMAZOLE"
* substance.strength.presentationRatio.numerator = 500 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002137 "Pessary"

Instance: CanestenKombi-FI-PPD-541276
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
Description: "Packaged Product Definition: combination package of creme and pessaries"

* identifier[pcid].value = "FI-100004966-18300-541276"
* packageFor = Reference(CanestenKombi-FI-MPD)
* containedItemQuantity[0] = 1 $200000000014#200000002137 "Pessary"
* containedItemQuantity[+] = 1 $200000000014#200000002156 "Tube"
* description = "Yksi emätinpuikko läpipainopakkauksessa. Läpipainopakkauksen alaosa on pehmeää 
alumiini/polyamidi/polyvinyylikloridi -foliota ja kansi kovaa alumiinifoliota. Kansiosa on 
kuumasaumattu alaosaan. Pakkauksessa on polyetyleenistä valmistettu asetin. 20 g emulsiovoidetta 
alumiiniputkessa"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072149 "Finnish"
* marketingStatus.country = $100000000002#100000000394 "Republic of Finland"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"

* packaging.containedItem.item.concept = $100000073346#100000073491 "Applicator"

* packaging.packaging[0].type = $100000073346#100000073496 "Blister"
* packaging.packaging[=].quantity = 1
* packaging.packaging[=].containedItem.item.reference = Reference(CanestenKombi-Pessary-FI-MID)
* packaging.packaging[=].containedItem.amount.value = 1

* packaging.packaging[+].type = $100000073346#100000073561 "Tube"
* packaging.packaging[=].quantity = 1
* packaging.packaging[=].material = $200000003199#200000003200 "Aluminium"
* packaging.packaging[=].containedItem.item.reference = Reference(CanestenKombi-Cream-FI-MID)
* packaging.packaging[=].containedItem.amount = 20 $100000110633#100000110654 "gram(s)"


