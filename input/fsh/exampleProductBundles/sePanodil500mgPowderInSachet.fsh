Instance: 012-Panodil-500mg-SolutionInSachet-SE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Paracetamol 500mg. Powder for oral solution in sachet. Sweden."

* type = #batch
* entry[0].resource = Panodil500mgoralsolutionsachet-SE-PLC-MPD
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicinalProductDefinition/Panodil500mgoralsolutionsachet-SE-PLC-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Panodil500mgoralsolutionsachet-SE-PLC-MPD"

* entry[+].resource = Panodil500mgoralsolutionsachet-SE-PLC-RegulatedAuthorization
* entry[=].request.method = #PUT
* entry[=].request.url = "RegulatedAuthorization/Panodil500mgoralsolutionsachet-SE-PLC-RegulatedAuthorization"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Panodil500mgoralsolutionsachet-SE-PLC-RegulatedAuthorization"

* entry[+].resource = LOC-100005555-PerrigoSverigeAB
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/LOC-100005555-PerrigoSverigeAB"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization/LOC-100005555-PerrigoSverigeAB"

* entry[+].resource = Panodil500mgoralsolutionsachet-SE-PLC-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/Panodil500mgoralsolutionsachet-SE-PLC-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Panodil500mgoralsolutionsachet-SE-PLC-APD"

* entry[+].resource = Panodil500mgoralsolutionsachet-SE-PLC-PackageProductDef
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Panodil500mgoralsolutionsachet-SE-PLC-PackageProductDef"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Panodil500mgoralsolutionsachet-SE-PLC-PackageProductDef"

* entry[+].resource = Panodil500mgoralsolutionsachet-SE-PLC-MID
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Panodil500mgoralsolutionsachet-SE-PLC-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Panodil500mgoralsolutionsachet-SE-PLC-MID"

* entry[+].resource = Panodil500mgoralsolutionsachet-SE-PLC-Ingredient
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Panodil500mgoralsolutionsachet-SE-PLC-Ingredient"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient/Panodil500mgoralsolutionsachet-SE-PLC-Ingredient"


Instance: Panodil500mgoralsolutionsachet-SE-PLC-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "SE-100004600-00012391"
* identifier[+].system = "http://ema.europa.eu/fhir/eurdId"
* identifier[=].value = "2283"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000007#100000125752 "Powder for oral solution in sachet"
* indication = "Panodil 500 mg pulver till oral lösning i dospåse används mot huvudvärk, tandvärk, feber vid förkylningssjukdomar, menstruationssmärtor, muskel- och ledvärk, som analgetikum vid reumatiska smärtor, hyperpyrexi. För vuxna och barn över 12 år."
* legalStatusOfSupply = $100000072051#100000072076 "Medicinal product not subject to medical prescription"
* classification[atc].coding[ema] = $100000093533#100000097305 "Paracetamol"
* classification[atc].coding[who] = $who-atc#N02BE01 "Paracetamol"
* name.productName = "Panodil 500 mg pulver till oral lösning i dospåse"
* name.namePart[invented].part = "Panodil"
* name.namePart[strength].part = "500 mg"
* name.namePart[doseForm].part = "pulver till oral lösning i dospåse"
* name.countryLanguage.country = $100000000002#100000000535 "Kingdom of Sweden"
* name.countryLanguage.language = $100000072057#100000072288 "Swedish"


Instance: Panodil500mgoralsolutionsachet-SE-PLC-RegulatedAuthorization
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "12391"
* subject = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000535 "Kingdom of Sweden"
* status = $100000072049#100000072099 "Valid"
* statusDate = "1994-10-28"
* holder = Reference(LOC-100005555-PerrigoSverigeAB)
//* case.type = $authorisationDateType#dateOfFirstAuthorisation "First Authorisation"
//* case.dateDateTime = "1994-10-28"


Instance: LOC-100005555-PerrigoSverigeAB
InstanceOf: PPLOrganization
Usage: #inline
Description: "Marketing Authorisation Holder / Organisation"

* identifier[loc].value = "LOC-100005555"
* name = "Perrigo Sverige AB"


Instance: Panodil500mgoralsolutionsachet-SE-PLC-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MPD)
* administrableDoseForm = $200000000004#100000073646 "Oral solution"
* producedFrom = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Panodil500mgoralsolutionsachet-SE-PLC-PackageProductDef
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* packageFor = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MPD)
* containedItemQuantity = 12 $200000000014#200000002143 "Sachet"
* description = "Dospåsar, 12 st"
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072288 "Swedish"
* marketingStatus.country = $100000000002#100000000535 "Kingdom of Sweden"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.material = $200000003199#200000003529 "Cardboard"
* package.containedItem.item.reference = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MID)
* package.containedItem.amount = 12 $200000000014#200000002143 "Sachet"


Instance: Panodil500mgoralsolutionsachet-SE-PLC-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073364 "Powder for oral solution"
* unitOfPresentation = $200000000014#200000002143 "Sachet"


Instance: Panodil500mgoralsolutionsachet-SE-PLC-Ingredient
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MPD)
* for[+] = Reference(Panodil500mgoralsolutionsachet-SE-PLC-MID)
* for[+] = Reference(Panodil500mgoralsolutionsachet-SE-PLC-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090270 "Paracetamol"
// * substance.strength.presentationRatio.numerator.* type = #batch = #=
// * substance.strength.presentationRatio.numerator.* type = #batch.extension.url = "http://ema.europa.eu/fhir/extension/* type = #batch"
// * substance.strength.presentationRatio.numerator.* type = #batch.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 500 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002143 "Sachet"
* substance.strength.referenceStrength.substance.concept = $sms#100000090270 "Paracetamol"
// * substance.strength.referenceStrength.strengthRatio.numerator.* type = #batch = #=
// * substance.strength.referenceStrength.strengthRatio.numerator.* type = #batch.extension.url = "http://ema.europa.eu/fhir/extension/* type = #batch"
// * substance.strength.referenceStrength.strengthRatio.numerator.* type = #batch.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 500 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002143 "Sachet"