Logical: MinimumAttributeList
Id: MinimumAttributeList
Title: "Minimum Attribute List for product specification"

* identifier 0..* BackboneElement "The identifier(s) for the medication" "The identifier(s) for the medication" //
  * pmsIdentifier 0..1 Identifier "Product Management Service Identifier (PMS ID)" "The Product Management Service Identifier is required as a specific identifier of medicinal products related to EMA."
    * ^mapping.identity = "MAL-PMS-ID" 
    * ^mapping.map = "PMS_ID"
  * mpIdentifier 0..1 Identifier "Medicinal Product Identifier (MPID)" "It is required as a specific national identifier of medicinal products, and it is most relevant for eD and PS." //
    * ^mapping.identity = "MAL-MPID" 
    * ^mapping.map = "MPID"
  * packagedProductIdentifier 0..1 Identifier "Packaged medicinal product Identifier (PCID) " "A specific national identifier of medicinal products. It is more relevant for eD and PS and should be preferred over MPID."
    * ^mapping.identity = "MAL-PCID" 
    * ^mapping.map = "PCID"
  * pharmaceuticalProductIdentifier 0..1 Identifier "Pharmaceutical product Identifier (PhPID)" "a specific identifier of medicinal products (same substance, strength, administrable dose form and unit of measurement)."
    * ^comment = "While not currently available, it should be provided when it is possible."
    * ^mapping.identity = "MAL-PHPID" 
    * ^mapping.map = "PHPID"
  * otherIdentifier 0..1 Identifier "Other identifier for the medicinal product" "Other business identifier for the product"
    * ^mapping.identity = "MAL-OTHERID" 
    * ^mapping.map = "OTHERID"
* medicinalProductFullName 0..1 string "Full product name" "Full name" //
  * ^mapping.identity = "MAL-MPNAME" 
  * ^mapping.map = "MPNAME"

* marketingAuthorisationHolder 0..1 Identifier "Marketing Authorization Holder" "Marketing Authorization Holder describes the name of the organisation that holds the marketing authorisation of a medicinal product." //
  * ^comment = "It should be indicated as listed in SPOR - Organisation Management System (OMS), using the 'LOC-ID' linked to the organization in this system."
  * ^mapping.identity = "MAL-MAH" 
  * ^mapping.map = "MAH"

* productClassification 0..1 BackboneElement "Product classification(s)" "Product classification(s)" //
  * atc 0..1 coded "ATC classification" "ATC classification" //
    * ^mapping.identity = "MAL-ATC" 
    * ^mapping.map = "ATC"
* routeOfAdministration  0..* coded "Route of Administration" "For most medicinal products there is only one possible 'Route of Administration' (RoA), however, in some cases, there are multiple possible RoA. In that case, the intended prescribed RoA must be specified over all possible RoA for a specific medicinal product."
  * ^mapping.identity = "MAL-ROUTE" 
  * ^mapping.map = "ROUTE"
* unitOfPresentation 0..1 coded "Unit of Presentation" "Unit of Presentation"
  * ^mapping.identity = "MAL-UOP" 
  * ^mapping.map = "UOP"
* authorisedPharmaceuticalForm 0..1 coded "Authorised Pharmaceutical Form" "Authorised Pharmaceutical Form"
  * ^mapping.identity = "MAL-AUTH-PHARM-FORM" 
  * ^mapping.map = "AUTH-PHARM-FORM"
* administrablDoseForm 0..1 coded "Administrable Dose Form" "Administrable Dose Form"
  * ^mapping.identity = "MAL-ADM-DOSE-FORM" 
  * ^mapping.map = "ADM-DOSE-FORM"

* composition 0..1 BackboneElement "Composition" "Composition"
  * ingredient 0..* BackboneElement "Ingredient" "Ingredient"
    * ^mapping.identity = "MAL-ING-ROLE" 
    * ^mapping.map = "ING-ROLE"
    * ingredientRole 1..1 coded "Ingredient role" "Ingredient role" 
    * substance  1..1 coded "Precise ingredient of a medicinal product" "Substance with the role of precise active ingredient"
      * ^mapping.identity = "MAL-SUBS" 
      * ^mapping.map = "SUBS"

    * referenceStrength 0..1 BackboneElement "Reference Strength (quantitative composition)" "Strength (quantitative composition)"
      * ^comment = "This attribute is the most frequently used in prescriptions. It considers only the strength of the active moiety. This information will be consumed by eHealth services and reference strength should be preferred over 'strength'."
      * ^mapping.identity = "MAL-REFSTRENGTH" 
      * ^mapping.map = "REFSTRENGTH"
      * substance  1..1 coded "Reference Strength Substance"
//        * ^mapping.identity = "MAL-SUBS" 
//        * ^mapping.map = "SUBS"
      * presentationStrength 0..1 Ratio "Presentation strength single value or low limit" "Presentation strength single value or low limit"
        * numerator 1..1 Quantity "numerator" "Numerator"
          * ^comment = "the numerator should be expressed with a unit (numeric value) and a unit of measurement (e.g., mg, mL)"
        * denominator 1..1 Quantity "denominator" "Denominator"
          * ^comment = "the denominator should be expressed with a unit (numeric value) and a unit of presentation (e.g., tablet, actuation)"
      * concentrationStrength 0..1 BackboneElement "Concentration Strength" "Strength (quantitative composition)"
        * ^comment = "The numerator and the denominator should be expressed with a unit of numeric value and a unit of measurement (e.g., mg, ml)"
        * numerator 1..1 Quantity "numerator" "Numerator"
        * denominator 0..1 Quantity "denominator" "Denominator"


    * strength 0..1 BackboneElement "Strength (quantitative composition)" "Strength (quantitative composition). Describes the strength of 'moiety + modifier' (presentation or concentration) and it is referent to 'substance'."
    * ^comment = "For each product, it has to be decided, based on the dose form type or pattern, whether the normalised strength will be a presentation strength or a concentration strength. It is one or the other for each product. "
      * ^mapping.identity = "MAL-STRENGTH" 
      * ^mapping.map = "STRENGTH"
      * presentationStrength 0..1 Ratio "Presentation strength single value or low limit" "Presentation strength single value or low limit"
        * numerator 1..1 Quantity "numerator" "Numerator"
          * ^comment = "the numerator should be expressed with a unit (numeric value) and a unit of measurement (e.g., mg, mL)"
        * denominator 0..1 Quantity "denominator" "Denominator"
          * ^comment = "the denominator should be expressed with a unit (numeric value) and a unit of presentation (e.g., tablet, actuation)"
      * concentrationStrength 0..1 BackboneElement "Concentration Strength" "Strength (quantitative composition)"
        * ^comment = "The numerator and the denominator should be expressed with a unit of numeric value and a unit of measurement (e.g., mg, ml)"
        * numerator 1..1 Quantity "numerator" "Numerator"
        * denominator 0..1 Quantity "denominator" "Denominator"

/*
"
    * ^comment = "
*/

* package 0..1 BackboneElement "Package item (container)" "Package item (container)"
  * type 0..1 code "Package item (container) type" "The type of package (required to describe complex medicinal product packages."
    * ^comment = "It should be associated with 'Package item (container) quantity'. For complex medicinal product packages27, this attribute can be duplicated to indicate the structure of the package"
//    * ^binding.strength = #required
  * size 0..1 Quantity "Package item (container) quantity" "Package item (container) quantity is required to describe complex packaging medicines."
    * ^comment = "It must be used to complement the information of the 'Package item (container) type' to describe their content."
    * ^mapping.identity = "MAL-PACKSIZE" 
    * ^mapping.map = "PACKSIZE"

  * manufacturedItem 0..* BackboneElement "Manufactured Item" "Manufactured Item"
    * UnitOfPresentation 0..1 string "Unit of Presentation" "Unit of Presentation"
      * ^comment = "In line with eHDSI CP-066 for most cases 'unit of presentation' will be the same for 'manufactured item' and 'pharmaceutical product'. However, in some cases they can be different (e.g., eye drop product - for 'manufactured Item' - 'Container'; for pharmaceutical product: 'drop').   "
    * ItemQuantity 0..1 Quantity "Manufactured Item Quantity" "Quantity of the medicinal product (manufactured item) in the package"
    * manufacturedDoseForm 0..1 coded "Manufactured Dose Form" "Manufactured Dose Form"
      * ^mapping.identity = "MAL-MANUF-DOSE-FORM" 
      * ^mapping.map = "MANUF-DOSE-FORM"


  * subpackage 0..1 BackboneElement "Subpackage content" "Subpackage content"
    * ^contentReference = "http://hl7.eu/fhir/ig/unicom/StructureDefinition/MinimumAttributeList#MinimumAttributeList.package"
    * ^mapping.identity = "MAL-SUBPACKAGE" 
    * ^mapping.map = "SUBPACKAGE"
