Alias: $100000000004 = https://spor.ema.europa.eu/rmswi/#/lists/100000000004/terms
Alias: $200000005003 = https://spor.ema.europa.eu/rmswi/#/lists/200000005003/terms
Alias: $220000000000 = https://spor.ema.europa.eu/rmswi/#/lists/220000000000/terms


// First the Bundle
Profile: MPDBundle
Parent: Bundle
Id: MPDBundle
Title: "MPD Bundle"
Description: """..."""


//MPD Profile:

Profile: PPLMedicinalProductDefinition
Parent: MedicinalProductDefinition
Id: PPLMedicinalProductDefinition
Title: "PPL MedicinalProductDefinition profile"
Description: """..."""


* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "identifier"
* identifier ^definition = "An identifier "
* identifier contains
  mpid 1..1 and
  pmsid 0..1
//  * otherid 0..*   //TO DO: What to do about other slices?

* identifier[mpid] 
  * system = "http://1"
  * ^short = "MPID identifier"

* identifier[pmsid]
  * system = "http://2"
  * ^short = "PMS identifier"

* domain = $100000000004#100000000012 "Human"

* status.coding.system = $200000005003
 

* name
  * part ^slicing.discriminator.type = #pattern
  * part ^slicing.discriminator.path = "type.coding.code"
  * part ^slicing.rules = #open
  * part ^slicing.ordered = true
  * part ^short = "name part"
  * part ^definition = "name part"
  * part contains
    invented 1..1 and
    strength 0..1 and
    doseForm 0..1 
  * part[invented].type = $220000000000#invented
  * part[strength].type = $220000000000#strength
  * part[doseForm].type = $220000000000#dose-form
  * productName 1..1

