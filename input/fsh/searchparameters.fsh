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





Instance: strength-presentation-ratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* url = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-ratio-numerator"
* name = "strength-presentation-ratio-numerator"
* description = "Possiblity to search for Ingredient.substance.strength.presentation.ofType(Ratio).numerator"
* code = #strength-presentation-ratio-numerator
* base = #Ingredient
* type = #quantity
* expression = "Ingredient.substance.strength.presentation.ofType(Ratio).numerator"
* processingMode = #normal

Instance: strength-presentation-ratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* url = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-ratio-denominator"
* name = "strength-presentation-ratio-numerator"
* description = "Possiblity to search for Ingredient.substance.strength.presentation.ofType(Ratio).denominator"
* code = #strength-presentation-ratio-denominator
* base = #Ingredient
* type = #quantity
* expression = "Ingredient.substance.strength.presentation.ofType(Ratio).denominator"
* processingMode = #normal

Instance: strength-presentation-ratio
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "strength-presentation-ratio"
* description = "Possiblity to search for substance and strength at the same time"
* code = #strength-presentation-ratio
* base = #Ingredient
* expression = "Ingredient.substance.strength.presentation.ofType(Ratio)"


* component[+].expression = "numerator"
* component[=].definition = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-ratio-numerator"

* component[+].expression = "denominator"
* component[=].definition = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-ratio-denominator"


* type = #composite
* processingMode = #normal







Instance: strength-ratio-and-substance
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "strength-ratio-and-substance"
* description = "Possiblity to search for substance and strength at the same time"
* code = #strength-ratio-and-substance
* base = #Ingredient
* expression = "Ingredient.substance"
* component[+].expression = "code.concept"
* component[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-substance-code"

* component[+].expression = "strength.presentation.ofType(Ratio).numerator"
* component[=].definition = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-ratio-numerator"

* type = #composite
* processingMode = #normal

Instance: strength-presentation-quantity
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* url = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-quantity"
* name = "strength-presentation-quantity"
* description = "Possiblity to search for Ingredient.substance.strength.presentation.ofType(Quantity)"
* code = #strength-presentation-quantity
* base = #Ingredient
* type = #quantity
* expression = "Ingredient.substance.strength.presentation.ofType(Quantity)"
* processingMode = #normal

Instance: strength-quantity-and-substance
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "strength-quantity-and-substance"
* description = "Possiblity to search for substance and strength at the same time"
* code = #strength-quantity-and-substance
* base = #Ingredient
* expression = "Ingredient.substance"
* component[+].expression = "code.concept"
* component[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-substance-code"

* component[+].expression = "strength.presentation.ofType(Quantity)"
* component[=].definition = "http://unicom-project.eu/fhir/SearchParameter/strength-presentation-quantity"

* type = #composite
* processingMode = #normal




