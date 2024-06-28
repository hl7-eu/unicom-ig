Instance: 017-ImovaxPolio-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Imovax Polio Suspension for injection. Estonia."


* type = #collection
* entry[0].resource = ImovaxPolio-EE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-ImovaxPolio-EE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-ImovaxPolio-EE-IS-MedicinalProductDefinition"

* entry[+].resource = ImovaxPolio-EE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-ImovaxPolio-EE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-ImovaxPolio-EE-IS-RegulatedAuthorization"

* entry[+].resource = LOC-100010589-SanofiPasteur
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100010589-SanofiPasteur"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100010589-SanofiPasteur"

* entry[+].resource = ImovaxPolio-EE-IS-AdminProdDef
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-ImovaxPolio-EE-IS-AdminProdDef"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-ImovaxPolio-EE-IS-AdminProdDef"

* entry[+].resource = ImovaxPolio-EE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-ImovaxPolio-EE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-ImovaxPolio-EE-IS-PackagedProductDefinition"

* entry[+].resource = ImovaxPolio-EE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-ImovaxPolio-EE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-ImovaxPolio-EE-IS-ManufacturedItemDefinition"

* entry[+].resource = ImovaxPolio-EE-IS-Ingredient-1
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-ImovaxPolio-EE-IS-Ingredient-1"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-ImovaxPolio-EE-IS-Ingredient-1"

* entry[+].resource = ImovaxPolio-EE-IS-Ingredient-2
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-ImovaxPolio-EE-IS-Ingredient-2"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-ImovaxPolio-EE-IS-Ingredient-2"

* entry[+].resource = ImovaxPolio-EE-IS-Ingredient-3
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-ImovaxPolio-EE-IS-Ingredient-3"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-ImovaxPolio-EE-IS-Ingredient-3"

Instance: ImovaxPolio-EE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "EE-100010589-1025985"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000007#100000074050 "Suspension for injection in pre-filled pen"
* indication = "Poliomüeliidi ennetamine (esmane vaktsineerimine ja revaktsineerimine) väikelastel, lastel ja
täiskasvanutel."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000096580 "poliomyelitis, trivalent, inactivated, whole virus"
* classification[+] = $who-atc#J07BF03 "poliomyelitis, trivalent, inactivated, whole virus"
* name.productName = "Imovax Polio, süstesuspensioon süstlis"
* name.part[invented].part = "Imovax Polio"
* name.part[doseForm].part = "süstesuspensioon süstlis"
* name.usage.country = $100000000002#100000000388 "Estonia"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"


Instance: ImovaxPolio-EE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "301700"
* subject = Reference(ImovaxPolio-EE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Estonia"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2000-02-25"
* holder = Reference(LOC-100010589-SanofiPasteur)


Instance: LOC-100010589-SanofiPasteur
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100010589"
* name = "Sanofi Pasteur"


Instance: ImovaxPolio-EE-IS-AdminProdDef
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(ImovaxPolio-EE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073864 "Suspension for injection"
* producedFrom = Reference(ImovaxPolio-EE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code.coding[0] = $100000073345#100000073600 "Intramuscular use"


Instance: ImovaxPolio-EE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* packageFor = Reference(ImovaxPolio-EE-IS-MedicinalProductDefinition)
* containedItemQuantity = 1 $200000000014#200000002135 "Pen"
* description = "0,5 ml süstesuspensiooni eeltäidetud süstlas (I tüüpi klaas), mis on varustatud kolbkorgiga
(klorobutüülist) – karbis 1 tk."
* marketingStatus.country = $100000000002#100000000388 "Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073543 "Prefilled pen"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003203 "Glass"
* packaging.packaging.containedItem.item.reference = Reference(ImovaxPolio-EE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 1 $200000000014#200000002135 "Pen"


Instance: ImovaxPolio-EE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073864 "Suspension for injection"
* unitOfPresentation = $200000000014#200000002135 "Pen"


Instance: ImovaxPolio-EE-IS-Ingredient-1
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(ImovaxPolio-EE-IS-MedicinalProductDefinition)
* for[+] = Reference(ImovaxPolio-EE-IS-ManufacturedItemDefinition)
* for[+] = Reference(ImovaxPolio-EE-IS-AdminProdDef)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000089279 "Poliovirus (inactivated) type 1 (Mahoney strain)"
* substance.strength.presentationRatio.numerator = 29 $100000110633#100000110782 "D antigen unit(s)"
* substance.strength.presentationRatio.denominator = 0.5 $100000110633#100000110662 "millilitre(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000089279 "Poliovirus (inactivated) type 1 (Mahoney strain)"
* substance.strength.referenceStrength.strengthRatio.numerator = 29 $100000110633#100000110782 "D antigen unit(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 0.5 $100000110633#100000110662 "millilitre(s)"

Instance: ImovaxPolio-EE-IS-Ingredient-2
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(ImovaxPolio-EE-IS-MedicinalProductDefinition)
* for[+] = Reference(ImovaxPolio-EE-IS-ManufacturedItemDefinition)
* for[+] = Reference(ImovaxPolio-EE-IS-AdminProdDef)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000089268 "Poliovirus (inactivated) type 2 (MEF-1 strain)"
* substance.strength.presentationRatio.numerator = 7 $100000110633#100000110782 "D antigen unit(s)"
* substance.strength.presentationRatio.denominator = 0.5 $100000110633#100000110662 "millilitre(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000089268 "Poliovirus (inactivated) type 2 (MEF-1 strain)"
* substance.strength.referenceStrength.strengthRatio.numerator = 7 $100000110633#100000110782 "D antigen unit(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 0.5 $100000110633#100000110662 "millilitre(s)"

Instance: ImovaxPolio-EE-IS-Ingredient-3
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(ImovaxPolio-EE-IS-MedicinalProductDefinition)
* for[+] = Reference(ImovaxPolio-EE-IS-ManufacturedItemDefinition)
* for[+] = Reference(ImovaxPolio-EE-IS-AdminProdDef)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000089267 "Poliovirus (inactivated) type 3 (Saukett strain)"
* substance.strength.presentationRatio.numerator = 26 $100000110633#100000110782 "D antigen unit(s)"
* substance.strength.presentationRatio.denominator = 0.5 $100000110633#100000110662 "millilitre(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000089267 "Poliovirus (inactivated) type 3 (Saukett strain)"
* substance.strength.referenceStrength.strengthRatio.numerator = 26 $100000110633#100000110782 "D antigen unit(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 0.5 $100000110633#100000110662 "millilitre(s)"

