Profile: MedicationAsMedicinalProduct
Parent: Medication
Id: MedicationAsMedicinalProduct
Title: "Medication"
Description: """Medication for clinical use cases (Medication resource), may be branded or generic"""
* ^url = "http://unicom-project.eu/fhir/StructureDefinition/MedicationAsMedicinalProduct"
* ^status = #draft

* identifier
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the medicinal product, its generic representation, or packaged product: MPID, PCID, national ID, or other"
* identifier contains  
  mpid 0..1 and
  pcid 0..1
//  * otherid 0..*   //TO DO: What to do about other slices?

* identifier[mpid] 
  * system = "http://ema.europa.eu/fhir/mpId"
  * ^short = "MPID"
  * ^definition = "EMA IG 1.2. MPID if exists. For UNICOM testing data fake MPIDs are used (Country code + MAH LocID + unique code)."

* identifier[pcid]
  * system = "http://ema.europa.eu/fhir/pcId"
  * ^short = "PCID"

* extension contains medicinal-product-name named name 0..*
* extension contains medicinal-product-classification named classification 0..*
* extension contains administrable-doseform named administrableDoseForm 0..*

* code ^short = "A terminology-based code for the product"
* marketingAuthorizationHolder ^short = "Marketing Authorisation Holder"
* doseForm 1..
* doseForm ^short = "Dose form. On this level, it would typically be the same as authorised dose form"
* totalVolume 0..0
* totalVolume ^short = "To indicate the number of manufactured items in the package, use ingredient.strengthQuantity"
/* this is now debatable. Whether we want to always find the same data in the same places, or we would prefer to keep the majority 
of products simple and only use manufactured item description when there are more than one items"*/
* ingredient 1..
* ingredient ^short = "Medication item description (i.e. manufactured item)"
* ingredient.item only Reference(MedicationAsManufacturedItem)
* ingredient.item ^short = "Manufactured Item description"
* ingredient.item ^type.aggregation = #contained
* ingredient.strengthQuantity ^short = "Number of manufactured items"
//Only makes sense if there is just one pack size available//

//TO DO Extension for precise active ingredient (in addition to reference strength ingredient)?
//TO DO Not sure what to do with pharmaceutical/administrable dose form.


// PROFILE: Manufactured Item as Medication resource
Profile: MedicationAsManufacturedItem
Parent: Medication
Id: MedicationAsManufacturedItem
Title: "Medication as manufactured item"
Description: """Manufactured Item as a part of a product for clinical use cases (Medication resource)"""

* ^status = #draft
* doseForm 1..
* doseForm ^short = "Manufactured Dose Form"
* totalVolume 1..
* totalVolume ^short = "Manufactured Item Size"
* ingredient 1..
* ingredient ^short = "Active ingredient"
* ingredient.item from SubstancesSMS (preferred)
* ingredient.item ^short = "Substance"
* ingredient.isActive 1..1

* ingredient.strengthRatio 1..1
* ingredient.strengthRatio ^short = "Strength (reference strength)"
* ingredient.strengthRatio.numerator 1..1
* ingredient.strengthRatio.denominator 1..1

/*
Profile: MedicationAsPackagedProduct
Parent: MedicationAsMedicinalProduct
Id: MedicationAsPackagedProduct
Title: "Packaged Medication"
Description: """Packaged Medication for clinical use cases (Medication resource)"""
* ^status = #draft
* identifier contains PCID 0..1
* identifier[PCID].system ^code.system = "https://spor.ema.eu/pcid"
* ingredient.strength.numerator 1..
*/

Extension: MedicinalProductName
Id: medicinal-product-name
Description: "Registered name for the medicinal product."
* value[x] only string
// TODO Decide if we include name + jurisdiction&language. Also, make the short description appear in the right place.

Extension: MedicinalProductClassification
Id: medicinal-product-classification
Description: "Classification of the product, e.g. ATC."
* value[x] only CodeableConcept


Extension: AdministrableDoseForm
Id: administrable-doseform
Description: "Administrable dose form for the product"
* value[x] only CodeableConcept
* value[x] from pharmaceutical-dose-form (preferred) //EDQM