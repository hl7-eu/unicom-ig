Instance: AT-Curocef-1500-Powder
InstanceOf: Bundle
Usage: #example
Description: "Curocef 1500mg Powder for solution for injection/infusion. Austria."


* type = #collection
* entry[0].resource = Curocef-1500mg-Powder-AT-MPD
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/MedicinalProductDefinition-Curocef-1500mg-Powder-AT-MPD"

* entry[+].resource = Curocef-1500mg-Powder-AT-RA
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/RegulatedAuthorization-Curocef-1500mg-Powder-AT-RA"

* entry[+].resource = LOC-100000450
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/Organization-LOC-100000450"

* entry[+].resource = Curocef-1500mg-Powder-AT-APD
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/AdministrableProductDefinition-Curocef-1500mg-Powder-AT-APD"

* entry[+].resource = Curocef-1500mg-Powder-AT-PPD-128827002
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/PackagedProductDefinition-Curocef-1500mg-Powder-AT-PPD-128827002"

* entry[+].resource = Curocef-1500mg-Powder-AT-PPD-128827001
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/PackagedProductDefinition-Curocef-1500mg-Powder-AT-PPD-128827001"

* entry[+].resource = Curocef-1500mg-Powder-AT-MID
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/ManufacturedItemDefinition-Curocef-1500mg-Powder-AT-MID"

* entry[+].resource = Curocef-1500mg-Powder-AT-Ingredient
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/Ingredient-Curocef-1500mg-Powder-AT-Ingredient"


Instance: Curocef-1500mg-Powder-AT-MPD
InstanceOf: PPLMedicinalProduct
Usage: #inline

* identifier[mpid].value = "AT-100000450-16569"
* identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
* identifier[=].value = "2215"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000116186 "Powder for solution for injection/infusion"
* indication = "Cefuroxim Stragen är avsett för behandling av nedanstående infektioner hos vuxna och barn, även  nyfödda (från födelsen). • Samhällsförvärvad pneumoni • Akut exacerbation av kronisk bronkit. • Komplicerade urinvägsinfektioner, även pyelonefrit. • Mjukdelsinfektioner: cellulit, erysipelas och sårinfektioner. • Intraabdominella infektioner. • Profylax mot infektion inför gastrointestinal (även esofageal), ortopedisk, kardiovaskulär och  gynekologisk operation (även kejsarsnitt). Vid behandling och förebyggande av infektioner då det är mycket troligt att anaeroba organismer  påträffas ska cefuroxim administreras tillsammans med ett lämpligt antianaerobt antibiotikum. Hänsyn ska tas till officiella riktlinjer om lämplig användning av antibakteriella medel. "
* legalStatusOfSupply = $100000072051#100000072079 "Medicinal product on medical prescription for non-renewable delivery"
* classification[0] = $100000093533#100000096183 "Cefuroxime"
* classification[+] = $who-atc#J01DC02 "cefuroxime"
* name.productName = "Curocef 1500 mg Pulver zur Herstellung einer Injektions- oder Infusionslösung"
* name.part[invented].part = "Curocef"
* name.part[strength].part = "1500 mg"
* name.part[doseForm].part = "Pulver zur Herstellung einer Injektions- oder Infusionslösung"
* name.usage.country = $100000000002#100000000330 "Austria"
* name.usage.language = urn:ietf:bcp:47#ge "German" //$100000072057#100000072178


Instance: Curocef-1500mg-Powder-AT-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "16569"
* subject = Reference(Curocef-1500mg-Powder-AT-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000330 "Austria"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2020-12-12"
* holder = Reference(LOC-100000450)



Instance: LOC-100000450

InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100000450"
* identifier[loc].value = "ORG-100000546"
* name = "Sandoz GmbH"


Instance: Curocef-1500mg-Powder-AT-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Curocef-1500mg-Powder-AT-MPD)
* administrableDoseForm = $200000000004#100000074038 "Solution for injection/infusion"
* producedFrom = Reference(Curocef-1500mg-Powder-AT-MID)
* routeOfAdministration.code.coding[0] = $100000073345#100000073600 "Intramuscular use"
* routeOfAdministration.code.coding[+] = $100000073345#100000073611 "Intravenous use"
* unitOfPresentation = $200000000014#200000002164 "Ampoule"

Instance: Curocef-1500mg-Powder-AT-PPD-128827001
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "AT-100000450-16569-128827001"
* packageFor = Reference(Curocef-1500mg-Powder-AT-MPD)
* containedItemQuantity = 1 $200000000014#200000002164 "Ampoule"
* description = "Farblose Glasampulle mit einem Brombutylkautschuk-Stopfen und Aluminium-Verschluss mit aufklappbarem Kunststoffdeckel, die 1500 mg Cefuroxim (als Cefuroxim-Natrium) Pulver enthält"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072178 "German"
* marketingStatus.country = $100000000002#100000000330 "Austria"
* marketingStatus.status = $100000072052#100000072074 "Not Marketed"
* marketingStatus.dateRange.start = "1979-09-13"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073490 "Ampoule"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003204 "Glass type I"
* packaging.packaging.containedItem.item.reference = Reference(Curocef-1500mg-Powder-AT-MID)
* packaging.packaging.containedItem.amount = 1 $200000000014#200000002164 "Ampoule"
* packaging.shelfLifeStorage.periodDuration.value = 3
* packaging.shelfLifeStorage.periodDuration.unit.value = "year"
* packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
* packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073410 "Do not store above 25 °C"

Instance: Curocef-1500mg-Powder-AT-PPD-128827002
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "AT-100000450-16569-128827002"
* packageFor = Reference(Curocef-1500mg-Powder-AT-MPD)
* containedItemQuantity = 5 $200000000014#200000002164 "Ampoule"
* description = "Farblose Glasampulle mit einem Brombutylkautschuk-Stopfen und Aluminium-Verschluss mit aufklappbarem Kunststoffdeckel, die 1500 mg Cefuroxim (als Cefuroxim-Natrium) Pulver enthält"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072178 "German"
* marketingStatus.country = $100000000002#100000000330 "Austria"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* marketingStatus.dateRange.start = "1979-09-13"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073490 "Ampoule"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003204 "Glass type I"
* packaging.packaging.containedItem.item.reference = Reference(Curocef-1500mg-Powder-AT-MID)
* packaging.packaging.containedItem.amount = 5 $200000000014#200000002164 "Ampoule"
* packaging.shelfLifeStorage.periodDuration.value = 3
* packaging.shelfLifeStorage.periodDuration.unit.value = "year"
* packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
* packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073410 "Do not store above 25 °C"

Instance: Curocef-1500mg-Powder-AT-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000116186 "Powder for solution for injection/infusion"
* unitOfPresentation = $200000000014#200000002164 "Ampoule"


Instance: Curocef-1500mg-Powder-AT-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Curocef-1500mg-Powder-AT-MPD)
* for[+] = Reference(Curocef-1500mg-Powder-AT-MID)
* for[+] = Reference(Curocef-1500mg-Powder-AT-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000091436 "cefuroxime sodium"
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator = #=
// * substance.strength.concentrationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
// * substance.strength.concentrationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 1578 $100000110633#10000100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002164 "Ampoule"
* substance.strength.referenceStrength.substance.concept = $sms#100000092667 "cefuroxime"
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator = #=
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
// * substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 1500 $100000110633#10000100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002164 "Ampoule"