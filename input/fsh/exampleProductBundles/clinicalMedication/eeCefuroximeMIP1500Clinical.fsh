// Cefuroxime 1500mg in Medication resource as a registered product
Instance: CefuroximeMIP-EE-Medication-Clinical
InstanceOf: MedicationAsMedicinalProduct
Usage: #example
Description: "Cefuroxime 1500mg powder for solution in Medication resource as a registered packaged product"

* identifier[mpid].value = "EE-100009199-27834"
* identifier[pcid].value = "EE-100009199-27834-1529940"
* doseForm = $edqm-standardterms#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $who-atc#J01DC02 "cefuroxime"
* extension[name].valueString = "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#50060000 "Solution for injection/infusion"
* marketingAuthorizationHolder = Reference(LOC-100009199-Mip)
* ingredient[0].item.reference = Reference(CefuroximeMIP-EE-Powder-Medication-Item)


Instance: CefuroximeMIP-EE-Powder-Medication-Item
InstanceOf: MedicationAsManufacturedItem
Usage: #example
Description: "Cefuroxime 1500mg powder in a vial (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#50053000 "Powder for solution for injection or infusion"
* totalVolume = 1 $edqm-standardterms#15060000 "Vial"
* ingredient.item.concept = $sms#100000092667 "CEFUROXIME"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 1500 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15060000 "Vial"

// SNOMED code: 1217025007 "Cefuroxime (as cefuroxime sodium) 1.5 g powder for solution for infusion and/or injection vial"