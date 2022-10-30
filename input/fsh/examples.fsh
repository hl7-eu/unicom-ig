Instance: Agen-5mg-Tablet-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #example

* identifier[mpid].value = "EE-100002580-15547"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[atc].coding[ema] = $100000093533#100000095065 "amlodipine"
* classification[atc].coding[who] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Agen, 5 mg tabletid"
* name.part[invented].part = "Agen"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "tabletid"
* name.usage.country = $100000000002#100000000388 "Republic of Estonia"
* name.usage.language = $100000072057#100000072172 "Estonian"


Instance: Agen-5mg-Tablet-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #example
* identifier.value = "418303"
* subject = Reference(Agen-5mg-Tablet-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2013-06-07"
* holder = Reference(LOC-100002580-Zentiva)
* contained[0] = LOC-100002580-Zentiva //TO DO: once the bundle examples appear, this might get confusing

Instance: LOC-100002580-Zentiva
InstanceOf: PPLOrganization
Usage: #example

* identifier[loc].value = "LOC-100002580"
* name = "Zentiva k.s."

Instance: Agen-5mg-Tablet-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #example
* status = #active
* formOf = Reference(Agen-5mg-Tablet-EE-MPD)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Agen-5mg-Tablet-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: Agen-5mg-Tablet-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #example
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: Agen-5mg-Tablet-EE-I
InstanceOf: PPLIngredient
Usage: #example
* status = #active
* for[0] = Reference(Agen-5mg-Tablet-EE-MPD)
* for[+] = Reference(Agen-5mg-Tablet-EE-MID)
* for[+] = Reference(Agen-5mg-Tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.935 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"

Instance: Agen-5mg-Tablet-EE-PPD-1109887-A
InstanceOf: PPLPackagedProductDefinition
Usage: #example
* identifier[pcid].value = "EE-100002580-15547-1109887"
* packageFor = Reference(Agen-5mg-Tablet-EE-MPD)
* containedItemQuantity = 30 $200000000014#200000002152 "tablet"
* description = "Tabletid on pakendatud PVC/PVDC/Al blistritesse (valged) või PVC/Al blistritesse (valged)."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1 // TO DO: should not be mandatory maybe
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
//* packaging.packaging.containedItem.item = Reference(Agen-5mg-Tablet-EE-MID) //TO DO: I don't get this to work. See profile as well.
//* packaging.packaging.containedItem.amount.value = 30


Instance: Agen-5mg-Tablet-EE-PPD-1109887-B
InstanceOf: PPLPackagedProductDefinition
Usage: #example
* identifier[pcid].value = "EE-100002580-15547-1109887"
* packageFor = Reference(Agen-5mg-Tablet-EE-MPD)
* containedItemQuantity = 30 $200000000014#200000002152 "tablet"
* description = "Tabletid on pakendatud PVC/PVDC/Al blistritesse (valged) või PVC/Al blistritesse (valged)."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1 // TO DO: should not be mandatory maybe
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
//* packaging.packaging.containedItem.item.reference = Reference(Agen-5mg-Tablet-EE-MID) // TO DO: fix
//* packaging.packaging.containedItem.amount.value = 30
