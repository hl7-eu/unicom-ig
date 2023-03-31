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


Instance: name-language-correct
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "name-language-correct"
* description = "Possiblity to search ingredient for MedicinalProductDefinition.name.usage.language"
* code = #name-language-correct
* base = #MedicinalProductDefinition
* type = #token
* expression = "MedicinalProductDefinition.name.usage.language"
* processingMode = #normal

Instance: strength-presentation-quantity
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* url = "http://fhir.hl7.pt:8080/fhir/SearchParameter/strength-presentation-quantity"
* name = "strength-presentation-quantity"
* description = "Possiblity to search for Ingredient.substance.strength.presentation.ofType(Quantity)"
* code = #strength-presentation-quantity
* base = #Ingredient
* type = #quantity
* expression = "Ingredient.substance.strength.presentation.ofType(Quantity)"
* processingMode = #normal


Instance: strength-and-substance
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "strength-and-substance"
* description = "Possiblity to search for substance and strength at the same time"
* code = #strength-and-substance
* base = #Ingredient
* expression = "Ingredient.substance"
* component[+].expression = "code.concept"
* component[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-substance-code"

* component[+].expression = "strength.presentation.ofType(Quantity)"
* component[=].definition = "http://fhir.hl7.pt:8080/fhir/SearchParameter/strength-presentation-quantity"

* type = #composite
* processingMode = #normal
