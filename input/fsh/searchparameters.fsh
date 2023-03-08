Instance: reference-strength-substance
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "reference-strength-substance"
* description = "Possiblity to search ingredient for substance.strength.referenceStrength.substance.concept"
* code = #reference-strength-substance
* base = #Ingredient
* type = #token
* expression = "Ingredient.substance.strength.referenceStrength.substance.concept"
* processingMode = #normal


Instance: country
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "country"
* description = "Search for MedicinalProductDefinition by country"
* code = #country
* base = #MedicinalProductDefinition
* type = #token
* expression = "MedicinalProductDefinition.name.usage.country.coding.code"
* processingMode = #normal