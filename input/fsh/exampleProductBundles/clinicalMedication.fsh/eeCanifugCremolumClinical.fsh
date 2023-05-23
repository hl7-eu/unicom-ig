// Canifug Cremolum in Medication resource as a registered product
Instance: CanifugCremolum-EE-Medication-Clinical
InstanceOf: MedicationAsMedicinalProduct
Usage: #example
Description: "Canifug Cremolum in Medication resource as a registered packaged product: combination product of 20g creme and 6 pessaries"

* identifier[mpid].value = "EE-100004795-10280"
* identifier[pcid].value = "EE-100004795-10280-1033692"
* doseForm = $edqm-standardterms#14001000 "Cream + pessary"
* extension[classification].valueCodeableConcept = $who-atc#G01AF02 "clotrimazole"
* extension[name].valueString = "Canifug Cremolum"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10909000 "Pessary"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10901000 "Vaginal cream"
* marketingAuthorizationHolder = Reference(LOC-100004795-Wolff-Arzneimittel)
* ingredient[0].item.reference = Reference(CanifugCremolum-EE-Cream-Medication-Item)
// should the number of tubes or size of the tube be here?
* ingredient[+].item.reference = Reference(CanifugCremolum-EE-Pessary-Medication-Item)
// should the number of pessaries be here?


// Clotrimazole cream as part of Canifug Cremolum product (ISO IDMP manufactured item)

Instance: CanifugCremolum-EE-Cream-Medication-Item
InstanceOf: MedicationAsManufacturedItem
Usage: #example
Description: "Clotrimazole cream as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#10901000 "Vaginal cream"
* totalVolume = 20 $ucum#g "gram"
* ingredient.item.concept = $sms#100000092074 "CLOTRIMAZOLE"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 10 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $ucum#g "gram"

// Clotrimazole pessary as part of Canifug Cremolum product (ISO IDMP manufactured item)

Instance: CanifugCremolum-EE-Pessary-Medication-Item
InstanceOf: MedicationAsManufacturedItem
Usage: #example
Description: "Clotrimazole pessary as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#10909000 "Pessary"
* totalVolume = 6 $edqm-standardterms#15039000 "Pessary"
* ingredient.item.concept = $sms#100000092074 "CLOTRIMAZOLE"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 100 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15039000 "Pessary"

// Clotrimazole cream and pessaries as a generic product, Medication resource
Instance: Clotrimazole-cream-and-pessaries-Medication-Clinical
InstanceOf: MedicationAsMedicinalProduct
Usage: #example
Description: "Clotrimazole cream and pessaries as a generic product, Medication resource"

* doseForm = $edqm-standardterms#14001000 "Cream + pessary"
* extension[classification].valueCodeableConcept = $who-atc#G01AF02 "clotrimazole"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10909000 "Pessary"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10901000 "Vaginal cream"
* marketingAuthorizationHolder = Reference(LOC-100004795-Wolff-Arzneimittel)
* ingredient[0].item.reference = Reference(Clotrimazole-Cream-Generic)
// should the number of tubes or size of the tube be here?
* ingredient[+].item.reference = Reference(Clotrimazole-Pessary-Generic)
// should the number of pessaries be here?

// Clotrimazole cream as part of Canifug Cremolum product (ISO IDMP manufactured item)

Instance: Clotrimazole-Cream-Generic
InstanceOf: MedicationAsManufacturedItem
Usage: #example
Description: "Clotrimazole cream (ISO IDMP manufactured item)"

* code = $snomed#326215009 "Clotrimazole 20 mg/g vaginal cream"
* doseForm = $edqm-standardterms#10901000 "Vaginal cream"
* totalVolume = 20 $ucum#g "gram"
* ingredient.item.concept = $sms#100000092074 "CLOTRIMAZOLE"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 10 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $ucum#g "gram"

// Clotrimazole pessary as part of Canifug Cremolum product (ISO IDMP manufactured item)

Instance: Clotrimazole-Pessary-Generic
InstanceOf: MedicationAsManufacturedItem
Usage: #inline
Description: "Clotrimazole pessary as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* code = $snomed#784953008 "Clotrimazole 100 mg vaginal tablet" //no exact match for 100mg pessary in SNOMED CT international release
* doseForm = $edqm-standardterms#10909000 "Pessary"
* totalVolume = 6 $edqm-standardterms#15039000 "Pessary"
* ingredient.item.concept = $sms#100000092074 "CLOTRIMAZOLE"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 100 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15039000 "Pessary"