Invariant:   itemcontent-1
Description: "containedItem.containedPackage or containedItem.manufacturedItem SHALL be present, but not both"
Expression:  "containedPackage.exists() implies manufacturedItem.exists().not()"
Severity:    #error

//FullMedicinalProduct.packagedProductDefinition.package.innerPackage.containedItem




Logical: FullMedicinalProduct
Title: "Medicinal Product"
Description: "Medicinal Product"

* identifier 1..* class "Identifiers"
  * mpId 1..1 II "Medicinal Product Identifier (MPID)"
  * pmsId 0..1 II "EMA PMS Identifier"
  * nationalId 0..* II "National/other identifier"
* domain 1..1 CD "Domain (human/veterinary)"
// we'll handle the codesystem identification next
* legalStatusOfSupply 1..1 CD "Legal status of supply"
* authorisedDoseForm 1..1 CD "Authorised dose form"
    // what's with this valueset?
* classification 1..* class "Classifications"
  * classificationATC 1..1 CD "ATC classification"
  * classificationOther 0..* CD "Other classification"
* name 1..* class "Name"
  * fullName 1..1 ST "Full name"
  * namePart 0..3 class "Name parts"
    * inventedName 1..1 ST "Invented name part"
    * strength 0..1 ST "Strength part"
    * doseForm 0..1 ST "Dose form part"
  * nameUsage 0..* class "Countries and languages where the name is used"
    * jurisdiction 1..1 ST "Country"
    //ISO 3166-1-2 or 3166-1-3  or EMA SPOR 
    * language 1..1 ST "Language" 
    // IETF BCP 47 this is unclear why this is a repeated flat structure. 


* marketingAuthorisation 0..* class "Marketing Authorisation for the product"
  * marketingAuthorisationNumber 1..* II "Marketing authorisation number"
  * region 1..1 CD "Region"
  * marketingAuthorisationStatus 1..1 CD "Marketing authorisation status"
  * date 0..1 DT "Status date"
  * marketingAuthorisationHolder 1..1 class "Marketing authorisation holder"
    * locationId 1..1 II "Location identifier"
    * organisationId 0..1 II "Organization identifier"
    * mahName 1..1 ST "Marketing authorisation holder's name"
//Local representative currently not included, but probably needed in several countries

* pharmaceuticalProduct 1..* class "Pharmaceutical/administrable product"
  * identifier 0..* class "Identifier"
    * phpid 0..* II "Pharmaceutical Product ID (PhPID)"
    * nationalId 0..* II "National ID"
  * administrableDoseForm 1..1 CD "Administrable Dose Form"
  * unitOfPresentation 0..1 CD "Unit of presentation"
  * routeOfAdministration 0..* CD "Route of administration"
  // producedFrom 0..* R "Reference to manufactured item which the ph. product consists of"
  * ingredient 1..* class "Ingredient"
    * role 1..1 CD "Ingredient role"
    * substance 1..1 II "Substance"
    * strength 1..* class "Strength"
      * strengthType 1..1 CD "Strength type (concentration or presentation strength)"
      * strength 1..1 class "Strength"
        * numerator 1..1 class "Numerator"
          * comparator 1..1 CD "Comparator"
          * value 1..1 ST "Value"
          * unit 1..1 ST "Unit of measurement"
        * denominator 1..1 class "Denominator"
          * value 1..1 ST "Value"
          * unit 1..1 ST "Unit" // which is the unit of presentation, IF the type = presentation
      * referenceStrength 1..* class "Reference strength"
        * substance 1..1 II "Substance"
        * strength 1..1 class "Strength"
          * numerator 1..1 class "Numerator"
            * comparator 1..1 CD "Comparator"
            * value 1..1 ST "Value"
            * unit 1..1 ST "Unit of measurement"
          * denominator 1..1 class "Denominator"
            * value 1..1 ST "Value"
            * unit 1..1 ST "Unit" // which is the unit of presentation, IF the type = presentation

* packagedProductDefinition 1..* class "Packaged product"
  * identifier 0..* class "Package identifier"
    * pcid 1..1 II "Packaged medicinal product ID (PCID)"
    * national_id 0..* II "National package identifier"
  * description 0..1 class "Package description"
    * language 0..1 CD "Description language"
  * packSize 1..* class "Pack size"
    * value 1..1 QT "Value"
    * unit 1..1 CD "Unit"
  * legalStatusOfSupply 0..1 CD "Legal status of supply on package level"
  * marketingAuthorisation 0..* class "Marketing authorisation on package level"
    * marketingAuthorisationNumber 1..* II "Marketing authorisation number"
    * region 1..1 CD "Region"
    * marketingAuthorisationStatus 1..1 CD "Marketing authorisation status"
    * date 0..1 DT "Status date"
    * marketingAuthorisationHolder 1..1 class "Marketing authorisation holder"
      * locationId 1..1 II "Location identifier"
      * organisationId 0..1 II "Organization identifier"
      * mahName 1..1 ST "Marketing authorisation holder's name"
      //Local representative currently not included, but probably needed in several countries
  * marketingStatus 0..* class "Marketing status"
    * country 1..1 CD "Country"
    * status 1..1 CD "Status"
  * package 1..1 class "Package"
    * packageType 1..1 CD "Package type"
    * quantity 1..1 QT "Package quantity" //always 1 for the outer package
    * material 0..* CD "Package material"
    * innerPackage 0..* class "Inner Package"
      * containedItem 0..* class "The content of the inner package"
        * amount 1..1 class "Amount of manufacturedItems (solid) or size of the manufactured item (liquid)"
          * value 1..1 QT "Value"
          * unit 0..1 CD "Unit"
        * obeys itemcontent-1

        * containedPackage 0..* contentReference http://unicom-project.eu/fhir/StructureDefinition/FullMedicinalProduct#FullMedicinalProduct.packagedProductDefinition.package "Inner Packages"
        * manufacturedItem 1..* class "Manufactured item" // this can only be there if there are no inner package
          * manufacturedDoseForm 1..1 CD "Manufactured dose form"
          * unitOfPresentation 1..1 CD "Unit of presentation"
          * ingredient 1..* class "Ingredient"
            * role 1..1 CD "Ingredient role"
            * substance 1..1 II "Substance"
            * strength 1..* class "Strength"
              * strengthType 1..1 CD "Strength type (concentration or presentation strength)"
              * strength 1..1 class "Strength"
                * numerator 1..1 class "Numerator"
                  * comparator 1..1 CD "Comparator"
                  * value 1..1 ST "Value"
                  * unit 1..1 ST "Unit of Measurement"
                * denominator 1..1 class "Denominator"
                  * value 1..1 ST "Value"
                  * unit 1..1 ST "Unit" // which is the unit of presentation, IF the type = presentation
              * referenceStrength 1..* class "Reference strength"
                * substance 1..1 II "Substance"
                * strength 1..1 class "Strength"
                  * numerator 1..1 class "Numerator"
                    * comparator 1..1 CD "Comparator"
                    * value 1..1 ST "Value"
                    * unit 1..1 ST "Unit of Measurement"
                  * denominator 1..1 class "Denominator"
                    * value 1..1 ST "Value"
                    * unit 1..1 ST "Unit" // which is the unit of presentation, IF the type = presentation


      


