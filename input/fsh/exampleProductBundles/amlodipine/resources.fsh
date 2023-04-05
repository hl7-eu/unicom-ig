// 2 Estonian and 20 Swedish Amlodipine products 

// 1 Greek (Lodipin 10mg capsule) and 2 Estonian (Agen 5mg and 10mg tablet) amlodipine products are in numbered Bundles, see one folder up.

//ESTONIAN PRODUCTS
Instance: AMLHipres-10mg-Tablet-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Hipres amlodipine (maleate) 10mg tablets. Estonia."

* type = #collection
* entry[0].resource = Hipres-10mg-Tablet-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-Hipres-10mg-Tablet-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-Hipres-10mg-Tablet-EE-MPD"

* entry[+].resource = LOC-100009540-KrkaNovoMesto
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100009540-KrkaNovoMesto"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100009540-KrkaNovoMesto"

* entry[+].resource = Hipres-10mg-Tablet-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-Hipres-10mg-Tablet-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-Hipres-10mg-Tablet-EE-RA"

* entry[+].resource = Hipres-10mg-Tablet-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-Hipres-10mg-Tablet-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-Hipres-10mg-Tablet-EE-APD"

* entry[+].resource = Hipres-10mg-Tablet-EE-PPD-1122972
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Hipres-10mg-Tablet-EE-PPD-1122972"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Hipres-10mg-Tablet-EE-PPD-1122972"

* entry[+].resource = Hipres-10mg-Tablet-EE-PPD-1551406
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Hipres-10mg-Tablet-EE-PPD-1551406"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Hipres-10mg-Tablet-EE-PPD-1551406"

* entry[+].resource = Hipres-10mg-Tablet-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-Hipres-10mg-Tablet-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-Hipres-10mg-Tablet-EE-MID"

* entry[+].resource = Hipres-10mg-Tablet-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-Hipres-10mg-Tablet-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b-Hipres-10mg-Tablet-EE-I"


Instance: Hipres-10mg-Tablet-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* identifier[mpid].value = "EE-100009540-1289"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* indication = "Hüpertensioon. Krooniline stabiilne stenokardia. Vasospastiline (Prinzmetali) stenokardia."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Hipres 10 mg tabletid"
* name.part[invented].part = "Hipres"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "tabletid"
* name.usage.country = $100000000002#100000000388 "Republic of Estonia"
//* name.usage.language = urn:ietf:bcp:47#et "Estonian"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"


Instance: Hipres-10mg-Tablet-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "441504"
* subject = Reference(Hipres-10mg-Tablet-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2014-02-28"
* holder = Reference(LOC-100009540-KrkaNovoMesto)

//Instance: LOC-100009540-KrkaNovoMesto see in Betaklav 500mg/125mg EE


Instance: Hipres-10mg-Tablet-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Hipres-10mg-Tablet-EE-MPD)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* producedFrom = Reference(Hipres-10mg-Tablet-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Hipres-10mg-Tablet-EE-PPD-1122972
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-1289-1122972"
* packageFor = Reference(Hipres-10mg-Tablet-EE-MPD)
* containedItemQuantity = 30 $200000000014#200000002152 "tablet"
* description = "Blisterpakend (lamineeritud OPA-Al-PVC foolium, alumiiniumfoolium). 30 tabletti pakendis."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1
* packaging.packaging.material[0] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.containedItem[0].item.reference = Reference(Hipres-10mg-Tablet-EE-MID)
* packaging.packaging.containedItem[=].amount = 30 $200000000014#200000002152 "tablet"


Instance: Hipres-10mg-Tablet-EE-PPD-1551406
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-1289-1551406"
* packageFor = Reference(Hipres-10mg-Tablet-EE-MPD)
* containedItemQuantity = 60 $200000000014#200000002152 "tablet"
* description = "Blisterpakend (lamineeritud OPA-Al-PVC foolium, alumiiniumfoolium). 60 tabletti pakendis."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1
* packaging.packaging.material[0] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.containedItem[0].item.reference = Reference(Hipres-10mg-Tablet-EE-MID)
* packaging.packaging.containedItem[=].amount = 60 $200000000014#200000002152 "tablet"


Instance: Hipres-10mg-Tablet-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073664  "Tablet"
* unitOfPresentation = $200000000014#200000002152 "tablet"


Instance: Hipres-10mg-Tablet-EE-I
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Hipres-10mg-Tablet-EE-MPD)
* for[+] = Reference(Hipres-10mg-Tablet-EE-MID)
* for[+] = Reference(Hipres-10mg-Tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000089370 "Amlodipine maleate"
* substance.strength.presentationRatio.numerator = 12.96 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"



Instance: AMLHipres-5mg-Tablet-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Hipres amlodipine (maleate) 5mg tablet. Estonia."
* type = #collection
* entry[0].resource = Hipres-5mg-Tablet-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-Hipres-5mg-Tablet-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-Hipres-5mg-Tablet-EE-MPD"

* entry[+].resource = LOC-100009540-KrkaNovoMesto
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100009540-KrkaNovoMesto"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100009540-KrkaNovoMesto"

* entry[+].resource = Hipres-5mg-Tablet-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-Hipres-5mg-Tablet-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-Hipres-5mg-Tablet-EE-RA"

* entry[+].resource = Hipres-5mg-Tablet-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-Hipres-5mg-Tablet-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-Hipres-5mg-Tablet-EE-APD"

* entry[+].resource = Hipres-5mg-Tablet-EE-PPD-1122961
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Hipres-5mg-Tablet-EE-PPD-1122961"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Hipres-5mg-Tablet-EE-PPD-1122961"

* entry[+].resource = Hipres-5mg-Tablet-EE-PPD-1551383
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Hipres-5mg-Tablet-EE-PPD-1551383"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Hipres-5mg-Tablet-EE-PPD-1551383"

* entry[+].resource = Hipres-5mg-Tablet-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-Hipres-5mg-Tablet-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-Hipres-5mg-Tablet-EE-MID"

* entry[+].resource = Hipres-5mg-Tablet-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-Hipres-5mg-Tablet-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b-Hipres-5mg-Tablet-EE-I"


Instance: Hipres-5mg-Tablet-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "EE-100009540-1288"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* indication = "Hüpertensioon. Krooniline stabiilne stenokardia. Vasospastiline (Prinzmetali) stenokardia."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Hipres 5 mg tabletid"
* name.part[invented].part = "Hipres"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "tabletid"
* name.usage.country = $100000000002#100000000388 "Republic of Estonia"
////* name.usage.language = urn:ietf:bcp:47#et "Estonian"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"

Instance: Hipres-5mg-Tablet-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "439004"
* subject = Reference(Hipres-5mg-Tablet-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2014-02-28"
* holder = Reference(LOC-100009540-KrkaNovoMesto)

//Instance: LOC-100009540-KrkaNovoMesto - see Betaklav 500mg/125mg EE.

Instance: Hipres-5mg-Tablet-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Hipres-5mg-Tablet-EE-MPD)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* producedFrom = Reference(Hipres-5mg-Tablet-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Hipres-5mg-Tablet-EE-PPD-1122961
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-1288-1122961"
* packageFor = Reference(Hipres-5mg-Tablet-EE-MPD)
* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* description = "Blisterpakend (lamineeritud OPA-Al-PVC foolium, alumiiniumfoolium). 30 tabletti pakendis."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1
* packaging.packaging.material[0] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.containedItem[0].item.reference = Reference(Hipres-5mg-Tablet-EE-MID)
* packaging.packaging.containedItem[=].amount = 30 $200000000014#200000002152 "Tablet"

Instance: Hipres-5mg-Tablet-EE-PPD-1551383
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100009540-1288-1551383"
* packageFor = Reference(Hipres-5mg-Tablet-EE-MPD)
* containedItemQuantity = 60 $200000000014#200000002152 "Tablet"
* description = "Blisterpakend (lamineeritud OPA-Al-PVC foolium, alumiiniumfoolium). 60 tabletti pakendis."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1
* packaging.packaging.material[0] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.containedItem[0].item.reference = Reference(Hipres-5mg-Tablet-EE-MID)
* packaging.packaging.containedItem[=].amount = 60 $200000000014#200000002152 "tablet"


Instance: Hipres-5mg-Tablet-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073664  "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: Hipres-5mg-Tablet-EE-I
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Hipres-5mg-Tablet-EE-MPD)
* for[+] = Reference(Hipres-5mg-Tablet-EE-MID)
* for[+] = Reference(Hipres-5mg-Tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000089370 "Amlodipine maleate"
* substance.strength.presentationRatio.numerator = 6.48 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"

//SWEDISH PRODUCTS

Instance: AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablets. Sweden."
* type = #collection
* entry[0].resource = AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLaccord-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLaccord-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLaccord-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLaccord-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLaccord-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLaccord-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100007148-Accord
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100007148-Accord"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100007148-Accord"

* entry[+].resource = AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition01"

* entry[+].resource = AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition02"

* entry[+].resource = AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition"

* entry[+].resource = AMLaccord-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLaccord-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLaccord-10mg-Tablet-SE-IS-Ingredient"


Instance: AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablets. Sweden."
* type = #collection
* entry[0].resource = AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLaccord-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLaccord-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLaccord-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLaccord-5mg-Tablet-SE-IS-RegulatedAuthorization"

* entry[+].resource = LOC-100007148-Accord
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100007148-Accord"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100007148-Accord"
* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition03
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition03"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition03"
* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLaccord-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLaccord-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLaccord-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLaurobindo-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLaurobindo-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLaurobindo-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLaurobindo-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLaurobindo-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLaurobindo-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001116-Aurobindo
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001116-Aurobindo"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001116-Aurobindo"

* entry[+].resource = AMLaurobindo-10mg-Tablet-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLaurobindo-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLaurobindo-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[+].resource = AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLaurobindo-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLaurobindo-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLaurobindo-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLbluefish-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLbluefish-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLbluefish-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLbluefish-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLbluefish-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLbluefish-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001076-Bluefish
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001076-Bluefish"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001076-Bluefish"
* entry[+].resource = AMLbluefish-10mg-Tablet-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLbluefish-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLbluefish-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[+].resource = AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLbluefish-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLbluefish-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLbluefish-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLbluefish-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLbluefish-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLbluefish-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLbluefish-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001076-Bluefish
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001076-Bluefish"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001076-Bluefish"
* entry[+].resource = AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLbluefish-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLbluefish-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLbluefish-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLjubilant-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLjubilant-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLjubilant-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLjubilant-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLjubilant-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLjubilant-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100016348-JubilantPharmaceuticals
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100016348-JubilantPharmaceuticals"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100016348-JubilantPharmaceuticals"

* entry[+].resource = AMLjubilant-10mg-Tablet-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLjubilant-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLjubilant-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[+].resource = AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLjubilant-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLjubilant-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLjubilant-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLjubilant-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLjubilant-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLjubilant-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLjubilant-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLjubilant-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLjubilant-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100016348-JubilantPharmaceuticals
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100016348-JubilantPharmaceuticals"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100016348-JubilantPharmaceuticals"

* entry[+].resource = AMLjubilant-5mg-Tablet-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLjubilant-5mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLjubilant-5mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[+].resource = AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLjubilant-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLjubilant-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLjubilant-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLkrka-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLkrka-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLkrka-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLkrka-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLkrka-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLkrka-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100000551-KrkaSverige
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100000551-KrkaSverige"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100000551-KrkaSverige"
* entry[+].resource = AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLkrka-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLkrka-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLkrka-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLkrka-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLkrka-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLkrka-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLkrka-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLkrka-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLkrka-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100000551-KrkaSverige
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100000551-KrkaSverige"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100000551-KrkaSverige"

* entry[+].resource = AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLkrka-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLkrka-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLkrka-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLmedvalley-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLmedvalley-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLmedvalley-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLmedvalley-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001125-MedicalValleyInvest
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001125-MedicalValleyInvest"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001125-MedicalValleyInvest"

* entry[+].resource = AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLmedvalley-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLmedvalley-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLmedvalley-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLmedvalley-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLmedvalley-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLmedvalley-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLmedvalley-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001125-MedicalValleyInvest
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001125-MedicalValleyInvest"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001125-MedicalValleyInvest"

* entry[+].resource = AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLmedvalley-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLmedvalley-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLmedvalley-5mg-Tablet-SE-IS-Ingredient"

Instance: Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = Amlodistad-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/Amlodistad-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Amlodistad-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = Amlodistad-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/Amlodistad-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Amlodistad-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001022-StadaArzneimittel
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001022-StadaArzneimittel"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001022-StadaArzneimittel"
* entry[+].resource = Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = Amlodistad-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/Amlodistad-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Amlodistad-10mg-Tablet-SE-IS-Ingredient"

Instance: Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[+].resource = Amlodistad-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/Amlodistad-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Amlodistad-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = Amlodistad-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/Amlodistad-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Amlodistad-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001022-StadaArzneimittel
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001022-StadaArzneimittel"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001022-StadaArzneimittel"
* entry[+].resource = Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = Amlodistad-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/Amlodistad-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Amlodistad-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLsandoz-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLsandoz-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001468-SandozAS
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001468-SandozAS"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001468-SandozAS"

* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition03
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition03"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition03"
* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLsandoz-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLsandoz-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLsandoz-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLsandoz-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLsandoz-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100001468-SandozAS
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001468-SandozAS"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001468-SandozAS"
* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition03
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition03"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition03"
* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLsandoz-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLsandoz-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLsandoz-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLteva-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLteva-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLteva-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLteva-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLteva-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLteva-10mg-Tablet-SE-IS-RegulatedAuthorization"

* entry[+].resource = LOC-100001602-Teva
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001602-Teva"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001602-Teva"
* entry[+].resource = AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLteva-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLteva-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLteva-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLteva-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLteva-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLteva-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLteva-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLteva-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLteva-5mg-Tablet-SE-IS-RegulatedAuthorization"

* entry[+].resource = LOC-100001602-Teva
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100001602-Teva"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100001602-Teva"
* entry[+].resource = AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLteva-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLteva-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLteva-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLvitabalans-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLvitabalans-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLvitabalans-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLvitabalans-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100005946-VitabalansOy
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100005946-VitabalansOy"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100005946-VitabalansOy"
* entry[+].resource = AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLvitabalans-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLvitabalans-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLvitabalans-10mg-Tablet-SE-IS-Ingredient"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = AMLvitabalans-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = AMLvitabalans-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/AMLvitabalans-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/AMLvitabalans-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100005946-VitabalansOy
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100005946-VitabalansOy"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100005946-VitabalansOy"
* entry[+].resource = AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition01"
* entry[+].resource = AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition02"
* entry[+].resource = AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = AMLvitabalans-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/AMLvitabalans-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/AMLvitabalans-5mg-Tablet-SE-IS-Ingredient"

Instance: Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 10mg tablet. Sweden."
* type = #collection
* entry[0].resource = Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = Norvasc-10mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/Norvasc-10mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Norvasc-10mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = Norvasc-10mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/Norvasc-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Norvasc-10mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100032008-UpjohnEESV
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100032008-UpjohnEESV"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100032008-UpjohnEESV"
* entry[+].resource = Norvasc-10mg-Tablet-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Norvasc-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Norvasc-10mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[+].resource = Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = Norvasc-10mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/Norvasc-10mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Norvasc-10mg-Tablet-SE-IS-Ingredient"

Instance: Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition-BBDL
InstanceOf: Bundle
Usage: #example
Description: "Amlodipine (besylate) 5mg tablet. Sweden."
* type = #collection
* entry[0].resource = Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition/Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition"

* entry[+].resource = Norvasc-5mg-Tablet-SE-IS-AdministrableProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition/Norvasc-5mg-Tablet-SE-IS-AdministrableProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Norvasc-5mg-Tablet-SE-IS-AdministrableProductDefinition"

* entry[+].resource = Norvasc-5mg-Tablet-SE-IS-RegulatedAuthorization
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization/Norvasc-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Norvasc-5mg-Tablet-SE-IS-RegulatedAuthorization"
* entry[+].resource = LOC-100032008-UpjohnEESV
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization-LOC-100032008-UpjohnEESV"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100032008-UpjohnEESV"
* entry[+].resource = Norvasc-5mg-Tablet-SE-IS-PackagedProductDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition/Norvasc-5mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Norvasc-5mg-Tablet-SE-IS-PackagedProductDefinition"
* entry[+].resource = Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition/Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition"
* entry[+].resource = Norvasc-5mg-Tablet-SE-IS-Ingredient
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient/Norvasc-5mg-Tablet-SE-IS-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Norvasc-5mg-Tablet-SE-IS-Ingredient"

Instance: AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100003704-00026704"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Accord 10 mg Tablett"
* name.part[invented].part = "Amlodipin Accord"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLaccord-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "26704"
* subject = Reference(AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2008-10-10"
* holder = Reference(LOC-100007148-Accord)
////* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
////* case.dateDateTime = "2008-10-10"

Instance: LOC-100007148-Accord
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100007148"
* name = "Accord Healthcare B.V."

Instance: AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 14 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 98 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 7
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 14 $200000000014#200000002152 "Tablet"

Instance: AMLaccord-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 500 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 500 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 2
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 500 $200000000014#200000002152 "Tablet"

Instance: AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-09-30T11:56:59.638+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLaccord-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLaccord-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLaccord-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLaccord-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLaccord-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
////* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.9 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 //"Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 //"Tablet"

Instance: AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100003704-00026703"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Accord 5 mg Tablett"
* name.part[invented].part = "Amlodipin Accord"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLaccord-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-09-30T11:42:22.792+00:00"
* identifier.value = "26703"
* subject = Reference(AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2008-10-10"
* holder = Reference(LOC-100007148-Accord)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2008-10-10"

Instance: AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 28 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 28 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 2
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 14 $200000000014#200000002152 "Tablet"

Instance: AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 98 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 98 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 7
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 14 $200000000014#200000002152 "Tablet"

Instance: AMLaccord-5mg-Tablet-SE-IS-PackagedProductDefinition03
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 500 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 500 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 2
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 500 $200000000014#200000002152 "Tablet"

Instance: AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-09-30T11:42:23.017+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLaccord-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLaccord-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* meta.lastUpdated = "2022-09-30T11:42:23.059+00:00"
* status = #active
* for[0] = Reference(AMLaccord-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLaccord-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLaccord-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
////* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.95 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 //"Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 //"Tablet"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100003636-00028120"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni  Kronisk stabil anginga pectoris  Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Aurobindo 10 mg Tablett"
* name.part[invented].part = "Amlodipin Aurobindo"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "28120"
* subject = Reference(AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2009-11-20"
* holder = Reference(LOC-100001116-Aurobindo)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2009-11-20"

Instance: LOC-100001116-Aurobindo
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001116"
* name = "Aurobindo Pharma (Malta) Limited"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 10 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-09-30T12:01:35.714+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLaurobindo-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* meta.lastUpdated = "2022-09-30T12:01:35.725+00:00"
* status = #active
* for[0] = Reference(AMLaurobindo-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLaurobindo-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLaurobindo-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
////* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.87 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100002566-00023988"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni.  Kronisk stabil angina pectoris. Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Bluefish 10 mg Tablett"
* name.part[invented].part = "Amlodipin Bluefish"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLbluefish-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "23988"
* subject = Reference(AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2007-10-26"
* holder = Reference(LOC-100001076-Bluefish)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2007-10-26"

Instance: LOC-100001076-Bluefish
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001076"
* name = "Bluefish Pharmaceuticals AB"

Instance: AMLbluefish-10mg-Tablet-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLbluefish-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLbluefish-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLbluefish-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLbluefish-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLbluefish-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.87 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100002566-00023987"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni.  Kronisk stabil angina pectoris. Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Bluefish 5 mg Tablett"
* name.part[invented].part = "Amlodipin Bluefish"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLbluefish-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T09:53:07.813+00:00"
* identifier.value = "23987"
* subject = Reference(AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2007-10-26"
* holder = Reference(LOC-100001076-Bluefish)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2007-10-26"

Instance: AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLbluefish-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 3
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLbluefish-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLbluefish-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* meta.lastUpdated = "2022-10-08T09:53:07.883+00:00"
* status = #active
* for[0] = Reference(AMLbluefish-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLbluefish-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLbluefish-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.935 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:48:00.764+00:00"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100000435-00021305"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Jubilant 10 mg Tablett"
* name.part[invented].part = "Amlodipin Jubilant"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLjubilant-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:48:00.792+00:00"
* identifier.value = "21305"
* subject = Reference(AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2005-10-07"
* holder = Reference(LOC-100016348-JubilantPharmaceuticals)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2005-10-07"

Instance: LOC-100016348-JubilantPharmaceuticals
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100016348"
* name = "Jubilant Pharmaceuticals nv"

Instance: AMLjubilant-10mg-Tablet-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073410 "Do not store above 25 °C"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003208 "Plastic"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLjubilant-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLjubilant-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(AMLjubilant-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLjubilant-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLjubilant-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.9 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100000435-00021304"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Jubilant 5 mg Tablett"
* name.part[invented].part = "Amlodipin Jubilant"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLjubilant-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:10:15.203+00:00"
* identifier.value = "21304"
* subject = Reference(AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2005-10-07"
* holder = Reference(LOC-100016348-JubilantPharmaceuticals)

Instance: AMLjubilant-5mg-Tablet-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073410 "Do not store above 25 °C"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003208 "Plastic"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLjubilant-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLjubilant-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLjubilant-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLjubilant-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLjubilant-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
////* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.935 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 //"Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
////* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 //"Tablet"

Instance: AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* meta.lastUpdated = "2022-09-21T16:52:47.075+00:00"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100002602-00023829"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk, stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Krka 10 mg Tablett"
* name.part[invented].part = "Amlodipin Krka"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLkrka-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-09-21T16:52:48.669+00:00"
* identifier.value = "23829"
* subject = Reference(AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2006-12-15"
* holder = Reference(LOC-100000551-KrkaSverige)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2006-12-15"

Instance: LOC-100000551-KrkaSverige
InstanceOf: PPLOrganization
Usage: #example
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100000551"
* name = "KRKA Sverige AB"

Instance: AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.containedItem.item.reference = Reference(AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLkrka-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 3
* packaging.packaging.material[0] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.containedItem.item.reference = Reference(AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-09-21T16:52:49.167+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLkrka-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLkrka-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* meta.lastUpdated = "2022-09-21T16:52:49.31+00:00"
* status = #active
* for[0] = Reference(AMLkrka-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLkrka-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLkrka-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.88 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:50:51.604+00:00"
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100002602-00023828"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk, stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Krka 5 mg Tablett"
* name.part[invented].part = "Amlodipin Krka"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLkrka-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:50:51.625+00:00"
* identifier.value = "23828"
* subject = Reference(AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2006-12-15"
* holder = Reference(LOC-100000551-KrkaSverige)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2006-12-15"

Instance: AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.containedItem.item.reference = Reference(AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLkrka-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:50:51.691+00:00"
* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 3
* packaging.packaging.material[0] = $200000003199#200000003210 "Orientated PolyAmide"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.containedItem.item.reference = Reference(AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:50:51.705+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: AMLkrka-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLkrka-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:50:51.717+00:00"
* status = #active
* for[0] = Reference(AMLkrka-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLkrka-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLkrka-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.94 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100004388-00057542"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Medical Valley 10 mg Tablett"
* name.part[invented].part = "Amlodipin Medical Valley"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLmedvalley-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:58:35.686+00:00"
* identifier.value = "57542"
* subject = Reference(AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2019-03-29"
* holder = Reference(LOC-100001125-MedicalValleyInvest)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2019-03-29"


Instance: AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073411 "Do not store above 30 °C"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLmedvalley-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 105 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 105 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073411 "Do not store above 30 °C"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 105 $200000000014#200000002152 "Tablet"

Instance: AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: AMLmedvalley-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLmedvalley-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:58:35.76+00:00"
* status = #active
* for[0] = Reference(AMLmedvalley-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLmedvalley-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLmedvalley-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.88 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100004388-00057541"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil angina pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Medical Valley 5 mg Tablett"
* name.part[invented].part = "Amlodipin Medical Valley"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:56:09.381+00:00"
* identifier.value = "57541"
* subject = Reference(AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2019-03-29"
* holder = Reference(LOC-100001125-MedicalValleyInvest)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2019-03-29"

Instance: LOC-100001125-MedicalValleyInvest
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001125"
* name = "Medical Valley Invest AB"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073411 "Do not store above 30 °C"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 105 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 105 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073411 "Do not store above 30 °C"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 105 $200000000014#200000002152 "Tablet"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-10-08T10:56:09.541+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLmedvalley-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLmedvalley-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLmedvalley-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLmedvalley-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.935 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100000843-00050372"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "• Hypertoni • Kronisk stabil anginga pectoris • Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodistad 10 mg Tablett"
* name.part[invented].part = "Amlodistad"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: Amlodistad-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T12:07:00.553+00:00"
* identifier.value = "50372"
* subject = Reference(Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2015-01-22"
* holder = Reference(LOC-100001022-StadaArzneimittel)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2015-01-22"

Instance: LOC-100001022-StadaArzneimittel
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001022-StadaArzneimittel"
* name = "STADA Arzneimittel AG"

Instance: Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003214 "PolyEthylene"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: Amlodistad-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 3
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003214 "PolyEthylene"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: Amlodistad-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: Amlodistad-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(Amlodistad-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(Amlodistad-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(Amlodistad-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.88 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100000843-00050371"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "• Hypertoni • Kronisk stabil anginga pectoris • Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodistad 5 mg Tablett"
* name.part[invented].part = "Amlodistad"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: Amlodistad-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "50371"
* subject = Reference(Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2015-01-22"
* holder = Reference(LOC-100001022-StadaArzneimittel)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2015-01-22"

Instance: Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 10 $200000000014#200000002152 "Tablet"
* packageFor = Reference(Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003214 "PolyEthylene"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: Amlodistad-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 3
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003214 "PolyEthylene"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: Amlodistad-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Amlodistad-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Amlodistad-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(Amlodistad-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(Amlodistad-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.94 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100000848-00023888"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni. Kronisk stabil angina pectoris. Vasospastisk (Prinzmetals) angina."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Sandoz 10 mg Tablett"
* name.part[invented].part = "Amlodipin Sandoz"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLsandoz-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* meta.lastUpdated = "2022-10-08T11:11:06.591+00:00"
* identifier.value = "23888"
* subject = Reference(AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2007-04-20"
* holder = Reference(LOC-100001468-SandozAS)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2007-04-20"

Instance: LOC-100001468-SandozAS
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001468"
* name = "Sandoz A/S"

Instance: AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 100 $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 105 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 105 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 105 $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-10mg-Tablet-SE-IS-PackagedProductDefinition03
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 250 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 250 tabletter (dosdispensering)"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 250 $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: AMLsandoz-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLsandoz-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(AMLsandoz-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLsandoz-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLsandoz-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.87 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline
* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100000848-00023886"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni. Kronisk stabil angina pectoris. Vasospastisk (Prinzmetals) angina."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Sandoz 5 mg Tablett"
* name.part[invented].part = "Amlodipin Sandoz"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLsandoz-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "23886"
* subject = Reference(AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2007-04-20"
* holder = Reference(LOC-100001468-SandozAS)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2007-04-20"

Instance: AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 100 $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 105 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 105 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 105 $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-5mg-Tablet-SE-IS-PackagedProductDefinition03
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 250 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 250 tabletter (dosdispensering)"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 3
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 250 $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLsandoz-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLsandoz-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(AMLsandoz-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLsandoz-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLsandoz-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.94 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100001594-00026392"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni. Kronisk stabil angina pectoris. Vasospastisk (Prinzmetals) angina."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Teva 10 mg Tablett"
* name.part[invented].part = "Amlodipin Teva"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLteva-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "26392"
* subject = Reference(AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2008-07-18"
* holder = Reference(LOC-100001602-Teva)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2008-07-18"

Instance: LOC-100001602-Teva
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100001602"
* name = "Teva Sweden AB"

Instance: AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073410 "Do not store above 25 °C"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073427 "in order to protect from moisture"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLteva-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 250 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 250 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage[0].type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage[=].periodDuration.value = 2
// * packaging.shelfLifeStorage[=].periodDuration.unit = "years"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[0] = $100000073344#100000073410 "Do not store above 25 °C"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073427 "in order to protect from moisture"
// * packaging.shelfLifeStorage[+].type = $100000073343#100000073404 "Shelf life after first opening the immediate packaging"
// * packaging.shelfLifeStorage[=].periodDuration.value = 4
// * packaging.shelfLifeStorage[=].periodDuration.unit = "months"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[0] = $100000073344#100000073410 "Do not store above 25 °C"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073427 "in order to protect from moisture"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 250 $200000000014#200000002152 "Tablet"

Instance: AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLteva-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: AMLteva-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLteva-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLteva-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLteva-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.888 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100001594-00026391"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni. Kronisk stabil angina pectoris. Vasospastisk (Prinzmetals) angina."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipin Teva 5 mg Tablett"
* name.part[invented].part = "Amlodipin Teva"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLteva-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "26391"
* subject = Reference(AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2008-07-18"
* holder = Reference(LOC-100001602-Teva)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2008-07-18"

Instance: AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073410 "Do not store above 25 °C"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073427 "in order to protect from moisture"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 10
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 10 $200000000014#200000002152 "Tablet"

Instance: AMLteva-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* containedItemQuantity = 250 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Burk, 250 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage[0].type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage[=].periodDuration.value = 2
// * packaging.shelfLifeStorage[=].periodDuration.unit = "years"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[0] = $100000073344#100000073410 "Do not store above 25 °C"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073427 "in order to protect from moisture"
// * packaging.shelfLifeStorage[+].type = $100000073343#100000073404 "Shelf life after first opening the immediate packaging"
// * packaging.shelfLifeStorage[=].periodDuration.value = 4
// * packaging.shelfLifeStorage[=].periodDuration.unit = "months"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[0] = $100000073344#100000073410 "Do not store above 25 °C"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073421 "Store in the original package"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
// * packaging.shelfLifeStorage[=].specialPrecautionsForStorage[+] = $100000073344#100000073427 "in order to protect from moisture"
* packaging.packaging.type = $100000073346#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003215 "High Density PolyEthylene"
* packaging.packaging.containedItem.item.reference = Reference(AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 250 $200000000014#200000002152 "Tablet"

Instance: AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLteva-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLteva-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLteva-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLteva-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLteva-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.944 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100002026-00043521"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "• Hypertoni. • Kronisk stabil angina pectoris.  • Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipine Vitabalans 10 mg Tablett"
* name.part[invented].part = "Amlodipine Vitabalans"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLvitabalans-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "43521"
* subject = Reference(AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2011-06-23"
* holder = Reference(LOC-100005946-VitabalansOy)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2011-06-23"

Instance: LOC-100005946-VitabalansOy
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100005946"
* name = "Vitabalans Oy"

Instance: AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 4
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 25 $200000000014#200000002152 "Tablet"

Instance: AMLvitabalans-10mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 30 $200000000014#200000002152 "Tablet"

Instance: AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


Instance: AMLvitabalans-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: AMLvitabalans-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLvitabalans-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLvitabalans-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLvitabalans-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.88 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100002026-00043520"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "• Hypertoni. • Kronisk stabil angina pectoris.  • Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlodipine Vitabalans 5 mg Tablett"
* name.part[invented].part = "Amlodipine Vitabalans"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "43520"
* subject = Reference(AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2011-06-23"
* holder = Reference(LOC-100005946-VitabalansOy)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "2011-06-23"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition01
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 100 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 100 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 4
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 25 $200000000014#200000002152 "Tablet"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-PackagedProductDefinition02
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 30 $200000000014#200000002152 "Tablet"
* packageFor = Reference(AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 30 tabletter"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 5
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[0] = $100000073344#100000073423 "Keep the container in the outer carton"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage[+] = $100000073344#100000073430 "Protect from light"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 1
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 30 $200000000014#200000002152 "Tablet"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* meta.lastUpdated = "2022-10-08T11:37:07.068+00:00"
* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: AMLvitabalans-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(AMLvitabalans-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(AMLvitabalans-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(AMLvitabalans-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.94 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100023206-00011288"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil anginga pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Norvasc® 10 mg Tablett"
* name.part[invented].part = "Norvasc®"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: Norvasc-10mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "11288"
* subject = Reference(Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "1991-01-18"
* holder = Reference(LOC-100032008-UpjohnEESV)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "1991-01-18"

Instance: LOC-100032008-UpjohnEESV
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100032008"
* name = "Upjohn EESV"

Instance: Norvasc-10mg-Tablet-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 98 $200000000014#200000002152 "Tablet"
* packageFor = Reference(Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 98 tabletter (kalenderförpackning)"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 4
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073410 "Do not store above 25 °C"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 7
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 14 $200000000014#200000002152 "Tablet"

Instance: Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: Norvasc-10mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Norvasc-10mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(Norvasc-10mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(Norvasc-10mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(Norvasc-10mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.889 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"

Instance: Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* combinedPharmaceuticalDoseForm = $200000000004#100000073664 "Tablet"
* identifier[mpid].value = "SE-100023206-00011287"
// * identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
// * identifier[=].value = "174"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* indication = "Hypertoni Kronisk stabil anginga pectoris Vasospastisk (Prinzmetals) angina"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Norvasc® 5 mg Tablett"
* name.part[invented].part = "Norvasc®"
* name.part[strength].part = "5 mg"
* name.part[doseForm].part = "Tablett"
* name.usage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.usage.language = urn:ietf:bcp:47#sv "Swedish"

Instance: Norvasc-5mg-Tablet-SE-IS-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "11287"
* subject = Reference(Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "1991-01-18"
* holder = Reference(LOC-100032008-UpjohnEESV)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "1991-01-18"

Instance: Norvasc-5mg-Tablet-SE-IS-PackagedProductDefinition
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* containedItemQuantity = 98 $200000000014#200000002152 "Tablet"
* packageFor = Reference(Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* description = "Blister, 98 tabletter (kalenderförpackning)"
// * description.extension.url = "http://ema.europa.eu/fhir/extension/language"
// * description.extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
// * packaging.shelfLifeStorage.type = $100000073343#100000073403 "Shelf life of the medicinal product as packaged for sale"
// * packaging.shelfLifeStorage.periodDuration.value = 4
// * packaging.shelfLifeStorage.periodDuration.unit = "years"
// * packaging.shelfLifeStorage.specialPrecautionsForStorage = $100000073344#100000073410 "Do not store above 25 °C"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 7
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* packaging.packaging.containedItem.amount = 14 $200000000014#200000002152 "Tablet"

Instance: Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: Norvasc-5mg-Tablet-SE-IS-AdministrableProductDefinition
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* administrableDoseForm = $200000000004#100000073664 "Tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: Norvasc-5mg-Tablet-SE-IS-Ingredient
InstanceOf: PPLIngredient
Usage: #inline

* status = #active
* for[0] = Reference(Norvasc-5mg-Tablet-SE-IS-MedicinalProductDefinition)
* for[+] = Reference(Norvasc-5mg-Tablet-SE-IS-ManufacturedItemDefinition)
* for[+] = Reference(Norvasc-5mg-Tablet-SE-IS-AdministrableProductDefinition)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 6.944 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $100000110633#100000110756 "unit(s)"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 5 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $100000110633#100000110756 "unit(s)"