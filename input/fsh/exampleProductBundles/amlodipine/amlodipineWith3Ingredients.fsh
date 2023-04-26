// Not a PPL product. This is to provide an example of a product that contains amlodipine with other ingredients.

Instance: 015-CopaliaHCT-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Copalia HCT. Valsartan + amlodipine (besilate) + hydrochlorothiazide tablets. Not a PPL product."

* type = #collection
* entry[0].resource = CopaliaHCT-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-CopaliaHCT-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-CopaliaHCT-EE-MPD"

* entry[+].resource = CopaliaHCT-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-CopaliaHCT-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-CopaliaHCT-EE-RA"

* entry[+].resource = LOC-100010531-NovartisEuropharmLimited
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100010531-NovartisEuropharmLimited"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100010531-NovartisEuropharmLimited"

* entry[+].resource = CopaliaHCT-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-CopaliaHCT-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-CopaliaHCT-EE-APD"

* entry[+].resource = CopaliaHCT-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-CopaliaHCT-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-CopaliaHCT-EE-MID"

* entry[+].resource = CopaliaHCT-ingredient1-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-CopaliaHCT-ingredient1-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-CopaliaHCT-ingredient1-EE-I"

* entry[+].resource = CopaliaHCT-ingredient2-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-CopaliaHCT-ingredient2-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-CopaliaHCT-ingredient2-EE-I"

* entry[+].resource = CopaliaHCT-ingredient3-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-CopaliaHCT-ingredient3-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-CopaliaHCT-ingredient3-EE-I"

* entry[+].resource = CopaliaHCT-package1-EE-PPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-CopaliaHCT-package1-EE-PPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-CopaliaHCT-package1-EE-PPD"

* entry[+].resource = CopaliaHCT-package2-EE-PPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-CopaliaHCT-package2-EE-PPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-CopaliaHCT-package2-EE-PPD"


Instance: CopaliaHCT-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Title: "COPALIA HCT 160mg, 12.5mg, 10mg"
Description: "COPALIA HCT"
Usage: #inline
 
* identifier[mpid].value = "EE-100010531-3309"
* domain = $100000000004#100000000012 "Human use"
* status.coding[0] = $200000005003#200000005005 "Provisional"

* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"

* classification[0] = $who-atc#C09DX01 "valsartan, amlodipine and hydrochlorothiazide"
* classification[+] = $100000093533#100000116213 "valsartan, amlodipine and hydrochlorothiazide"

* name.productName = "COPALIA HCT 160mg / 12.5mg / 10mg õhukese polümeerikattega tabletid"
* name.part[invented].part = "COPALIA HCT"
* name.part[strength].part = "160mg / 12.5mg / 10mg"
* name.part[doseForm].part = "õhukese polümeerikattega tabletid"
* name.usage.country = $100000000002#100000000388 "Republic of Estonia"
//* name.usage.language = $100000072057#100000072172  "Estonian"
* name.usage.language = urn:ietf:bcp:47#et  "Estonian"


Instance: CopaliaHCT-ingredient1-EE-I
InstanceOf: PPLIngredient
Title: "amlodipine COPALIA HCT"
Description: "amlodipine COPALIA HCT"
Usage: #inline
* role = $100000072050#100000072072 "active"
* status = #active
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"

* substance.strength.presentationRatio.numerator = 13.87  $100000110633#100000110655 "mg"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "Tablet"

* substance.strength.referenceStrength.strengthRatio.numerator  = 10  $100000110633#100000110655 "mg"
* substance.strength.referenceStrength.strengthRatio.denominator =  1 $200000000014#200000002152 "Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"

* for[0] = Reference(CopaliaHCT-EE-MPD)
* for[+] = Reference(CopaliaHCT-EE-APD)
* for[+] = Reference(CopaliaHCT-EE-MID) 


Instance: CopaliaHCT-ingredient2-EE-I
InstanceOf: PPLIngredient
Title: "Valsartan COPALIA HCT"
Description: "Valsartan COPALIA HCT"
Usage: #inline
* role = $100000072050#100000072072 "active"
* status = #active
* substance.code.concept = $sms#100000088000 "Valsartan"

* substance.strength.presentationRatio.numerator = 160  $100000110633#100000110655 "mg"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "Tablet"

* substance.strength.referenceStrength.strengthRatio.numerator  = 160  $100000110633#100000110655 "mg"
* substance.strength.referenceStrength.strengthRatio.denominator =  1 $200000000014#200000002152 "Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000088000 "Valsartan"

* for[0] = Reference(CopaliaHCT-EE-MPD)
* for[+] = Reference(CopaliaHCT-EE-APD)
* for[+] = Reference(CopaliaHCT-EE-MID) 


Instance: CopaliaHCT-ingredient3-EE-I
InstanceOf: PPLIngredient
Title: "Hydrochlorothiazide COPALIA HCT"
Description: "Hydrochlorothiazide for COPALIA HCT"
Usage: #inline
* role = $100000072050#100000072072 "active"
* status = #active
* substance.code.concept = $sms#100000091737 "Hydrochlorothiazide"

* substance.strength.presentationRatio.numerator = 12.5  $100000110633#100000110655  "mg"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "Tablet"

* substance.strength.referenceStrength.strengthRatio.numerator  = 12.5  $100000110633#100000110655 "mg"
* substance.strength.referenceStrength.strengthRatio.denominator =  1 $200000000014#200000002152 "Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000091737 "Hydrochlorothiazide"

* for[0] = Reference(CopaliaHCT-EE-MPD)
* for[+] = Reference(CopaliaHCT-EE-APD)
* for[+] = Reference(CopaliaHCT-EE-MID)


Instance: CopaliaHCT-EE-RA
InstanceOf: PPLRegulatedAuthorization
Title: "Marketing Authorisation for COPALIA HCT"
Description: "Marketing authorisation for COPALIA HCT"
Usage: #inline

* identifier.value = "EU/1/09/575"
* subject = Reference(CopaliaHCT-EE-MPD)

* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#100000072099  "Valid" 
* statusDate = "2009-11-04"
* holder = Reference(LOC-100010531-NovartisEuropharmLimited)

Instance: CopaliaHCT-package1-EE-PPD
InstanceOf: PPLPackagedProductDefinition
Title: "COPALIA HCT 14 Tablett"
Description: "COPALIA HCT 14 tabletti"
Usage: #inline

* identifier[pcid].value = "EE-100010531-3310-1448951"
* description = "Package of 14"
* packageFor = Reference(CopaliaHCT-EE-MPD) 
* statusDate = "2009-11-04"
* containedItemQuantity = 28 $200000000014#200000002152 "Tablet"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072074 "Not marketed"
* packaging
  * quantity = 1
  * type = $100000073346#100000073498 "Box"
  * packaging.
    * type = $100000073346#100000073496 "Blister"
    * quantity = 1
    * containedItem.item.reference = Reference(CopaliaHCT-EE-MID)
    * containedItem.amount.value = 14
     
    * material[+] = $200000003199#200000003225 "PolyVinylidene Chloride" 
    * material[+] = $200000003199#200000003222 "PolyVinyl Chloride"


Instance: CopaliaHCT-package2-EE-PPD
InstanceOf: PPLPackagedProductDefinition
Title: "COPALIA HCT 30 Tablett"
Description: "COPALIA HCT Tablett"
Usage: #inline

* identifier[pcid].value = "EE-100010531-3310-1448962"
* description = "Package of 28"
* packageFor = Reference(CopaliaHCT-EE-MPD) 
* statusDate = "2009-11-04"
* containedItemQuantity = 28 $200000000014#200000002152 "Tablet"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072074 "Not marketed"
* packaging
  * quantity = 1
  * type = $100000073346#100000073498 "Box"
  * packaging.
    * type = $100000073346#100000073496 "Blister"
    * quantity = 2
    * containedItem.item.reference = Reference(CopaliaHCT-EE-MID)
    * containedItem.amount.value = 14

    * material[+] = $200000003199#200000003225 "PolyVinylidene Chloride" 
    * material[+] = $200000003199#200000003222 "PolyVinyl Chloride"

* packageFor = Reference(CopaliaHCT-EE-MPD)


Instance: CopaliaHCT-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Title: "Manufactured item COPALIA HCT 160mg, 12.5mg, 10mg"
Description: "COPALIA HCT"
Usage: #inline

* status = #active
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: LOC-100010531-NovartisEuropharmLimited
InstanceOf: PPLOrganization
Title: "Novartis Europharm Limited"
Description: "Novartis Europharm Limited MAH"
Usage: #inline
* identifier[loc].value = "LOC-100010531"
* identifier[org].value = "ORG-100007373"
* name = "Novartis Europharm Limited"

Instance: CopaliaHCT-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Title: "Administrable product COPALIA HCT"
Description: "Administrable product COPALIA HCT"
Usage: #inline
* status = #active
* formOf = Reference(CopaliaHCT-EE-MPD)
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"
