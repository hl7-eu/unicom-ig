ValueSet: AuthorisedDoseForm
Id: authorised-doseform-vs
Title: "Authorised Dose Form"
Description: "Value set for authorised dose form. Combines 4 SPOR/EDQM lists: Pharmaceutical dose form, Combined pharmaceutical dose form, Combined term, Combination package."
* include codes from system $200000000004 // Pharmaceutical Dose Forms
* include codes from system $200000000006 // Combined Pharmaceutical Dose Forms
* include codes from system $200000000007 // Combined Terms
* include codes from system $200000000008 // Combination Packages

/* TODO: fix
ValueSet: AllUnits
Id: all-units-vs
Title: "All units combined"
Description: "Value set for presentation strength denominator unit, combines units of measurement and units of presentation."
* include codes from system $100000110633 // Unit of Measurement
* include codes from system $200000000014 // Unit of Presentation
*/