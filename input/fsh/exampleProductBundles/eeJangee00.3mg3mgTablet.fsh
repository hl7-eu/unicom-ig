Instance: 008-Jangee-003mg-3mg-Film-coated-tablet-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Jangee ethinylestradiol 0.03mg, drosperinone 3mg. Estonia. Without placebo pills."


* type = #collection
* entry[0].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-MPD"

* entry[+].resource = LOC-100005719-ExeltisBalticsUAB
//* entry[=].request.method = #PUT
//* entry[=].request.url = "LOC-100005719-ExeltisBalticsUAB"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100005719-ExeltisBalticsUAB"

* entry[+].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-Jangee-003mg-3mg-Film-coated-tablet-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-Jangee-003mg-3mg-Film-coated-tablet-EE-RA"

* entry[+].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-APD"

* entry[+].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-PPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-PPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-PPD"

* entry[+].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-Jangee-003mg-3mg-Film-coated-tablet-EE-MID"

* entry[+].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-I-01
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-Jangee-003mg-3mg-Film-coated-tablet-EE-I-01"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b-Jangee-003mg-3mg-Film-coated-tablet-EE-I-01"

* entry[+].resource = Jangee-003mg-3mg-Film-coated-tablet-EE-I-02
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-Jangee-003mg-3mg-Film-coated-tablet-EE-I-02"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b-Jangee-003mg-3mg-Film-coated-tablet-EE-I-02"


Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "EE-100005719-2604"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
* indication = "Raseduse vältimine. Jangee 0,03 mg/3 mg väljakirjutamisel tuleb võtta arvesse naisel käesoleval hetkel esinevaid individuaalseid riskifaktoreid, eriti venoosse trombemboolia (VTE) riskifaktoreid ning VTE riski selle ravimiga, võrreldes teiste kombineeritud hormonaalsete kontratseptiividega.."
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification = $100000093533#100000095785 "drospirenone and ethinylestradiol"
* name.productName = "Jangee 0.03 mg/3 mg, õhukese polümeerikattega tabletid"
* name.part[invented].part = "Jangee"
* name.part[strength].part = "0.03 mg/3 mg"
* name.part[doseForm].part = "Õhukese polümeerikattega tabletid"
* name.usage.country = $100000000002#100000000388 "Republic of Estonia"
//* name.usage.language = urn:ietf:bcp:47#et "Estonian"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"

Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline
* identifier.value = "650609"
* subject = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000388 "Republic of Estonia"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* statusDate = "2016-09-14"
* holder = Reference(LOC-100005719-ExeltisBalticsUAB)

// Organisation LOC-100005719-ExeltisBalticsUAB can be found in the other Jangee product

Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MPD)
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* producedFrom = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-PPD
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "EE-100005719-2604-1331053"

* packageFor = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MPD)
* containedItemQuantity = 21 $200000000014#200000002152 "tablet"
* description = "Alumiiniumfooliumiga kaetud PVC/PVDC blistrid. Pakendi suurus: 1 x 21 õhukese polümeerikattega tabletti."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072172 "Estonian"
* marketingStatus.country = $100000000002#100000000388 "Republic of Estonia"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.packaging.type = $100000073346#100000073498 "Box"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.packaging.quantity = 1
* packaging.packaging.packaging.material[0] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.packaging.material[+] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.packaging.containedItem[0].item.reference = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MID)
* packaging.packaging.packaging.containedItem[=].amount = 21 $200000000014#200000002152 "tablet"


Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "tablet"


Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-I-01
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MPD)
* for[+] = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MID)
* for[+] = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000091531 "Ethinylestradiol betadex clathrate"
* substance.strength.presentationRatio.numerator = 0.03 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000091721 "Ethinylestradiol"
* substance.strength.referenceStrength.strengthRatio.numerator =  0.03 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"


Instance: Jangee-003mg-3mg-Film-coated-tablet-EE-I-02
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MPD)
* for[+] = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-MID)
* for[+] = Reference(Jangee-003mg-3mg-Film-coated-tablet-EE-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000092375 "drospirenone"
* substance.strength.presentationRatio.numerator = 3 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002152 "tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000092375 "drospirenone"
* substance.strength.referenceStrength.strengthRatio.numerator = 3 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002152 "tablet"
