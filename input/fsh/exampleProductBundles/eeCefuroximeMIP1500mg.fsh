Instance: 004-Cefuroxime-MIP-1500mg-EE-FullProduct
InstanceOf: Bundle
Usage: #example
Description: "Cefuroxime MIP 1500mg Powder for solution for injection/infusion. Estonia. Strength in milligrams; man. item quantity unknown; transformation before administration."

* type = #collection
* entry[0].resource = Cefuroxime-MIP-1500mg-EE-MPD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "MedicinalProductDefinition-Cefuroxime-MIP-1500mg-EE-MPD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/MedicinalProductDefinition-Cefuroxime-MIP-1500mg-EE-MPD"

* entry[+].resource = Cefuroxime-MIP-1500mg-EE-RA
//* entry[=].request.method = #PUT
//* entry[=].request.url = "RegulatedAuthorization-Cefuroxime-MIP-1500mg-EE-RA"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/RegulatedAuthorization-Cefuroxime-MIP-1500mg-EE-RA"

* entry[+].resource = LOC-100009199-Mip
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Organization/LOC-100009199-Mip"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Organization-LOC-100009199-Mip"

* entry[+].resource = Cefuroxime-MIP-1500mg-EE-APD
//* entry[=].request.method = #PUT
//* entry[=].request.url = "AdministrableProductDefinition-Cefuroxime-MIP-1500mg-EE-APD"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/AdministrableProductDefinition-Cefuroxime-MIP-1500mg-EE-APD"

* entry[+].resource = Cefuroxime-MIP-1500mg-EE-MID
//* entry[=].request.method = #PUT
//* entry[=].request.url = "ManufacturedItemDefinition-Cefuroxime-MIP-1500mg-EE-MID"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/ManufacturedItemDefinition-Cefuroxime-MIP-1500mg-EE-MID"

* entry[+].resource = Cefuroxime-MIP-1500mg-EE-I
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Ingredient-Cefuroxime-MIP-1500mg-EE-I"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/Ingredient-Cefuroxime-MIP-1500mg-EE-I"

* entry[+].resource = Cefuroxime-MIP-1500mg-EE-PPD-1529940
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Cefuroxime-MIP-1500mg-EE-PPD-1529940"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Cefuroxime-MIP-1500mg-EE-PPD-1529940"

* entry[+].resource = Cefuroxime-MIP-1500mg-EE-PPD-1529962
//* entry[=].request.method = #PUT
//* entry[=].request.url = "PackagedProductDefinition-Cefuroxime-MIP-1500mg-EE-PPD-1529962"
* entry[=].fullUrl = "https://hl7-eu.github.io/unicom-ig/branches/mpd-r4b/PackagedProductDefinition-Cefuroxime-MIP-1500mg-EE-PPD-1529962"

// See examples of the resources in file 'examplesSingleProfiles.fsh'