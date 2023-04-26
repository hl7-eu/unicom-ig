// Greek product

Instance: 016-Lodipin-10mg-Capsule-GR-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Lodipin 10mg Capsule. Amlodipine (besilate).  Greece."

* type = #collection
* entry[0].resource = Lodipin-10mg-Capsule-GR-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-Lodipin-10mg-Capsule-GR-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-Lodipin-10mg-Capsule-GR-MPD"

* entry[+].resource = Lodipin-10mg-Capsule-GR-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-Lodipin-10mg-Capsule-GR-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-Lodipin-10mg-Capsule-GR-RA"

* entry[+].resource = LOC-100005016-Iasis
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100005016-Iasis"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100005016-Iasis"

* entry[+].resource = Lodipin-10mg-Capsule-GR-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-Lodipin-10mg-Capsule-GR-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-Lodipin-10mg-Capsule-GR-APD"

* entry[+].resource = Lodipin-10mg-Capsule-GR-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-Lodipin-10mg-Capsule-GR-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-Lodipin-10mg-Capsule-GR-MID"

* entry[+].resource = Lodipin-10mg-Capsule-GR-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-Lodipin-10mg-Capsule-GR-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-Lodipin-10mg-Capsule-GR-I"

* entry[+].resource = Lodipin-10mg-Capsule-GR-PPD-2802584402021
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Lodipin-10mg-Capsule-GR-PPD-2802584402021"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Lodipin-10mg-Capsule-GR-PPD-2802584402021"

* entry[+].resource = Lodipin-10mg-Capsule-GR-PPD-2802584402038
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Lodipin-10mg-Capsule-GR-PPD-2802584402038"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Lodipin-10mg-Capsule-GR-PPD-2802584402038"


Instance: Lodipin-10mg-Capsule-GR-MPD
InstanceOf: PPLMedicinalProductDefinition
Usage: #inline

* identifier[mpid].value = "GR-100005016-2584402"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073375 "Capsule, hard"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "LODIPIN 10 mg καψάκια, σκληρά"
* name.part[invented].part = "LODIPIN"
* name.part[strength].part = "10 mg"
* name.part[doseForm].part = "καψάκια, σκληρά"
* name.usage.country = $100000000002#100000000406 "Hellenic Republic"
//* name.usage.language = $100000072057#100000072181 "Greek"
* name.usage.language = urn:ietf:bcp:47#el "Greek"


Instance: Lodipin-10mg-Capsule-GR-RA
InstanceOf: PPLRegulatedAuthorization
Usage: #inline

* identifier.value = "100005016xyz" // not a real number
* subject = Reference(Lodipin-10mg-Capsule-GR-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000406 "Hellenic Republic"
* status = $100000072049#100000072099 "Valid"
* statusDate = "2022-10-01" // not a real date
* holder = Reference(LOC-100005016-Iasis)

Instance: LOC-100005016-Iasis
InstanceOf: PPLOrganization
Usage: #inline
* identifier[loc].value = "LOC-100005016"
* identifier[org].value = "ORG-100005779"
* name = "Iasis Pharmaceuticals Hellas S.A."


Instance: Lodipin-10mg-Capsule-GR-APD
InstanceOf: PPLAdministrableProductDefinition
Usage: #inline
* status = #active
* formOf = Reference(Lodipin-10mg-Capsule-GR-MPD)
* administrableDoseForm = $200000000004#100000073375 "Capsule, hard"
* unitOfPresentation = $200000000014#200000002113 "Capsule"
* producedFrom = Reference(Lodipin-10mg-Capsule-GR-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"


Instance: Lodipin-10mg-Capsule-GR-MID
InstanceOf: PPLManufacturedItemDefinition
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073375 "Capsule, hard"
* unitOfPresentation = $200000000014#200000002113 "Capsule"


Instance: Lodipin-10mg-Capsule-GR-I
InstanceOf: PPLIngredient
Usage: #inline
* status = #active
* for[0] = Reference(Lodipin-10mg-Capsule-GR-MPD)
* for[+] = Reference(Lodipin-10mg-Capsule-GR-MID)
* for[+] = Reference(Lodipin-10mg-Capsule-GR-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
//* substance.strength.presentationRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.presentationRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.presentationRatio.numerator = 13.889 $100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $200000000014#200000002113 "Capsule"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "Amlodipine"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.url = "http://ema.europa.eu/fhir/extension/comparator"
//* substance.strength.referenceStrength.strengthRatio.numerator.comparator.extension.valueCoding = $100000000008#100000000049 "equal to"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 $200000000014#200000002113 "Capsule"


Instance: Lodipin-10mg-Capsule-GR-PPD-2802584402021
InstanceOf: PPLPackagedProductDefinition
Usage: #inline

* identifier[pcid].value = "GR-100005016-2584402-2802584402021"
* packageFor = Reference(Lodipin-10mg-Capsule-GR-MPD)
* containedItemQuantity = 14 $200000000014#200000002113 "Capsule"
* description = "14 κάψουλες ή 30 κάψουλες συσκευασμένες σε 2 blister x 7 caps και 3 blister x 10 caps
αντίστοιχα, από PVC/aluminium foil (πάνω στο οποίο είναι τυπωμένη η ημερομηνία λήξης 
του προϊόντος και η παρτίδα του). To blister τοποθετείται σε κουτί από χαρτόνι, στο οποίο 
είναι τυπωμένα στοιχεία LOT και EXP του προϊόντος."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072181 "Greek"
* marketingStatus.country = $100000000002#100000000406 "Hellenic Republic"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 2 // TO DO: should not be mandatory maybe
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003225 "PolyVinylidene Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Lodipin-10mg-Capsule-GR-MID)
* packaging.packaging.containedItem.amount.value = 7


Instance: Lodipin-10mg-Capsule-GR-PPD-2802584402038
InstanceOf: PPLPackagedProductDefinition
Usage: #inline
* identifier[pcid].value = "GR-100005016-2584402-2802584402038"
* packageFor = Reference(Lodipin-10mg-Capsule-GR-MPD)
* containedItemQuantity = 30 $200000000014#200000002113 "Capsule"
* description = "14 κάψουλες ή 30 κάψουλες συσκευασμένες σε 2 blister x 7 caps και 3 blister x 10 caps
αντίστοιχα, από PVC/aluminium foil (πάνω στο οποίο είναι τυπωμένη η ημερομηνία λήξης 
του προϊόντος και η παρτίδα του). To blister τοποθετείται σε κουτί από χαρτόνι, στο οποίο 
είναι τυπωμένα στοιχεία LOT και EXP του προϊόντος."
//  * extension.url = "http://ema.europa.eu/fhir/extension/language"
//  * extension.valueCoding = $100000072057#100000072181 "Greek"
* marketingStatus.country = $100000000002#100000000406 "Hellenic Republic"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.type = $100000073346#100000073496 "Blister"
* packaging.packaging.quantity = 3 // TO DO: should not be mandatory maybe
* packaging.packaging.material[0] = $200000003199#200000003222 "PolyVinyl Chloride"
* packaging.packaging.material[+] = $200000003199#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference = Reference(Lodipin-10mg-Capsule-GR-MID)
* packaging.packaging.containedItem.amount.value = 10
