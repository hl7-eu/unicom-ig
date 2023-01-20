Instance: 010-Clexane-60mg-0.6ml-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Clexane, enoxaparine sodium 60mg/0.6ml, 2 pre-filled syringes. Presentation strength per quantity."

* type = #transaction
* entry[0].resource = Clexane-60mg-0.6ml-solinj-EE-MPD
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicinalProductDefinition/Clexane-60mg-0.6ml-solinj-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Clexane-60mg-0.6ml-solinj-EE-MPD"

* entry[+].resource = Clexane-60mg-0.6ml-solinj-EE-RA
* entry[=].request.method = #PUT
* entry[=].request.url = "RegulatedAuthorization/Clexane-60mg-0.6ml-solinj-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Clexane-60mg-0.6ml-solinj-EE-RA"

* entry[+].resource = LOC-100001368-Sanofi-Aventis
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/LOC-100001368-Sanofi-Aventis"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization/LOC-100001368-Sanofi-Aventis"

* entry[+].resource = Clexane-60mg-0.6ml-solinj-EE-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/Clexane-60mg-0.6ml-solinj-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Clexane-60mg-0.6ml-solinj-EE-APD"

* entry[+].resource = Clexane-60mg-0.6ml-solinj-EE-MID
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Clexane-60mg-0.6ml-solinj-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Clexane-60mg-0.6ml-solinj-EE-MID"

* entry[+].resource = Clexane-60mg-0.6ml-solinj-EE-I
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Clexane-60mg-0.6ml-solinj-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Clexane-60mg-0.6ml-solinj-EE-I"

* entry[+].resource = Clexane-60mg-0.6ml-solinj-EE-PPD-1065552
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Clexane-60mg-0.6ml-solinj-EE-PPD-1065552"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Clexane-60mg-0.6ml-solinj-EE-PPD-1065552"

Instance: Clexane-60mg-0.6ml-solinj-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "EE-100001368-34217"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073863 "Solution for injection"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[atc].coding[ema] = $100000093533#100000094266 "Enoxaparin"
* classification[atc].coding[who] = $who-atc#B01AB05 "Enoxaparin"
* name.productName = "Clexane, 6000 RÜ (60 mg)/0,6 ml süstelahus süstlis"
* name.namePart[invented].part = "Clexane"
* name.namePart[strength].part = "6000 RÜ"
* name.namePart[doseForm].part = "süstelahus süstlis"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"

Instance: Clexane-60mg-0.6ml-solinj-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "940517"
* subject = Reference(Clexane-60mg-0.6ml-solinj-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2022-06-28"
* holder = Reference(LOC-100001368-Sanofi-Aventis)


Instance: LOC-100001368-Sanofi-Aventis
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001368"
* name = "Sanofi-Aventis Groupe"

Instance: Clexane-60mg-0.6ml-solinj-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Clexane-60mg-0.6ml-solinj-EE-MPD)
* administrableDoseForm = $200000000004#100000073863 "Solution for injection"
* unitOfPresentation = $200000000014#200000002150 "Syringe"
* producedFrom = Reference(Clexane-60mg-0.6ml-solinj-EE-MID)
* routeOfAdministration.code = $100000073345#100000073633 "Subcutaneous use"

Instance: Clexane-60mg-0.6ml-solinj-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073863 "Solution for injection"
* unitOfPresentation = $200000000014#200000002150 "Syringe"

Instance: Clexane-60mg-0.6ml-solinj-EE-I
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Clexane-60mg-0.6ml-solinj-EE-MPD)
* for[+] = Reference(Clexane-60mg-0.6ml-solinj-EE-MID)
* for[+] = Reference(Clexane-60mg-0.6ml-solinj-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090152 "Enoxaparin sodium"
//* substance.strength.concentrationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.concentrationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.concentrationRatio.numerator = 60 $100000110633#100000110655 "milligram(s)"
* substance.strength.concentrationRatio.denominator = 0.6 $100000110633#100000110662 "millilitre(s)"

Instance: Clexane-60mg-0.6ml-solinj-EE-PPD-1065552
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* identifier[pcid].value = "EE-100001368-34217-1065552"
* packageFor = Reference(Clexane-60mg-0.6ml-solinj-EE-MPD)
* containedItemQuantity = 2 $200000000014#200000002150 "Syringe"
* description = "CLEXANE 6000 RÜ (60 mg)/0,6 ml: süstelahus süstlites (I tüüpi klaas), mis on varustatud kummikorgiga (klorobutüül ja bromobutüül) ning süstimisnõelaga (automaatse ohutussüsteemiga ERIS või PREVENTIS või ilma). "
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073544 "Pre-filled syringe"
* package.package.quantity = 2
* package.package.material = $200000003199#200000003204 "Glass type I"
* package.package.containedItem.item.reference = Reference(Clexane-60mg-0.6ml-solinj-EE-MID)
* package.package.containedItem.amount = 0.6 $100000110633#100000110662 "millilitre(s)"