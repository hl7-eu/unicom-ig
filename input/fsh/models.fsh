Logical: FullMedicinalProduct

* medicinalProduct 1..1 class "Medicinal Product"
  * mpId 1..1 II "Medicinal Product Identifier"
  * pmsId 0..1 II "PMS Identifier"
  * nationalId 0..* II "national/other identifier"
  * domain 1..1 CD "Domain"
  // we'll handle the codesystem identification next
  * status 0..1 CD "Status" // is this needed?
  * legalStatusOfSupply 0..1 CD "Legal status of Supply"
  * authorisedDoseForm 1..1 CD "Authorised Dose Form"
     // what's with this valueset?
  * classificationATC 0..* CD "ATC Classification"
  * name 1..1 class "Name"
    * fullName 1..1 ST "Full Name"
    * nameParts 0..1 class "Name parts"
      * inventedName 1..1 ST "Invented name part"
      * strength 0..1 ST "Strength dose form part"
      * doseForm 0..1 ST "Dose form name part"
    * nameUsage 0..1 class "Countries and languages where the name is used"
      * country 1..1 ST "Country - ISO 3166-1-2 or 3166-1-3"
      * language 1..1 ST "Language - IETF BCP 47"

* marketingAuthorization 1..* class "Marketing Authorization(s) for the product"






// Package for  0..* (Reference Medicinal Product)
// Package description 0..1
//   Description language 0..1
// Package size 1..*
//   Value 1..1
//   Unit 1..1
// Marketing Status 0..*
//   Country 1..1
//   Status 1..1
// Package 1..1
//   Package type 0..1
//   Package quantity 0..1
//   Package material 0..*
//   Inner package: Repeat Package 0..*
//   Contained item 0..* 
//     Item: Reference Manufactured Item 1..1
//     Item amount 1..1
//       Value (number) 1..1
//       Unit 0..1
