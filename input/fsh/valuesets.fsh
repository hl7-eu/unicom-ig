ValueSet: VsWhoAtcUnicom
Id: whoatc-unicom
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system.  Note: The currently implemented code system and the value set expansion contain only a set of example ATC codes, not the complete code system content."
* ^status = #active
* ^experimental = false
* ^publisher = "UNICOM Project"
* ^immutable = false
* ^copyright = "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/"
* include codes from system $who-atc


ValueSet: SubstancesSMS
Id: substances-vs
Title: "EMA SPOR SMS Substances" 
Description: "Value set for substances, PPL subset from SMS."
* ^experimental = false
* include codes from system $sms // EMA SPOR SMS

ValueSet: SporRecordStatus
Id: record-status-spor-vs
Title: "EMA SPOR Record Status" 
Description: "Value set for record status."
* ^experimental = false
* include codes from system $200000005003 // Record Status

ValueSet: SporAtc
Id: atc-spor-vs
Title: "EMA SPOR ATC"
Description: "Value set for Anatomical Therapeutic Chemical classification system Human and Veterinary. It combines 2 SPOR/WHO lists"
* ^experimental = false
* include codes from system $100000093533 // Anatomical Therapeutic Chemical classification system - Human
//* include codes from system $100000116677 // Anatomical Therapeutic Chemical classification system - Veterinary

ValueSet: SporRegulatoryStatus
Id: regulatory-status-spor-vs
Title: "EMA SPOR Regulatory Entitlement Status"
Description: "Regulatory Entitlement Status"
* ^experimental = false
* include codes from system $100000072049 // Regulatory Entitlement Status

ValueSet: SporMarketingStatus
Id: marketing-status-spor-vs
Title: "EMA SPOR Marketing Status"
Description: "Marketing Status"
* ^experimental = false
* include codes from system $100000072052 // Marketing Status

ValueSet: SporPackaging
Id: packaging-spor-vs
Title: "EMA SPOR Packaging"
Description: "Packaging"
* ^experimental = false
* include codes from system $100000073346 // Packaging


ValueSet: SporShelfLifeType
Id: shelflifetype-spor-vs
Title: "EMA SPOR Shelf Life Type"
Description: "Shelf Life Type"
* ^experimental = false
* include codes from system $100000073343 // Shelf Life Type

// Dose forms
ValueSet: AuthorisedDoseForm
Id: authorised-doseform-vs
Title: "EMA SPOR Authorised Dose Form"
Description: "Value set for authorised dose form. Combines 4 SPOR/EDQM lists: Pharmaceutical dose form, Combined pharmaceutical dose form, Combined term, Combination package."
* ^experimental = false
* include codes from system $200000000004 // Pharmaceutical Dose Forms
* include codes from system $200000000006 // Combined Pharmaceutical Dose Forms
* include codes from system $200000000007 // Combined Terms
* include codes from system $200000000008 // Combination Packages

ValueSet: PharmaceuticalDoseForm
Id: pharmaceutical-doseform-vs
Title: "EMA SPOR Pharmaceutical Dose Form"
Description: "Pharmaceutical dose form. Does not include combination dose forms."
* ^experimental = false
* include codes from system $200000000004 // Pharmaceutical Dose Forms

// Units
ValueSet: UnitOfMeasurement
Id: unit-of-measurement-vs
Title: "EMA SPOR Unit of Measurement"
Description: "Units of measurement. EMA SPOR RMS list based on UCUM."
* ^experimental = false
* include codes from system $100000110633 // Unit of Measurement

ValueSet: UnitOfPresentation
Id: unit-of-presentation-vs
Title: "EMA SPOR Unit of Presentation"
Description: "Units of presentation. EMA SPOR RMS list based on EDQM."
* ^experimental = false
* include codes from system $200000000014 // Unit of Presentation

ValueSet: AllUnits
Id: all-units-vs
Title: "EMA SPOR All Units Combined"
Description: "Value set for presentation strength denominator unit, combines units of measurement and units of presentation."
* ^experimental = false
* include codes from system $100000110633 // Unit of Measurement
* include codes from system $200000000014 // Unit of Presentation

// Other EMA value sets
ValueSet: LegalStatusForTheSupply
Id: legal-status-for-the-supply-vs
Title: "EMA SPOR Legal Status for the Supply"
Description: "EMA SPOR RMS list"
* ^experimental = false
* include codes from system $100000072051 // Legal Status for the Supply

ValueSet: Material
Id: material-vs
Title: "EMA SPOR Material"
Description: "Package material. EMA SPOR RMS LIST."
* ^experimental = false
* include codes from system $200000003199 // Material

ValueSet: RoutesAndMethodsOfAdministration
Id: routes-and-methods-of-administration-vs
Title: "EMA SPOR Routes and Methods of Administration"
Description: "Routes and methods of medication administration. EMA SPOR RMS list, based on EDQM."
* ^experimental = false
* include codes from system $100000073345 // Routes and Methods of Administration

ValueSet: Domain
Id: domain-vs
Title: "EMA SPOR Domain"
Description: "Domain of the medicinal product. EMA SPOR RMS list."
* ^experimental = false
* include codes from system $100000000004 // Domain

ValueSet: CountryEMA
Id: country-ema-vs
Title: "EMA SPOR Country"
Description: "Countries. EMA SPOR RMS list."
* ^experimental = false
* include codes from system $100000000002 // Country

ValueSet: CountryISO
Id: country-iso-vs
Title: "Country (ISO 3166-1-2)"
Description: "Countries"
* ^experimental = false
* include codes from system $iso-country  // FHIR Country value set based on ISO 3166-1-2

ValueSet: LanguageEMA
Id: language-ema-vs
Title: "EMA SPOR Language"
Description: "Languages. EMA SPOR RMS list."
* ^experimental = false
* include codes from system $100000072057 // Language

ValueSet: LanguageBCP
Id: language-bcp-vs
Title: "Language (FHIR)"
Description: "All languages"
* ^experimental = false
* include codes from system $BCP47 // FHIR all languages value set

