Alias: $100000000004 = https://spor.ema.europa.eu/rmswi/#/lists/100000000004/terms // Domain
Alias: $200000005003 = https://spor.ema.europa.eu/rmswi/#/lists/200000005003/terms // Record Status
Alias: $220000000000 = https://spor.ema.europa.eu/rmswi/#/lists/220000000000/terms // Medicinal Product Name Part type
Alias: $100000072051 = https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms // Legal Status for the Supply
Alias: $200000000004 = https://spor.ema.europa.eu/rmswi/#/lists/200000000004/terms // Pharmaceutical Dose Form
Alias: $200000000006 = https://spor.ema.europa.eu/rmswi/#/lists/200000000006/terms // Combined Pharmaceutical Dose Form
Alias: $200000000007 = https://spor.ema.europa.eu/rmswi/#/lists/200000000007/terms // Combined Term
Alias: $200000000008 = https://spor.ema.europa.eu/rmswi/#/lists/200000000008/terms // Combination Package
Alias: $100000093533 = https://spor.ema.europa.eu/rmswi/#/lists/100000093533/terms // Anatomical Therapeutic Chemical classification system - Human
Alias: $100000000002 = https://spor.ema.europa.eu/rmswi/#/lists/100000000002/terms // Country
Alias: $100000072057 = https://spor.ema.europa.eu/rmswi/#/lists/100000072057/terms // Language
Alias: $220000000060 = https://spor.ema.europa.eu/rmswi/#/lists/220000000060/terms // Regulatory Entitlement Type
Alias: $100000072049 = https://spor.ema.europa.eu/rmswi/#/lists/100000072049/terms // Regulatory Entitlement Status
Alias: $200000000014 = https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms // Unit of Presentation
Alias: $100000110633 = https://spor.ema.europa.eu/rmswi/#/lists/100000110633/terms // Units of Measurement
Alias: $100000073345 = https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms // Routes and Methods of Administration
Alias: $100000072050 = https://spor.ema.europa.eu/rmswi/#/lists/100000072050/terms // Ingredient Role
Alias: $100000000008 = https://spor.ema.europa.eu/rmswi/#/lists/100000000008/terms // Quantity Operator
Alias: $100000072052 = https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms // Marketing Status
Alias: $100000073346 = https://spor.ema.europa.eu/rmswi/#/lists/100000073346/terms // Packaging
Alias: $200000003199 = https://spor.ema.europa.eu/rmswi/#/lists/200000003199/terms // Material
Alias: $100000073343 = https://spor.ema.europa.eu/rmswi/#/lists/100000073343/terms // Shelf Life Type

Alias: $sms = https://spor.ema.europa.eu/v2/SubstanceDefinition // EMA SPOR Substance Management System

//Alias: $loc-id = https://spor.ema.europa.eu/v1/locations // EMA OMS Location Identifier
//Alias: $org-id = https://spor.ema.europa.eu/v1/organisations // EMA OMS Organisation Identifier
Alias: $who-atc = http://www.whocc.no/atc // WHO ATC
//Alias: $iso-country = // ISO 3166-1-2
//Alias: $ietf-language = // IETF BCP 47

// PROFILE: Bundle for one full product
Profile: MPDBundle
Parent: Bundle
Id: MPDBundle
Title: "PPL Medicinal Product Bundle profile"
Description: """Medicinal product with all its relevant data as one bundle, including packages, MA and pharmaceutical product"""


// PROFILE: Medicinal Product Definition

Profile: PPLMedicinalProductDefinition
Parent: MedicinalProductDefinition
Id: PPLMedicinalProductDefinition
Title: "PPL Medicinal Product profile"
Description: """Medicinal Product as defined in ISO IDMP"""


* identifier 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the medicinal product: MPID, EMA PMS ID, national ID, or other"
  * ^definition = "Identifier for the medicinal product: MPID, EMA PMS ID, national ID, or other. Not to be used for package or pharmaceutical product identifiers."
* identifier contains
  mpid 1..1 and
  pmsid 0..1
//  * otherid 0..*   //TO DO: What to do about other slices?

* identifier[mpid] 
  * system = "http://ema.europa.eu/fhir/mpId"
  * ^short = "MPID"
  * ^definition = "MPID if exists. For UNICOM testing data fake MPIDs are used (Country code + MAH LocID + unique code). "

* identifier[pmsid]
  * system = "http://ema.europa.eu/fhir/pmsId"
  * ^short = "PMS ID"
  * ^definition = "EMA Product Management System identifier if exists. For UNICOM testing data fake PMS IDs can be used"

* domain 1..1
* domain = $100000000004#100000000012 "Human use"

* status 0..1
  * coding.system = $200000005003 // TO DO: Default 200000005004 'Current'
  * ^short = "Status of the product's data. Default 200000005004 'Current'"

* legalStatusOfSupply 1..1
  * coding.system = $100000072051 
  * ^short = "Legal status of supply on the medicinal product level."
  * ^definition = "Legal status of supply on the medicinal product level. The same information can be repeated/differentiated on the package level"

* combinedPharmaceuticalDoseForm 1..1
  * coding.system = $200000000004 // TO DO: add three more value sets here, it could be one of four: 200000000004 | 200000000006 | 200000000007 | 200000000008 
  * ^short = "Authorised dose form for the product"
  * ^definition = "Authorised dose form for the whole product. As applicable in one of the SPOR RMS list Combined pharmaceutical dose form, Pharmaceutical dose form, Combined term, Combination Package"

// It complains about classification, I don't understand what its problem is I need to make it 1..*.
* classification 1..*
//  * coding.system = $100000093533 // TODO: or $who-atc
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "coding.system"
  * ^slicing.rules = #open
  * ^short = "ATC or other classification"
* classification contains
  atc 1..1
* classification[atc]
  * coding.system = $100000093533
  * ^short = "ATC code for the product. Coded with EMA or WHO code."
//TO DO: Not sure if I can restrict so that one coding has to be with EMA code and the other one with real ATC code. Plus I need to allow other classifications besides ATC.

* name
  * productName 1..1
  * part 
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "type.coding.code"
    * ^slicing.rules = #open
    * ^slicing.ordered = true
    * ^short = "Medicinal product name part"
    * ^definition = "Name part. Product names are usually combined of these three parts. More parts can be defined and strength and dose form parts can be omitted."
  * part contains
    invented 1..1 and
    strength 0..1 and
    doseForm 0..1 
  * part[invented].type = $220000000000#220000000002 "Invented name part"
  * part[strength].type = $220000000000#220000000004 "Strength part"
  * part[doseForm].type = $220000000000#220000000005 "Pharmaceutical dose form part"
  * usage
    * country.coding.system = $100000000002 //TO DO: can I still use different codings here? ISO and EMA? How to do that?
    * language.coding.system = $100000072057


// PROFILE: Regulated Authorisation
Profile: PPLRegulatedAuthorization
Parent: RegulatedAuthorization
Id: PPLRegulatedAuthorization
Title: "PPL Marketing Authorisation profile"
Description: """Regulated Authorization profile defines the Marketing Authorisation on product or package level"""

* identifier 1..*
  * ^short = "Marketing authorisation number"
  * system = "http://ema.europa.eu/fhir/marketingAuthorizationNumber" // this is actually wrongish as the MA number may not be unique across EU

* subject 1..1
  * ^short = "Reference to the medicinal product or a single package, depending on how the MA has been issued"
  // TO DO: Reference to PPLMedicinalProductDefinition or PPLPackagedProductDefinition

* type 1..1
* type = $220000000060#220000000061 "Marketing Authorisation"

* region 1..1
* region.coding.system = $100000000002

* status 1..1
  * coding.system = $100000072049
  * ^short = "Marketing authorisation status"

* statusDate
  * ^short = "Issue/changing date of the marketing authorisation"

* holder 1..1
//  * identifier.system = $loc-id 
// I can't do the thing above, right? I will have to create PPLOrganization and reference that?

// PROFILE: Manufactured Item Definition
Profile: PPLManufacturedItemDefinition
Parent: ManufacturedItemDefinition
Id: PPLManufacturedItemDefinition
Title: "PPL Manufactured Item profile"
Description: """Manufactured item is the countable element inside the package"""

* manufacturedDoseForm 1..1
  * coding.system = $200000000004
  * ^short = "Dose form of the manufactured item (before preparing for administration)"

* unitOfPresentation 1..1
  * coding.system = $200000000014
  * ^short = "Unit of presentation of the manufactured item (before preparing for administration)"

// PROFILE: Pharmaceutical/ Administrable Product
Profile: PPLAdministrableProductDefinition
Parent: AdministrableProductDefinition
Id: PPLAdministrableProductDefinition
Title: "PPL Administrable Product profile"
Description: """Administrable product profile defines the ISO IDMP Pharmaceutical Product concept"""

* identifier
  * ^short = "PhPID or other relevant identifier"

* formOf 1..*
  * ^short = "Reference to the Medicinal Product"
  // TO DO: Add reference to PPLMedicinalProductDefinition

* administrableDoseForm 1..1
  * coding.system = $200000000004
  * ^short = "Dose form of the administrable product (after preparing for administration)"

* unitOfPresentation 1..1
  * coding.system = $200000000014
  * ^short = "Unit of presentation of the administrable product (after preparing for administration)"

* producedFrom
  * ^short = "References to manufactured items that are used in the preparation of this administrable product"
// TO DO: add reference to PPLManufacturedItemDefinition

//* routeOfAdministration
//  * coding.system = $100000073345

// PROFILE: Ingredient
Profile: PPLIngredient
Parent: Ingredient
Id: PPLIngredient
Title: "PPL Ingredient profile"
Description: """Ingredient for the medicinal product, pharmaceutical product and/or manufactured item"""

* for 1..*
  * ^short = "Reference to the medicinal product, pharmaceutical product and/or manufactured item where the ingredient is used"
// TO DO: Reference to those three things

* role = $100000072050#100000072072 "Active" // I would, just in case, turn this into default rather than fixed

* substance
//  * code.coding.system = $sms 
// TO DO: the thing above is codeableReference, not sure how to handle it here
  * ^short = "Substance code from EMA SMS"
