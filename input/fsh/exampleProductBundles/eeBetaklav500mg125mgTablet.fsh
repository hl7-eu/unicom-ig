Instance: 011-Betaklav500-125-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Amoxicillin 500mg, clavulanic acid 125mg. Tablets. Estonia."

* type = #transaction
* entry[0].resource = Betaklav-500mg-125mg-EE-MPD
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicinalProductDefinition/Betaklav-500mg-125mg-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Betaklav-500mg-125mg-EE-MPD"

* entry[+].resource = Betaklav-500mg-125mg-EE-RA
* entry[=].request.method = #PUT
* entry[=].request.url = "RegulatedAuthorization/Betaklav-500mg-125mg-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Betaklav-500mg-125mg-EE-RA"

* entry[+].resource = LOC-100009540-KrkaNovoMesto
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/LOC-100009540-KrkaNovoMesto"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization/LOC-100009540-KrkaNovoMesto"

* entry[+].resource = Betaklav-500mg-125mg-EE-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/Betaklav-500mg-125mg-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Betaklav-500mg-125mg-EE-APD"

* entry[+].resource = Betaklav-500mg-125mg-EE-MID
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Betaklav-500mg-125mg-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Betaklav-500mg-125mg-EE-MID"

* entry[+].resource = Betaklav-500mg-125mg-EE-I-100000092629
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Betaklav-500mg-125mg-EE-I-100000092629"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Betaklav-500mg-125mg-EE-I-100000092629"

* entry[+].resource = Betaklav-500mg-125mg-EE-I-100000093061
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Betaklav-500mg-125mg-EE-I-100000093061"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Betaklav-500mg-125mg-EE-I-100000093061"

* entry[+].resource = Betaklav-500mg-125mg-EE-PPD-1635117
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Betaklav-500mg-125mg-EE-PPD-1635117"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Betaklav-500mg-125mg-EE-PPD-1635117"

* entry[+].resource = Betaklav-500mg-125mg-EE-PPD-1635207
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Betaklav-500mg-125mg-EE-PPD-1635207"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Betaklav-500mg-125mg-EE-PPD-1635207"

* entry[+].resource = Betaklav-500mg-125mg-EE-PPD-1635139
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Betaklav-500mg-125mg-EE-PPD-1635139"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Betaklav-500mg-125mg-EE-PPD-1635139"


Instance: Betaklav-500mg-125mg-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* identifier[pmsid].value = "0000000000006"
* identifier[mpid].value = "EE-100009540-30722"
* domain = $100000000004#100000000012 "Human use"
* status.coding[0] = $200000005003#200000005004 "Current"
//* status.coding[+] = $publication-status#active "Active"
* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
//* additionalMonitoringIndicator = $additionalMonitoringIndicator#False "False"
* classification[atc].coding[ema] = $100000093533#100000096162 "amoxicillin and beta-lactamase inhibitor"
* classification[atc].coding[who] = $who-atc#J01CR02 "amoxicillin and beta-lactamase inhibitor"
* name.productName = "Betaklav, 500 mg/125 mg õhukese polümeerikattega tabletid"
* name.namePart[invented].part = "Betaklav"
* name.namePart[strength].part = "500mg/125mg"
* name.namePart[doseForm].part = "õhukese polümeerikattega tabletid"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"


Instance: Betaklav-500mg-125mg-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "879415"
* subject = Reference(Betaklav-500mg-125mg-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2021-02-03"
* holder = Reference(LOC-100009540-KrkaNovoMesto)


Instance: LOC-100009540-KrkaNovoMesto
InstanceOf: PPLOrganization
Usage: #inline
* identifier[loc].value = "LOC-100009540"
* name = "KRKA, d.d., Novo mesto"


Instance: Betaklav-500mg-125mg-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Betaklav-500mg-125mg-EE-MPD)
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Betaklav-500mg-125mg-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Betaklav-500mg-125mg-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: Betaklav-500mg-125mg-EE-I-100000092629
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Betaklav-500mg-125mg-EE-MPD)
* for[+] = Reference(Betaklav-500mg-125mg-EE-MID)
* for[+] = Reference(Betaklav-500mg-125mg-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092629 "AMOXICILLIN TRIHYDRATE"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 573.892 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000091596 "Amoxicillin"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 500 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"


Instance: Betaklav-500mg-125mg-EE-I-100000093061
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Betaklav-500mg-125mg-EE-MPD)
* for[+] = Reference(Betaklav-500mg-125mg-EE-MID)
* for[+] = Reference(Betaklav-500mg-125mg-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000093061 "POTASSIUM CLAVULANATE"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 151.915 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000089842 "CLAVULANIC ACID"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 125 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"


Instance: Betaklav-500mg-125mg-EE-PPD-1635117
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-30722-1635117"
* packageFor = Reference(Betaklav-500mg-125mg-EE-MPD)
* containedItemQuantity = 10 $200000000014#200000002152 "tablet"
* description = "Ribapakend (Al/Al) 10 õhukese polümeerikattega tabletti karbis"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073559 "Strip"
* package.package.quantity = 1
* package.package.material = $200000003199#200000003200 "Aluminium"
* package.package.containedItem.item.reference = Reference(Betaklav-500mg-125mg-EE-MID)
* package.package.containedItem.amount.value = 10

Instance: Betaklav-500mg-125mg-EE-PPD-1635207
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-30722-1635207"
* packageFor = Reference(Betaklav-500mg-125mg-EE-MPD)
* containedItemQuantity = 500 $200000000014#200000002152 "tablet"
* description = "Ribapakend (Al/Al) 500 õhukese polümeerikattega tabletti karbis"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073559 "Strip"
* package.package.quantity = 1
* package.package.material = $200000003199#200000003200 "Aluminium"
* package.package.containedItem.item.reference = Reference(Betaklav-500mg-125mg-EE-MID)
* package.package.containedItem.amount.value = 500

Instance: Betaklav-500mg-125mg-EE-PPD-1635139
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-30722-1635139"
* packageFor = Reference(Betaklav-500mg-125mg-EE-MPD)
* containedItemQuantity = 14 $200000000014#200000002152 "tablet"
* description = "Blisterpakend (OPA/Al/PVC foil/Al foil) 14 õhukese polümeerikattega tabletti karbis"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.package.type = $100000073346#100000073496 "Blister"
* package.package.quantity = 1
* package.package.material[0] = $200000003199#200000003210 "Orientated PolyAmide"
* package.package.material[+] = $200000003199#200000003200 "Aluminium"
* package.package.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* package.package.containedItem.item.reference = Reference(Betaklav-500mg-125mg-EE-MID)
* package.package.containedItem.amount.value = 14