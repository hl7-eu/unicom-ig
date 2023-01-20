Instance: 009-Paracetamol-Kabi10mg-1ml-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Paracetamol Kabi 10mg/ml solution for infusion. Estonia. One pharmaceutical product for three different manufactured items."

* type = #transaction
* entry[0].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicinalProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-RA
* entry[=].request.method = #PUT
* entry[=].request.url = "RegulatedAuthorization/Paracetamol-Kabi-10mg-1ml-solinj-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Paracetamol-Kabi-10mg-1ml-solinj-EE-RA"

* entry[+].resource = LOC-100008123-FreseniusKabiPolska
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/LOC-100008123-FreseniusKabiPolska"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization/LOC-100008123-FreseniusKabiPolska"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-APD"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1799905
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1799905"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1799905"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424056
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424056"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424056"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-I
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Paracetamol-Kabi-10mg-1ml-solinj-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Paracetamol-Kabi-10mg-1ml-solinj-EE-I"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424034
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424034"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424034"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1799905
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1799905"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1799905"

* entry[+].resource = Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424056
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424056"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424056"

Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[pmsid].value = "0000000030"
* identifier[mpid].value = "EE-100008123-25101"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073870 "Solution for infusion"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
//* additionalMonitoringIndicator = $additionalMonitoringIndicator#True "True"
* classification[atc].coding[ema] = $100000093533#100000097305 "Paracetamol"
* classification[atc].coding[who] = $who-atc#N02BE01 "Paracetamol"
* name.productName = "Paracetamol Kabi 10 mg/ml, infusioonilahus"
* name.namePart[invented].part = "Paracetamol Kabi"
* name.namePart[strength].part = "10 mg/ml"
* name.namePart[doseForm].part = "infusioonilahus"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"

Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "715010"
* subject = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2015-09-17"
* holder = Reference(LOC-100008123-FreseniusKabiPolska)

Instance: LOC-100008123-FreseniusKabiPolska
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100008123"
* name = "Fresenius Kabi Polska Sp. z o.o."


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD)
* administrableDoseForm = $200000000004#100000174051 "Solution for solution for infusion"
* unitOfPresentation = $200000000014#200000002158 "Vial"
* producedFrom = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034)
* routeOfAdministration.code = $100000073345#100000073611 "Intravenous use"


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073870 "Solution for infusion"
* unitOfPresentation = $200000000014#200000002158 "Vial"


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1799905
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073870 "Solution for infusion"
* unitOfPresentation = $200000000014#200000002164 "Ampoule"


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424056
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073870 "Solution for infusion"
* unitOfPresentation = $200000000014#200000002166 "Bag"


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-I
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD)
* for[+] = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034)
* for[+] = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1799905)
* for[+] = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424056)
* for[+] = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-APD)

* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090270 "Paracetamol"
//* substance.strength.concentrationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.concentrationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.concentrationRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.concentrationRatio.denominator = 1 $100000110633#100000110662 "millilitre(s)"


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424034
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100008123-25101-1424034"
* packageFor = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD)
* containedItemQuantity = 1 $200000000014#200000002158 "vial"
* description = " 50 ml ja 100 ml II tüüpi klaasist viaalid, mis on suletud bromobutüülkorgi ja alumiinium/plastik  äratõmmatava korgiga."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#200000002158 "vial"
* package.package.quantity = 1
* package.package.material = $200000003199#200000003205 "Glass type II"
* package.package.containedItem.item.reference = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424034)
* package.package.containedItem.amount = 100 $100000110633#100000110662 "millilitre(s)"


Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1799905
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* identifier[pcid].value = "EE-100008123-25101-1799905"
* packageFor = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD)
* description = "10 ml I tüüpi värvitust klaasist ampullid."
* containedItemQuantity = 10 $200000000014#200000002164 "Ampoule"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073490 "Ampoule"
* package.package.quantity = 10
* package.package.material = $200000003199#200000003204 "Glass type I"
* package.package.containedItem.item.reference = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1799905)
* package.package.containedItem.amount = 10 $100000110633#100000110662 "millilitre(s)"

Instance: Paracetamol-Kabi-10mg-1ml-solinj-EE-PPD-1424056
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* identifier[pcid].value = "EE-100008123-25101-1424056"
* packageFor = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MPD)
* containedItemQuantity = 1 $200000000014#200000002166 "Bag"
* description = "50 ml ja 100 ml plastkotid, millel on manustamisport (infusiooniport) ja lisamisport (süsteport); kotid koosnevad polüolefiinist sisekihist ja alumiiniumisisaldusega kattekihist ning sisaldavad hapnikuabsorbenti. Kotid on suletud polüisopreenist korgi ja polüpropüleenist kaanega."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073493 "Bag"
* package.package.quantity = 20
* package.package.material = $200000003199#200000003218 "Polyolefin"
* package.package.containedItem.item.reference = Reference(Paracetamol-Kabi-10mg-1ml-solinj-EE-MID-1424056)
* package.package.containedItem.amount = 100 $100000110633#100000110662 "millilitre(s)"