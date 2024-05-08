Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Equivalent
InstanceOf: OperationDefinition
Usage: #definition

* url = "http://unicom-project.eu/fhir/OperationDefinition/Equivalent"

* name = "Equivalent"
* title = "Equivalent Look Up"
* status = #active
* kind = #operation
* experimental = false
* jurisdiction = $m49.htm#001 "World"
* affectsState = false


* code = #equivalent

//* resource = #MedicinalProductDefinition

* system = false
* type = true
* instance = true
* parameter[0].name = #dose-form
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The dose form" //which one??
* parameter[=].type = #Coding

* parameter[+].name = #code
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Product code" //can be whatever, MPID, PhPID, or other
* parameter[=].type = #Coding

* parameter[+].name = #route
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Route of administration"
* parameter[=].type = #Coding



* parameter[+].name = #ingredient
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Ingredients"

* parameter[=].part[0].name = #substance
* parameter[=].part[=].use = #in
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "The substance"
* parameter[=].part[=].type = #Coding


* parameter[=].part[+].name = #strength
* parameter[=].part[=].use = #in
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "The strength"
* parameter[=].part[=].type = #Quantity

