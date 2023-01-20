Instance: Agen-5mg-Tablet-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #example
Description: "Medicinal Product Definition: simple tablets"

* identifier[mpid].value = "EE-100002580-15547"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[atc].coding[ema] = $100000093533#100000095065 "amlodipine"
* classification[atc].coding[who] = $who-atc#C08CA01 "amlodipine"
* name.productName = "AGEN 5 mg tabletid"
* name.namePart[invented].part = "AGEN"
* name.namePart[strength].part = "5 mg"
* name.namePart[doseForm].part = "tabletid"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"


Instance: Agen-5mg-Tablet-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #example
Description: "Marketing Authorisation"

* identifier.value = "418303"
* subject = Reference(Agen-5mg-Tablet-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2013-06-07"
* holder = Reference(LOC-100002580-Zentiva)


Instance: LOC-100002580-Zentiva
InstanceOf: PPLOrganization
Usage: #example
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100002580"
* name = "Zentiva k.s."

Instance: Agen-5mg-Tablet-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #example
Description: "Administrable/Pharmaceutical Product Definition: simple tablets"
* status = #active
* formOf = Reference(Agen-5mg-Tablet-EE-MPD)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Agen-5mg-Tablet-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Agen-5mg-Tablet-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #example
Description: "Manufactured Item: simple tablet"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: Agen-5mg-Tablet-EE-I
InstanceOf: PPLIngredient
Usage: #example
Description: "Ingredient: amlodipine besilate, presentation strength; amlodipine, reference strength"

* status = #active
* for[0] = Reference(Agen-5mg-Tablet-EE-MPD)
* for[+] = Reference(Agen-5mg-Tablet-EE-MID)
* for[+] = Reference(Agen-5mg-Tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.935 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 //"Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 //"Tablet"


Instance: Agen-5mg-Tablet-EE-PPD-1109887-A
InstanceOf: PPLPackagedProductDefinition
Usage: #example
Description: "Packaged Product Definition: simple tablets"

* identifier[pcid].value = "EE-100002580-15547-1109887"
* packageFor = Reference(Agen-5mg-Tablet-EE-MPD)
* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* description = "Tabletid on pakendatud PVC/PVDC/Al blistritesse (valged)."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073496 "Blister"
* package.package.quantity = 1 // TO DO: should not be mandatory maybe
* package.package.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* package.package.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* package.package.material[+] = $200000003199#200000003200 "Aluminium"
* package.package.containedItem.item.reference = Reference(Agen-5mg-Tablet-EE-MID)
* package.package.containedItem.amount.value = 30


Instance: Agen-5mg-Tablet-EE-PPD-1109887-B
InstanceOf: PPLPackagedProductDefinition
Usage: #example
Description: "Packaged Product Definition: simple tablets"
* identifier[pcid].value = "EE-100002580-15547-1109887"
* packageFor = Reference(Agen-5mg-Tablet-EE-MPD)
* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* description = "Tabletid on pakendatud PVC/Al blistritesse (valged)."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073496 "Blister"
* package.package.quantity = 1 // TO DO: should not be mandatory maybe
* package.package.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* package.package.material[+] = $200000003199#200000003200 "Aluminium"
* package.package.containedItem.item.reference = Reference(Agen-5mg-Tablet-EE-MID)
* package.package.containedItem.amount.value = 30


Instance: Cefuroxime-MIP-1500mg-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #example
Description: "Medicinal Product Definition: powder for solution"

* identifier[pmsid].value = "EE0000002"
* identifier[mpid].value = "EE-100009199-27834"
* domain = $100000000004#100000000012 "Human use"
* status.coding[0] = $200000005003#200000005004 "Current"
//* status.coding[+] = $publication-status#active "Active"
* combinedPharmaceuticalDoseForm = $200000000004#100000116186 "Powder for solution for injection/infusion"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
//* additionalMonitoringIndicator = $additionalMonitoringIndicator#False "False"
* classification[atc].coding[ema] = $100000093533#100000096183 "Cefuroxime"
* classification[atc].coding[who] = $who-atc#J01DC02 "cefuroxime"
* name.productName = "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
* name.namePart[invented].part = "Cefuroxime MIP"
* name.namePart[strength].part = "1500 MG"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"

Instance: Cefuroxime-MIP-1500mg-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #example
Description: "Marketing Authorisation"

* identifier.value = "805813"
* subject = Reference(Cefuroxime-MIP-1500mg-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2017-12-06"
* holder = Reference(LOC-100009199-Mip)

Instance: LOC-100009199-Mip
InstanceOf: PPLOrganization
Usage: #example
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100009199"
* name = "Mip Pharma GmbH"


Instance: Cefuroxime-MIP-1500mg-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #example
Description: "Administrable/Pharmaceutical Product Definition: transformed"
* status = #active
* formOf = Reference(Cefuroxime-MIP-1500mg-EE-MPD)
* administrableDoseForm = $200000000004#100000074038 "Solution for injection/infusion"
* unitOfPresentation = $200000000014#200000002158 "Vial"
* producedFrom = Reference(Cefuroxime-MIP-1500mg-EE-MID)
* routeOfAdministration[0].code = $100000073345#100000073600 "Intramuscular use"
* routeOfAdministration[+].code = $100000073345#100000073611 "Intravenous use"
//route of administration gives an error in the qa, that it's duplicated in the MedProd, but it's not. 
//The error seems to go away, when I comment one of the routes out from here.

Instance: Cefuroxime-MIP-1500mg-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #example
Description: "Manufactured Item: powder in vial"
* status = #active
* manufacturedDoseForm = $200000000004#100000116186 "Powder for solution for injection/infusion"
* unitOfPresentation = $200000000014#200000002158 "Vial"

Instance: Cefuroxime-MIP-1500mg-EE-I
InstanceOf: Ingredient
Usage: #example
Description: "Ingredient: cefuroxime sodium, presentation strength; cefuroxime sodium, reference strength"
* status = #active
* for[0] = Reference(Cefuroxime-MIP-1500mg-EE-MPD)
* for[+] = Reference(Cefuroxime-MIP-1500mg-EE-MID)
* for[+] = Reference(Cefuroxime-MIP-1500mg-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000091436 "CEFUROXIME SODIUM"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 1578 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002158 "Vial"
* substance.strength.referenceStrength.substance.concept = $sms#100000092667 "CEFUROXIME"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 1500 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002158 "Vial"

Instance: Cefuroxime-MIP-1500mg-EE-PPD-1529940
InstanceOf: PPLPackagedProductDefinition
Usage: #example
Description: "Packaged Product Definition: powder for solution in 1 vial"

* identifier[pcid].value = "EE-100009199-27834-1529940"
* packageFor = Reference(Cefuroxime-MIP-1500mg-EE-MPD)
* containedItemQuantity = 1 $200000000014#200000002158 "vial"
* description = "I tüüpi klaasist viaal, mis on suletud klorobutüülkummist korgi ning flip-off kattega, 1 viaal"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#200000002158 "vial"
* package.package.quantity = 1
* package.package.material = $200000003199#200000003204 "Glass type I"
* package.package.containedItem.item.reference = Reference(Cefuroxime-MIP-1500mg-EE-MID)
* package.package.containedItem.amount.value = 1

Instance: Cefuroxime-MIP-1500mg-EE-PPD-1529962
InstanceOf: PPLPackagedProductDefinition
Usage: #example
Description: "Packaged Product Definition: powder for solution in 10 vials"

* packageFor = Reference(Cefuroxime-MIP-1500mg-EE-MPD)
* containedItemQuantity = 10 $200000000014#200000002158 "Vial"
* description = "I tüüpi klaasist viaal, mis on suletud klorobutüülkummist korgi ning flip-off kattega, 10 viaali"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#200000002158 "vial"
* package.package.quantity = 10
* package.package.material = $200000003199#200000003204 "Glass type I"
* package.package.containedItem.item.reference = Reference(Cefuroxime-MIP-1500mg-EE-MID)
* package.package.containedItem.amount.value = 1


Instance: CanifugCremolum-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #example
Description: "Medicinal Product Definition: combination product of creme and pessaries"

* identifier[pmsid].value = "EE00000003"
* identifier[mpid].value = "EE-100004795-10280"
* domain = $100000000004#100000000012 "Human use"
* status.coding[0] = $200000005003#200000005004 "Current"
//* status.coding[+] = $publication-status#active "Active"
* combinedPharmaceuticalDoseForm = $200000000008#100000173972 "Cream + pessary"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* classification[atc].coding[ema] = $100000093533#100000095693 "clotrimazole"
* classification[atc].coding[who] = $who-atc#G01AF02 "clotrimazole"
* name.productName = "Canifug Cremolum"
* name.namePart[invented].part = "Canifug Cremolum"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"

Instance: CanifugCremolum-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #example
Description: "Marketing Authorisation"
* identifier.value = "366201"
* subject = Reference(CanifugCremolum-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2011-10-19"
* holder = Reference(LOC-100004795-Wolff-Arzneimittel)


Instance: LOC-100004795-Wolff-Arzneimittel
InstanceOf: PPLOrganization
Usage: #example
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100004795"
* name = "Dr. August Wolff GmbH & Co. KG Arzneimittel"


Instance: CanifugCremolum-10mg1g-Cream-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #example
Description: "Administrable/Pharmaceutical Product Definition: creme"
* status = #active
* formOf = Reference(CanifugCremolum-EE-MPD)
* administrableDoseForm = $200000000004#100000073712 "Cream"
* unitOfPresentation = $200000000014#200000002156 "Tube"
* producedFrom = Reference(CanifugCremolum-10mg1g-Cream-EE-MID)
* routeOfAdministration.code = $100000073345#100000073566 "Cutaneous use"

Instance: CanifugCremolum-100mg-Pessary-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #example
Description: "Administrable/Pharmaceutical Product Definition: pessaries"
* status = #active
* formOf = Reference(CanifugCremolum-EE-MPD)
* administrableDoseForm = $200000000004#100000073815 "Pessary"
* unitOfPresentation = $200000000014#200000002137 "Pessary"
* producedFrom = Reference(CanifugCremolum-100mg-Pessary-EE-MID)
* routeOfAdministration.code = $100000073345#100000073639 "Vaginal use"

Instance: CanifugCremolum-10mg1g-Cream-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #example
Description: "Manufactured Item: cream in tube"
* status = #active
* manufacturedDoseForm = $200000000004#100000073712 "Cream"
* unitOfPresentation = $200000000014#200000002156 "Tube"

Instance: CanifugCremolum-100mg-Pessary-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #example
Description: "Manufactured Item: pessary"
* status = #active
* manufacturedDoseForm = $200000000004#100000073815 "Pessary"
* unitOfPresentation = $200000000014#200000002137 "Pessary"

Instance: CanifugCremolum-10mg1g-Cream-EE-I
InstanceOf: PPLIngredient
Usage: #example
Description: "Ingredient: clotrimazole, concentration strength"
* status = #active
* for[0] = Reference(CanifugCremolum-EE-MPD)
* for[+] = Reference(CanifugCremolum-10mg1g-Cream-EE-MID)
* for[+] = Reference(CanifugCremolum-10mg1g-Cream-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092074 "CLOTRIMAZOLE"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.concentrationRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.concentrationRatio.denominator = 1 $100000110633#100000110654 "gram(s)"

Instance: CanifugCremolum-100mg-Pessary-EE-I
InstanceOf: PPLIngredient
Usage: #example
Description: "Ingredient: clotrimazole, presentation strength"
* status = #active
* for[0] = Reference(CanifugCremolum-EE-MPD)
* for[+] = Reference(CanifugCremolum-100mg-Pessary-EE-MID)
* for[+] = Reference(CanifugCremolum-100mg-Pessary-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092074 "CLOTRIMAZOLE"
* substance.strength.presentationRatio.numerator = 100 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002137 "Pessary"

Instance: CanifugCremolum-EE-PPD-1033692
InstanceOf: PPLPackagedProductDefinition
Usage: #example
Description: "Packaged Product Definition: combination package of creme and pessaries"

* identifier[pcid].value = "EE-100004795-10280-1033692"
* packageFor = Reference(CanifugCremolum-EE-MPD)
* containedItemQuantity[0] = 6 $200000000014#200000002137 "Pessary"
* containedItemQuantity[+] = 1 $200000000014#200000002156 "Tube"
* description = "Alu/PE-fooliumist valmistatud ribapakend, mis on asetatud väliskarpi. Kreem on alumiiniumtuubis ja omakorda pappkarbis. Kombineeritud pakend sisaldab: 6 vaginaalsuposiiti ja 20 g kreemi"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package[0].type = $100000073346#100000073559 "Strip"
* package.package[=].quantity = 1
* package.package[=].material[0] = $200000003199#200000003200 "Aluminium"
* package.package[=].material[+] = $200000003199#200000003214 "PolyEthylene"
* package.package[=].containedItem.item.reference = Reference(CanifugCremolum-100mg-Pessary-EE-MID)
* package.package[=].containedItem.amount.value = 6
* package.package[+].type = $100000073346#100000073346 "Tube"
* package.package[=].quantity = 1
* package.package[=].material = $200000003199#200000003200 "Aluminium"
* package.package[=].containedItem.item.reference = Reference(CanifugCremolum-10mg1g-Cream-EE-MID)
* package.package[=].containedItem.amount = 20 $100000110633#100000110654 "gram(s)"


