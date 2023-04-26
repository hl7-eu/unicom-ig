Instance: 003-CefuroximStragen-1-5g-Powder-SE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Cefuroxim Stragen 1.5g Powder for solution for injection/infusion. Sweden. Strength in grams; man. item quantity unknown; transformation before administration."


* type = #collection
* entry[0].resource = CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition"

* entry[+].resource = CefuroximStragen-1-5g-Powder-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-CefuroximStragen-1-5g-Powder-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-CefuroximStragen-1-5g-Powder-SE-IS-RegulatedAuthorization"

* entry[+].resource = LOC-100001098-StragenNordic
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100001098-StragenNordic"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001098-StragenNordic"

* entry[+].resource = CefuroximStragen-1-5g-Powder-SE-IS-AdminProdDef
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-CefuroximStragen-1-5g-Powder-SE-IS-AdminProdDef"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-CefuroximStragen-1-5g-Powder-SE-IS-AdminProdDef"

* entry[+].resource = CefuroximStragen-1-5g-Powder-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-CefuroximStragen-1-5g-Powder-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-CefuroximStragen-1-5g-Powder-SE-IS-PackagedProductDefinition"

* entry[+].resource = CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition"

* entry[+].resource = CefuroximStragen-1-5g-Powder-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-CefuroximStragen-1-5g-Powder-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-CefuroximStragen-1-5g-Powder-SE-IS-Ingredient"


Instance: CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "SE-100002835-00050006"
* identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
* identifier[=].value = "615"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000116186 "Powder for solution for injection/infusion"
* indication = "Cefuroxim Stragen är avsett för behandling av nedanstående infektioner hos vuxna och barn, även  nyfödda (från födelsen). • Samhällsförvärvad pneumoni • Akut exacerbation av kronisk bronkit. • Komplicerade urinvägsinfektioner, även pyelonefrit. • Mjukdelsinfektioner: cellulit, erysipelas och sårinfektioner. • Intraabdominella infektioner. • Profylax mot infektion inför gastrointestinal (även esofageal), ortopedisk, kardiovaskulär och  gynekologisk operation (även kejsarsnitt). Vid behandling och förebyggande av infektioner då det är mycket troligt att anaeroba organismer  påträffas ska cefuroxim administreras tillsammans med ett lämpligt antianaerobt antibiotikum. Hänsyn ska tas till officiella riktlinjer om lämplig användning av antibakteriella medel. "
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000096183 "Cefuroxime"
* classification[+] = $who-atc#J01DC02 "cefuroxime"
* name.productName = "Cefuroxim Stragen 1,5 g Pulver till injektions-/infusionsvätska, lösning"
* name.part[invented].part = "Cefuroxim Stragen"
* name.part[strength].part = "1,5 g"
* name.part[doseForm].part = "Pulver till injektions-/infusionsvätska, lösning"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"


Instance: CefuroximStragen-1-5g-Powder-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "50006"
* subject = Reference(CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2014-06-11"
* holder = Reference(LOC-100001098-StragenNordic)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2014-06-11"


Instance: LOC-100001098-StragenNordic
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001098"
* name = "Stragen Nordic A/S"


Instance: CefuroximStragen-1-5g-Powder-SE-IS-AdminProdDef
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000074038 "Solution for injection/infusion"
* producedFrom = Reference(CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code.coding[0] = $100000073345#100000073600 "Intramuscular use"
* routeOfAdministration.code.coding[+] = $100000073345#100000073611 "Intravenous use"


Instance: CefuroximStragen-1-5g-Powder-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* packageFor = Reference(CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition)
* containedItemQuantity = 10 $200000000014#200000002158 "Vial"
* description = "Injektionsflaska, 10 st (10 x 1,5 g)"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003208 "Plastic"
* packaging.packaging.type = $100000073346#100000073563 "Vial"
* packaging.packaging.quantity = 10
* packaging.packaging.material = $200000003199#200000003203 "Glass"
* packaging.packaging.containedItem.item.reference = Reference(CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 1 $200000000014#200000002158 "Vial"


Instance: CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000116186 "Powder for solution for injection/infusion"
* unitOfPresentation = $200000000014#200000002158 "Vial"


Instance: CefuroximStragen-1-5g-Powder-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(CefuroximStragen-1-5g-Powder-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(CefuroximStragen-1-5g-Powder-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(CefuroximStragen-1-5g-Powder-SE-IS-AdminProdDef)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000091436 "cefuroxime sodium"
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator = #=
// * substance.strength.concentrationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
// * substance.strength.concentrationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 1.578 $100000110633#100000110654 "gram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#200000027120 "countable unit(s)" //TODO should be vial maybe
* substance.strength.referenceStrength.substance.concept = $sms#100000092667 "cefuroxime"
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator = #=
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 1.5 $100000110633#100000110654 "gram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#200000027120 "countable unit(s)"