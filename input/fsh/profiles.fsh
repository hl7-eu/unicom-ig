/* PROFILE: Bundle for one full product
Profile: MPDBundle
Parent: Bundle
Id: MPDBundle
Title: "PPL Medicinal Product Bundle profile"
Description: """Medicinal product with all its relevant data as one bundle, including packages, MA and pharmaceutical product"""

* entry 1..*
  * fullUrl 1..1
  * resource 1..1 //TO DO I don't understand the syntax for adding PPLProfiledResource here.
*/

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
  * ^definition = "EMA IG 1.2 & 1.3. Identifier for the medicinal product: MPID, EMA PMS ID, national ID, or other. Not to be used for package or pharmaceutical product identifiers."
* identifier contains
  mpid 1..1 and
  pmsid 0..1
//  * otherid 0..*   //TO DO: What to do about other slices?

* identifier[mpid] 
  * system = "http://ema.europa.eu/fhir/mpId"
  * ^short = "MPID"
  * ^definition = "EMA IG 1.2. MPID if exists. For UNICOM testing data fake MPIDs are used (Country code + MAH LocID + unique code)."

* identifier[pmsid]
  * system = "http://ema.europa.eu/fhir/pmsId"
  * ^short = "PMS ID"
  * ^definition = "EMA IG 1.1. EMA Product Management System identifier if exists. For UNICOM testing data fake PMS IDs can be used"

* domain 1..1 
* domain from Domain
  //Default $100000000004#100000000012 "Human use"
  * ^definition = "EMA IG 1.3"

* status 0..1
* status from SporRecordStatus (preferred)
  // Default $200000005003#200000005004 'Current'
  * ^short = "Status of the product's data. Default 200000005004 'Current'"

* legalStatusOfSupply 1..1
* legalStatusOfSupply from LegalStatusForTheSupply
  * ^short = "Legal status of supply on the medicinal product level."
  * ^definition = "EMA IG 1.7. Legal status of supply on the medicinal product level. The same information can be repeated/differentiated on the package level"

* combinedPharmaceuticalDoseForm 1..1
* combinedPharmaceuticalDoseForm from AuthorisedDoseForm 
  * ^short = "Authorised dose form for the product, incl combination package dose forms"
  * ^definition = "EMA IG 1.5 & 1.6. Authorised dose form for the whole product. As applicable in one of the SPOR RMS list Combined pharmaceutical dose form, Pharmaceutical dose form, Combined term, Combination Package"

* classification 1..*  
* classification from SporAtc (preferred)
  * ^short = "Classification such as ATC (EMA and WHO coding)."
/*
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "coding.system"
  * ^slicing.rules = #open
  * ^short = "ATC or other classification"
  * ^definition = "EMA IG 1.13"

* classification contains
  atc 1..1
* classification[atc]
  * coding 
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "system"
    * ^slicing.rules = #open
    * ^short = "ATC classification"
    * ^definition = "EMA IG 1.13.3"

  * coding contains
    ema 1..1 and
    who 0..1
  * coding[ema] from SporAtc
    * system = $100000093533
    * ^short = "ATC classification as EMA SPOR code"
  * coding[who] from whoatc-unicom (preferred)
    * system = $who-atc
    * ^short = "ATC classification as WHO ATC code"
*/
* name
  * ^definition = "EMA IG 1.14"
  * productName 1..1
    * ^definition = "EMA IG 1.14.1"
  * part
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "type"
    * ^slicing.rules = #open
    * ^slicing.ordered = false
    * ^slicing.description = "Slicing on the name part"
    * ^short = "Medicinal product name part"
    * ^definition = "EMA IG 1.14.3. Name part. Product names are usually combined of these three parts. More parts can be defined and strength and dose form parts can be omitted."
  * part contains
    invented 0..1 and
    strength 0..1 and
    doseForm 0..1 
  * part[invented].type = $220000000000#220000000002 "Invented name part"
  * part[strength].type = $220000000000#220000000004 "Strength part"
  * part[doseForm].type = $220000000000#220000000005 "Pharmaceutical dose form part"

  * usage
    * ^definition = "EMA IG 1.14.2"
    * country.coding
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
      * ^short = "EMA or ISO codes for country"
    * country.coding contains
        ema 1..1 and
        iso 0..1
    * country.coding[ema] from CountryEMA
      * system = $100000000002
    * country.coding[iso] from CountryISO
      * system = $iso-country

    * language.coding
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
      * ^short = "EMA or ISO codes for country"
    * language.coding contains
        ema 0..1 and
        bcp 0..1
    * language.coding[ema] from LanguageEMA
      * system = $100000072057
    * language.coding[bcp] from LanguageBCP
      * system = $BCP47


// PROFILE: Regulated Authorisation 
Profile: PPLRegulatedAuthorization
Parent: RegulatedAuthorization
Id: PPLRegulatedAuthorization
Title: "PPL Marketing Authorisation profile"
Description: """Regulated Authorization profile defines the Marketing Authorisation on product or package level"""

* identifier 1..*
  * ^short = "Marketing authorisation number"
  * ^definition = "EMA IG 2.2"
  * system = "http://ema.europa.eu/fhir/marketingAuthorizationNumber" // this is actually wrongish as the MA number may not be unique across EU

* subject only Reference(PPLMedicinalProductDefinition or PPLPackagedProductDefinition)
* subject 1..1
  * ^short = "Reference to the medicinal product or a single package, depending on how the MA has been issued"

* type 1..1
* type = $220000000060#220000000061 "Marketing Authorisation"

* region 1..1
* region.coding from CountryEMA
  * ^definition = "EMA IG 2.3"

* status 1..1
* status from SporRegulatoryStatus
  //* coding.system = $100000072049
  * ^short = "Marketing authorisation status"
  * ^definition = "EMA IG 2.4"

* statusDate
  * ^short = "Issue/changing date of the marketing authorisation"
  * ^definition = "EMA IG 2.5"

* holder 1..1
* holder only Reference(PPLOrganization)
  * ^definition = "EMA IG 2.8"
//  * identifier.system = $loc-id 
// I can't do the thing above, right? I will have to create PPLOrganization and reference that?
//If you use literal references, yes. If all you want to do is an identifier, then you can do this and constrain the identifier reference. TBD.
//TO DO I would prefer identifier only


// PROFILE: Manufactured Item Definition
Profile: PPLManufacturedItemDefinition
Parent: ManufacturedItemDefinition
Id: PPLManufacturedItemDefinition
Title: "PPL Manufactured Item profile"
Description: """Manufactured item is the countable element inside the package"""

* manufacturedDoseForm 1..1
* manufacturedDoseForm from PharmaceuticalDoseForm
  * ^short = "Dose form of the manufactured item (before preparing for administration)"
  * ^definition = "EMA IG 4.11.3"

* unitOfPresentation 1..1
* unitOfPresentation from UnitOfPresentation
  * ^short = "Unit of presentation of the manufactured item (before preparing for administration)"
  * ^definition = "EMA IG 4.11.1"


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
* formOf only Reference(PPLMedicinalProductDefinition)

* administrableDoseForm 1..1
* administrableDoseForm from PharmaceuticalDoseForm
//  * coding.system = $200000000004
  * ^short = "Dose form of the administrable product (after preparing for administration)"
  * ^definition = "EMA IG 6.2"

* unitOfPresentation 0..1
* unitOfPresentation from UnitOfPresentation
//  * coding.system = $200000000014
  * ^short = "Unit of presentation of the administrable product (after preparing for administration). Not applicable for certain products/packaging."
  * ^definition = "EMA IG 6.3"

* producedFrom
  * ^short = "References to manufactured items that are used in the preparation of this administrable product"
* producedFrom only Reference(PPLManufacturedItemDefinition)

* routeOfAdministration.code from RoutesAndMethodsOfAdministration
//  * code.coding.system = $100000073345
  * ^definition = "EMA IG 6.6"


// PROFILE: Ingredient
Profile: PPLIngredient
Parent: Ingredient
Id: PPLIngredient
Title: "PPL Ingredient profile"
Description: """Ingredient for the medicinal product, pharmaceutical product and/or manufactured item"""

* for 1..*
  * ^short = "Reference to the medicinal product, pharmaceutical product and/or manufactured item where the ingredient is used"
* for only Reference(PPLMedicinalProductDefinition or PPLAdministrableProductDefinition or PPLManufacturedItemDefinition)

* role // Default 100000072072 "Active"
  * ^short = "Role of the ingredient. Default is 100000072072|Active as PPL data normally only includes active ingredients."
  * ^definition = "EMA IG 5.1"
  * coding.system = $100000072050 //TO DO

* substance
  * code from SubstancesSMS
  * ^short = "Substance code from EMA SMS"
  * ^definition = "EMA IG 5.5"

  * strength 1..*
    * ^definition = "EMA IG 5.5.2"
    * presentationRatio
      * ^short = "Strength per unit of presentation (10mg/vial or 10mg/0.5ml where 0.5ml is the size of the vial)"
      * ^definition = "EMA IG 5.5.2"
      //* numerator.comparator.coding.system = $100000000008 // TO DO: not easily extendable, what to do with it?
      * numerator from UnitOfMeasurement
      * numerator 1..1
    //  * numerator.system = $100000110633
    //  * numerator.code from unit-of-measurement-vs
      * denominator 1..1
        * ^short = "Unit of measurement or unit of presentation"
      * denominator from AllUnits
      
    * concentrationRatio
      * ^short = "Strength per unit of measurement (20mg/1ml)"
      * ^definition = "EMA IG 5.5.2"
      //* numerator.comparator.coding.system = $100000000008 // TO DO: not easily extendable, what to do with it?
      * numerator 1..1
    //  * numerator.system = $100000110633
      * numerator from UnitOfMeasurement
      * denominator 1..1
    //  * denominator.system = $100000110633
      * denominator from UnitOfMeasurement

    * referenceStrength
      * ^definition = "EMA IG 5.5.3. According to EMA, this is a mandatory element for all products, which is not necessarily accepted by all NCAs, and it is ambivalent in ISO IDMP."
      * ^short = "Strenth expressed in terms of a reference substance; reference strength type not distinguished. According to EMA IG, all products need to have reference strentgh (repeating the strentgh, if needed)"
      * substance 1..1
        * ^short = "Substance code from EMA SMS"
      * substance from SubstancesSMS
      * strengthRatio
        * numerator 1..1
      //  * numerator.system = $100000110633
        * numerator from UnitOfMeasurement
        * denominator 1..1
          * ^short = "Unit of measurement or unit of presentation"
        * denominator from AllUnits

        
// PROFILE: Packaged Product
Profile: PPLPackagedProductDefinition
Parent: PackagedProductDefinition
Id: PPLPackagedProductDefinition
Title: "PPL Packaged Product profile"
Description: """Packaged Product"""

* identifier
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the packaged product: PCID, national ID, or other"
  * ^definition = "Identifier for the packaged product: PCID, national code or other."
* identifier contains
  pcid 1..1
//  * otherid 0..*   //TO DO: What to do about other slices?
* identifier[pcid]
  * system = "http://ema.europa.eu/example/pcid"
  * ^short = "PCID for the product. Consists of MPID + unique package code. For the same product PCID is different if the package material is different."
  * ^definition = "EMA IG 4.1"

* packageFor only Reference(PPLMedicinalProductDefinition)
* packageFor 1..*

* containedItemQuantity 1..*
//  * system = $200000000014
  * code from unit-of-presentation-vs
  * ^short = "Pack size. Repeated for combination packages."
  * ^definition = "EMA IG 4.4"

* description 1..1
  * ^definition = "EMA IG 4.2"
// TO DO description language as an extension. system = $100000072057

* legalStatusOfSupply 0..1
  * ^short = "Legal status of supply on the packaged product level."
  * ^definition = "EMA IG 4.5. Legal status of supply on the packaged product level. The same information can be repeated/differentiated on the medicinal product level"
  * code from legal-status-for-the-supply-vs
  * jurisdiction.coding from country-ema-vs

* marketingStatus
  * ^definition = "EMA IG 4.6"
  * country 1..1
    * coding from country-ema-vs
  * status 1..1
    * coding.system = $100000072052

* packaging 1..1
  * type 1..1
    * ^short = "Container type"
    * ^definition = "EMA IG 4.8.1"
    * coding.system = $100000073346
  
  * quantity 1..1
    * ^definition = "EMA IG 4.8.5"
  
  * material from material-vs
    //* coding.code from material-vs
    * ^definition = "EMA IG 4.8.7"
 
  * shelfLifeStorage
    * ^definition = "EMA IG 4.12"
    * type 1..1
    * type.coding.system = $100000073343
    * period[x] 1..1
  
  * containedItem
    * ^short = "An item (inner package or manufactured item) within the packaging"
    * ^definition = "EMA IG 4.9 or 4.8.3"
    * item only Reference(PPLPackagedProductDefinition or PPLManufacturedItemDefinition)
    * amount
      * ^short = "Number of the manufactured items (e.g. tablets) in this package layer or the amount of manufactured item (e.g. 20 g) in the unit of presentation defined in manufactured item definition"
      * ^definition = "EMA IG 4.11.2"
      * code from all-units-vs


// TO DO: I'm not sure we want to use Organisation as a separate resource, but right now it is. See the comment at RegulatedAuthorization
Profile: PPLOrganization
Parent: Organization
Id: PPLOrganization
Title: "PPL Organization"
Description: """Organization"""

* identifier 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the marketing authorisation holder"
  * ^definition = "EMA IG 2.8"

* identifier contains
  loc 1..1 and
  org 0..1

* identifier[loc] 
  * system = $loc-id
  * ^short = "Location ID from EMA SPOR OMS"

* identifier[org]
  * system = $org-id
  * ^short = "Organisation ID from EMA SPOR OMS"

* name 1..1
  * ^short = "Marketing authorisation holder's name from OMS"
