// Canifug Cremolum in Medication resource as a registered product
Instance: CanifugCremolum-EE-Medication-Clinical
InstanceOf: MedicationAsMedicinalProduct
Usage: #example
Description: "Canifug Cremolum in Medication resource as a registered product: combination product of creme and pessaries"

* identifier[mpid].value = "EE-100004795-10280"
* doseForm = $edqm-standardterms#14001000 "Cream + pessary"
* extension[classification].valueCodeableConcept = $who-atc#G01AF02 "clotrimazole"
* extension[name].valueString = "Canifug Cremolum"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10909000 "Pessary"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10901000 "Vaginal cream"
* marketingAuthorizationHolder = Reference(LOC-100004795-Wolff-Arzneimittel)
* ingredient[0].item.reference = Reference(CanifugCremolum-EE-Cream-Medication-Item)
* ingredient[+].item.reference = Reference(CanifugCremolum-EE-Pessary-Medication-Item)

// Canifug Cremolum type of product in Medicatin resource as a generic product description


// Clotrimazole cream as part of Canifug Cremolum product (ISO IDMP manufactured item)

Instance: CanifugCremolum-EE-Cream-Medication-Item
InstanceOf: MedicationAsManufacturedItem
Usage: #example
Description: "Clotrimazole cream as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#10901000 "Vaginal cream"
* totalVolume = 20 $100000110633#100000110654 "gram(s)"
* ingredient.item.concept = $sms#100000092074 "CLOTRIMAZOLE"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 10 $100000110633#100000110655 "milligram(s)"
* ingredient.strengthRatio.denominator = 1 $100000110633#100000110654 "gram(s)"

// Clotrimazole pessary as part of Canifug Cremolum product (ISO IDMP manufactured item)

Instance: CanifugCremolum-EE-Pessary-Medication-Item
InstanceOf: MedicationAsManufacturedItem
Usage: #example
Description: "Clotrimazole pessary as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#10909000 "Pessary"
* totalVolume = 6 $edqm-standardterms#15039000 "Pessary"
* ingredient.item.concept = $sms#100000092074 "CLOTRIMAZOLE"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 100 $100000110633#100000110655 "milligram(s)"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15039000 "Pessary"