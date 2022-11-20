// Dose forms
ValueSet: AuthorisedDoseForm
Id: authorised-doseform-vs
Title: "Authorised Dose Form"
Description: "Value set for authorised dose form. Combines 4 SPOR/EDQM lists: Pharmaceutical dose form, Combined pharmaceutical dose form, Combined term, Combination package."
* include codes from system $200000000004 // Pharmaceutical Dose Forms
* include codes from system $200000000006 // Combined Pharmaceutical Dose Forms
* include codes from system $200000000007 // Combined Terms
* include codes from system $200000000008 // Combination Packages

ValueSet: PharmaceuticalDoseForm
Id: pharmaceutical-doseform-vs
Title: "Pharmaceutical Dose Form"
Description: "Pharmaceutical dose form. Does not include combination dose forms."
* include codes from system $200000000004 // Pharmaceutical Dose Forms

// Units
ValueSet: UnitOfMeasurement
Id: unit-of-measurement-vs
Title: "Unit of Measurement EMA"
Description: "Units of measurement. EMA SPOR RMS list based on UCUM."
* include codes from system $100000110633 // Unit of Measurement

ValueSet: UnitOfPresentation
Id: unit-of-presentation-vs
Title: "Unit of Presentation EMA"
Description: "Units of presentation. EMA SPOR RMS list based on EDQM."
* include codes from system $200000000014 // Unit of Presentation

ValueSet: AllUnits
Id: all-units-vs
Title: "All Units Combined"
Description: "Value set for presentation strength denominator unit, combines units of measurement and units of presentation."
* include codes from system $100000110633 // Unit of Measurement
* include codes from system $200000000014 // Unit of Presentation

// Other EMA value sets
ValueSet: LegalStatusForTheSupply
Id: legal-status-for-the-supply-vs
Title: "Legal Status for the Supply"
Description: "EMA SPOR RMS list"
* include codes from system $100000072051 // Legal Status for the Supply

ValueSet: Material
Id: material-vs
Title: "Material"
Description: "Package material. EMA SPOR RMS LIST."
* include codes from system $200000003199 // Material

ValueSet: RoutesAndMethodsOfAdministration
Id: routes-and-methods-of-administration-vs
Title: "Routes and Methods of Administration"
Description: "Routes and methods of medication administration. EMA SPOR RMS list."
* include codes from system $100000073345 // Routes and Methods of Administration