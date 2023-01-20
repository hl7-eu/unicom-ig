Instance: 008-Jangee-0.03mg-3mg-Film-coated-tablet-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Jangee ethinylestradiol 0.03mg, drosperinone 3mg. Estonia. Without placebo pills."
* type = #batch
* entry[0].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicinalProductDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD"

* entry[+].resource = LOC-100005719-ExeltisBalticsUAB
* entry[=].request.method = #PUT
* entry[=].request.url = "LOC-100005719-ExeltisBalticsUAB"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization/LOC-100005719-ExeltisBalticsUAB"

* entry[+].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-RA
* entry[=].request.method = #PUT
* entry[=].request.url = "RegulatedAuthorization/Jangee-0.03mg-3mg-Film-coated-tablet-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization/Jangee-0.03mg-3mg-Film-coated-tablet-EE-RA"

* entry[+].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-APD
* entry[=].request.method = #PUT
* entry[=].request.url = "AdministrableProductDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-APD"

* entry[+].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-PPD
* entry[=].request.method = #PUT
* entry[=].request.url = "PackagedProductDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-PPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-PPD"

* entry[+].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID
* entry[=].request.method = #PUT
* entry[=].request.url = "ManufacturedItemDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition/Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID"

* entry[+].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-01
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-01"

* entry[+].resource = Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-02
* entry[=].request.method = #PUT
* entry[=].request.url = "Ingredient/Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-02"


Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "EE-100005719-2604"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
* indication = "Raseduse vältimine. Jangee 0,03 mg/3 mg väljakirjutamisel tuleb võtta arvesse naisel käesoleval hetkel esinevaid individuaalseid riskifaktoreid, eriti venoosse trombemboolia (VTE) riskifaktoreid ning VTE riski selle ravimiga, võrreldes teiste kombineeritud hormonaalsete kontratseptiividega.."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[atc].coding[ema] = $100000093533#100000095785 "G03AA12"
* name.productName = "Jangee 0.03 mg/3 mg, õhukese polümeerikattega tabletid"
* name.namePart[invented].part = "Jangee"
* name.namePart[strength].part = "0.03 mg/3 mg"
* name.namePart[doseForm].part = "Õhukese polümeerikattega tabletid"
* name.countryLanguage.country = $100000000002#100000000388 "Republic of Estonia"
* name.countryLanguage.language = $100000072057#100000072172 "Estonian"

Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "650609"
* subject = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Renewed/Varied"
* statusDate = "2016-09-14"
* holder = Reference(LOC-100005719-ExeltisBalticsUAB)

// Organisation LOC-100005719-ExeltisBalticsUAB can be found in the other Jangee product

Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD)
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* producedFrom = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-PPD
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100005719-2604-1331053"

* packageFor = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD)
* containedItemQuantity = 21 $200000000014#200000002152 "tablet"
* description = "Alumiiniumfooliumiga kaetud PVC/PVDC blistrid. Pakendi suurus: 1 x 21 õhukese polümeerikattega tabletti."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* package.type = $100000073346#100000073498 "Box"
* package.quantity = 1
* package.package.type = $100000073346#100000073498 "Box"
* package.package.quantity = 1
* package.package.material = $200000003199#200000003529 "Cardboard"
* package.package.package.type = $100000073346#100000073496 "Blister"
* package.package.package.quantity = 1
* package.package.package.material[0] = $200000003199#200000003200 "Aluminium"
* package.package.package.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* package.package.package.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* package.package.package.containedItem[0].item.reference = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID)
* package.package.package.containedItem[=].amount = 21 $200000000014#200000002152 "tablet"


Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "tablet"


Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-01
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD)
* for[+] = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID)
* for[+] = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000091531 "Ethinylestradiol"
* substance.strength.presentationRatio.numerator = 0.03 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000091721 "Ethinylestradiol"
* substance.strength.referenceStrength.strengthRatio.numerator =  0.03 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"


Instance: Jangee-0.03mg-3mg-Film-coated-tablet-EE-I-02
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MPD)
* for[+] = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-MID)
* for[+] = Reference(Jangee-0.03mg-3mg-Film-coated-tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092375 "drospirenone"
* substance.strength.presentationRatio.numerator = 3 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000092375 "drospirenone"
* substance.strength.referenceStrength.strengthRatio.numerator = 3 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"
