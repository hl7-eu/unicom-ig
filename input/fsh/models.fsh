Invariant:   itemcontent-1
Description: "containedItem.containedPackage or containedItem.manufacturedItem SHALL be present, but not both"
Expression:  "containedPackage.exists() implies manufacturedItem.exists().not()"
Severity:    #error


Logical: FullMedicinalProduct
Title: "Medicinal Product Logical Model"
Description: "Logical model for a pilot product list's medicinal product"

* identifier 1..* Class "Identifiers"
  * mpId 1..1 II "Medicinal Product Identifier (MPID)"
  * pmsId 0..1 II "EMA PMS Identifier"
  * nationalId 0..* II "National/other identifier"
* domain 1..1 CD "Domain (human/veterinary)"
* legalStatusOfSupply 1..1 CD "Legal status of supply"
* authorisedDoseForm 1..1 CD "Authorised dose form"
* classification 1..* Class "Classifications"
  * classificationATC 1..1 CD "ATC classification"
  * classificationOther 0..* CD "Other classification"
* name 1..* Class "Name"
  * fullName 1..1 ST "Full name"
  * part 0..* Class "Name parts"
    * inventedName 1..1 ST "Invented name part"
    * strength 0..1 ST "Strength part"
    * doseForm 0..1 ST "Dose form part"
    * other 0..* ST "Other name parts"
  * nameUsage 0..* Class "Countries and languages where the name is used"
    * jurisdiction 1..1 ST "Country"
    * language 1..1 ST "Language" 
* marketingAuthorisation 0..* Class "Marketing Authorisation for the product"
  * marketingAuthorisationNumber 1..* II "Marketing authorisation number"
  * region 1..1 CD "Region"
  * marketingAuthorisationStatus 1..1 CD "Marketing authorisation status"
  * date 0..1 DT "Status date"
  * marketingAuthorisationHolder 1..1 Class "Marketing authorisation holder"
    * locationId 1..1 II "Location identifier"
    * organisationId 0..1 II "Organization identifier"
    * mahName 1..1 ST "Marketing authorisation holder's name"
//Local representative currently not included, but probably needed in several countries

* packagedProductDefinition 1..* Class "Packaged product"
  * identifier 0..* Class "Package identifier"
    * pcid 1..1 II "Packaged medicinal product ID (PCID)"
    * nationalId 0..* II "National package identifier"
  * description 0..1 Class "Package description"
    * descriptionText 1..1 ST "Package description text"
    * language 0..1 CD "Description language"
  * packSize 1..* PQ "Pack size, repeatable for different manufactured items"
  * legalStatusOfSupply 0..1 CD "Legal status of supply on package level"
//1  * marketingAuthorisation 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/FullMedicinalProduct#FullMedicinalProduct.marketingAuthorisation "Marketing authorisation on package level"
      //Local representative currently not included, but probably needed in several countries
  * marketingStatus 0..* Class "Marketing status"
    * country 1..1 CD "Country"
    * status 1..1 CD "Status"
  * packaging 1..1 Class "Package"
    * packageType 1..1 CD "Package type"
    * quantity 1..1 PQ "Package quantity (number of this type of items)" //always 1 for the outer package
    * material 0..* CD "Package material"
    * innerPackage 0..* Class "Inner Package"
      * containedItem 0..* Class "The content of the inner package"
        * amount 1..1 PQ "Amount of manufacturedItems (solid) or size of the manufactured item (liquid)"
        * obeys itemcontent-1
//1        * containedPackage 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/FullMedicinalProduct#FullMedicinalProduct.packagedProductDefinition.packaging "Inner Packages"
        * manufacturedItem 1..* Class "Manufactured item" // this can only be there if there are no inner package
          * manufacturedDoseForm 1..1 CD "Manufactured dose form"
          * unitOfPresentation 1..1 CD "Unit of presentation"
          * ingredient 1..* Class "Ingredient"
            * role 1..1 CD "Ingredient role"
            * substance 1..1 CD "Substance"
            * strength 1..* Class "Strength of active or other ingredient"
              * strengthType 1..1 CD "Strength type (concentration or presentation strength)"
              * strength 1..1 RTO "Strength"
                * numerator 1..1 PQ "Numerator"
                * denominator 1..1 PQ "Denominator"
              * referenceStrength 1..* Class "Reference strength"
                * substance 1..1 CD "Substance of reference strength"
                * strength 1..1 RTO "Strength"
                  * numerator 1..1 Class "Numerator"
                  * denominator 1..1 Class "Denominator"
* pharmaceuticalProduct 1..* Class "Pharmaceutical/administrable product"
  * identifier 0..* Class "Identifier"
    * phpid 0..* II "Pharmaceutical Product ID (PhPID)"
    * nationalId 0..* II "National ID"
  * administrableDoseForm 1..1 CD "Administrable Dose Form"
  * unitOfPresentation 0..1 CD "Unit of presentation"
  * routeOfAdministration 0..* CD "Route of administration"
  * ingredientPhP 1..* Class "Ingredient of the pharmaceutical/administrable product"
    * role 1..1 CD "Ingredient role"
    * substance 1..1 CD "Substance"
    * strength 1..* Class "Strength of active or other ingredient"
      * strengthType 1..1 CD "Strength type (concentration or presentation strength)"
      * strength 1..1 RTO "Strength"
        * numerator 1..1 PQ "Numerator"
        * denominator 1..1 PQ "Denominator"
      * referenceStrength 1..* Class "Reference strength"
        * substance 1..1 CD "Substance"
        * strength 1..1 RTO "Strength"
          * numerator 1..1 PQ "Numerator"
          * denominator 1..1 PQ "Denominator"

Logical: ManufacturedMaterial
Title: "DRAFT: MyHealth@EU medicinal product"
Description: "DRAFT. Crossborder eP/eD/PS medicinal product as represented in CDA."


* code 0..1 II "MPID or other medicinal product identifier"
* name 0..1 ST "Brand name according to the marketing authorisation"
* formcode 1..1 CD "Dose form. For branded products, authorised dose form is expected. From eHSDIDoseForm"
* asContent 1..1 Class "Package"
  * quantity 1..1 PQ "Quantity of product within this package item"
  * containerPackagedProduct 1..1 Class "Package item description"
    * code 0..1 II "Package identifier (PCID or national) if this is the actual outer box"
    * name 0..* ST "Name or description of the package"
    * formcode 0..1 CD "Type of packaging. From eHDSIPackage."
    * asContent 0..1 Class "Next layer of the package - the direction is inside out"
      * quantity 1..1 PQ "Quantity of inner package items in this package item"
      * containerPackagedProduct 0..1 Class ""
        * code 0..1 II "Package identifier (PCID or national) if this is the actual outer box"
        * name 0..* ST "Name or description of the package"
        * formcode 0..1 CD "Type of packaging"
//1        * asContent 0..1 contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/ManufacturedMaterial#ManufacturedMaterial.asContent "Another layer of packaging. Max 3 expected."

* asSpecializedKind 0..1 Class "ATC classification"
  * generalizedMaterialKind 1..1 Class "ATC classification"
    * code 0..1 CD "ATC code by WHO"
    * name 0..1 ST "ATC display name"
* asSpecializedKind2 0..* Class "PhPID, different levels are allowed"
  * generalizedMaterialKind 1..1 Class "PhPID"
    * code 0..1 CD "PhPID code"
    * name 0..* ST "Display name for PhPID"
* ingredient 1..* Class "Ingredient for the medicinal product"
  * quantity 1..1 RTO "Strength"
    * numerator 0..1 PQ "Numerator in strength"
    * denominator 0..1 PQ "Denominator in strength"
  * ingredientSubstance 0..1 Class "Active ingredient"
    * code 0..1 CD "Active ingredient coded element"
    * name 0..1 ST "Active ingredient as text"
* part 0..* Class "Product part - used for products that contain different manufactured items"
  * quantity 0..1 PQ "Quantity of this manufactured item in the package"
  * partProduct 1..1 Class "Description of the manufactured item"
    * formCode 0..1 CD "Dose form of the manufactured item (not present in wave 6?)"
//1    * asContent 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/ManufacturedMaterial#ManufacturedMaterial.asContent "Packaging in max 3 layers, see above."
//1    * asSpecializedKind 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/ManufacturedMaterial#ManufacturedMaterial.asSpecializedKind "PhPID for this part of the product - see above."
//1    * part 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/ManufacturedMaterial#ManufacturedMaterial.part "Part of the part product - see above."
//1    * ingredient 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/ManufacturedMaterial#ManufacturedMaterial.ingredient "Ingredients for this part of product - see above."


Logical: CrossBorderProduct
Title: "DRAFT: Medicinal Product in crossborder eP/eD"
Description: "DRAFT. Crossborder eP/eD/PS medicinal product as a implementation-agnostic logical model"

* medicinalProductIdentifier 0..* II "MPID or national identifier"
* packagedProductIdentifier 0..* II "PCID or national"
* pharmaceuticalProductIdentifier 0..* II "PhPID"
* atc 1..1 CD "ATC code"
* packSize 1..* PQ "Overall amount of product (100ml; 20 tablets; 1 creme & 6 pessaries)"
* fullName 0..* ST "Name of the product"
* doseForm 1..1 CD "Authorised dose form for eD; authorised or pharmaceutical for eP"
* constitution 1..* Class "Content of the product - defines ingredients, manufactured items, or device"
  * ingredient 0..* Class "Ingredients, by default only active ingredients"
    * role 1..1 CD "(might not be needed if only active ingredients are expected)"
    * substance 1..1 CD "Substance"
    * strengthInfo 1..* Class "Concentration or presentation strength"
      * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient"
      * referenceStrength 0..* Class "Reference strength; according to the substance+strength type above"
        * referenceSubstance 1..1 CD "Substance for reference strength"
        * strength 1..1 RTO "Reference strength"
  * manufacturedItem 0..* Class "Manufactured item if the prescription contains more than one type of items"
    * doseForm 1..1 CD "Manufactured item dose form"
//1    * ingredient 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/CrossBorderProduct#CrossBorderProduct.constitution.ingredient "Ingredients for this part of product - see above."
    * unitOfPresentation 0..* CD "Unit of presentation for the manufactured item"
    * containedQuantity 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)"
    * manufacturedItemQuantity 1..1 PQ "Number of such manufactured items in this product (5 vials)"
  * device 0..* Class "Administrative device included in the product"
    * deviceQuantity 1..1 PQ "Number of such devices"
    * device 1..1 CD "Device coded"
* marketingAuthorisationHolder 0..1 ST "MAH name - do we need more?"
* routeOfAdministration 1..* CD "Route of Administration - if we need it on product level"


Logical: MedicationModel
Title: "Medication for clinical workflows"
Description: "DRAFT. eP/eD/PS product"

* medicinalProductIdentifier 0..* II "MPID or national identifier"
* packagedProductIdentifier 0..* II "PCID or national"
* pharmaceuticalProductIdentifier 0..* II "PhPID"
* atc 1..1 CD "ATC code"
* classification 0..* CD "Classification"
* packSize 1..* PQ "Overall amount of product (100ml; 20 tablets; 1 creme & 6 pessaries)"
* name 0..* ST "Name of the product (full name, invented name, other)"
* doseForm 1..* Class "The intended or existing dose form for the product"
  * formCode 1..1 CD "The actual dose form"
  * type 0..1 CD "The type of dose form" 
//* authorisedDoseForm 0..1 CD "Authorised/Combined dose form" 
//* pharmaceuticalDoseForm 0..* CD "Pharmaceutical dose form" // not needed if we could have the mapping 
* manufacturedItem 1..* Class "Manufactured item if the prescription contains more than one type of items"
  * manufacturedDoseForm 1..1 CD "Manufactured item dose form"
  * ingredient 0..* Class "Ingredients"
    * role 1..1 CD "Role (might not be needed if only active ingredients are expected)"
    * substance 1..1 CD "Substance"
    * strengthInfo 1..* Class "Concentration or presentation strength"
      * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient"
      * strengthType 1..1 CD "Type of strength that is expressed"
      * strengthSubstance 0..1 CD "Substance that the strength refers to, if different from the main substance"
//        * refstrength 1..1 RTO "Reference strength"

/*
* ingredient
  * substance = #amlodipine
  * strengthInfo[+]
    * strength = "10 mg"
    * strengthType = #reference


* ingredient
  * substance = #amlodipine
  * strengthInfo[+]
    * strength = "10 mg"
    * strengthType = #reference
  * strengthInfo[+]
    * strength = "13.1 mg"
    * strengthType = #actual
    * strengthSubstance = #amlodipinebesilate

      
* ingredient
  * substance = #amlodipinebesilate
  * strengthInfo[+]
    * strength = "13.1 mg"
    * strengthType = #actual


* ingredient
  * substance = #amlodipine
  * strengthInfo[+]
    * strength = "13.1 mg"
    * strengthType = #actual
    * strengthSubstance = #amlodipinebesilate
  * strengthInfo[+]
    * strength = "10 mg"
    * strengthType = #reference

 

* ingredient
  * substance = #amlodipinebesilate
  * strengthInfo[+]
    * strength = "13.1 mg"
    * strengthType = #actual
  * strengthInfo[+]
    * strength = "10 mg"
    * strengthType = #reference
    * strengthSubstance = #amlodipine


*/


  * unitOfPresentation 0..* CD "Unit of presentation for the manufactured item"
  * containedQuantity 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)"
  * manufacturedItemQuantity 1..1 PQ "Number of such manufactured items in this product (5 vials)"
* device 0..* Class "Administrative device included in the product"
  * deviceQuantity 1..1 PQ "Number of such devices"
  * device 1..1 CD "Device coded"
* marketingAuthorisationHolder 0..1 ST "MAH name - do we need more?"
* routeOfAdministration 1..* CD "Route of Administration - if we need it on product level"

// package type
// administrable dose form
// narcotic indicator?    
