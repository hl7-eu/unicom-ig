### General

#### EMA ISO IDMP Implementation Guide

This IG follows the EMA IG, which has been published as a set of text documents. Currently, we don't have profiles for EMA IG, but we have the information needed for the profiles in the textual IG. Based on that information, the UNICOM PPL FHIR IG aims to be compliant with the EMA IG, but the number of data elements has been significantly reduced. Also, the elements defined as mandatory may differ. 

#### FHIR versions
EMA IG is based on FHIR version 4.6, but UNICOM PPL FHIR IG is based on FHIR R4B (Jan 2022).  OTSI SIIA KUUPÄEVAD
These versions introduce many changes, most significantly:
* direction of reference has been changed for Ingredient
* pack size as containedItemQuantity (described as extension in EMA IG)
* authorised dose form as combinedDoseForm (described as extension in EMA IG)
* shelf life no longer has its own data type

#### R5 Ballot introduces only a few additional changes for the data elements used in this IG:
* In MedicinalProductDefinition name.countryLanguage has been renamed to name.usage
* In PackagedProductDefinition package has been renamed to packaging
 
#### SPOR RMS lists
* There is no official source for EMA SPOR RMS lists in FHIR format. The lists used in this IG are derived from the versions published by EMA, but there is room for interpretation what exactly should be included in the final FHIR value set. These value sets are not automatically updated from EMA sources.
* All EMA SPOR RMS lists are defined as different code systems by EMA IG. Most value sets include all codes from the relevant code system. Exceptions to this are Authorised Dose Form (combines four EMA lists) and All Units (combines units of presentation and measurement).
* EMA SPOR provides their own codes for concepts from international code systems (EDQM, UCUM, WHO ATC, ISO country and IETF language codes). While we can argue if this is the best approach, this IG follows the EMA IG in that regard. For ATC classication separate slices are created to capture WHO ATC code as well as EMA SPOR RMS code. 


### Pharmaceutical/Administrable Product

* The system of PhPIDs is used for classification, not identification of pharmaceutical products. PhPIDs are calculated from active ingredients, Pharmaceutical/Administrable Product definition itself also includes information about all the excipients in the product. Therefore, L4 PhPID does not identify a pharmaceutical product, and it is wrong to assume that PhPIDs could be unique within a system. 

* Pharmaceutical/administrable products are normally not shared between medicinal products, as the list of excipients would be different in the original source. PPL example only has data about active ingredients, which results in having multiple seemingly identical pharmaceutical/administrable products.

* ProducedForm attribute references manufactured items that the administrable product contains. For example, a combination product of creme and tablets, would probably have two pharmaceutical products and either one would have producedFrom attribute to only one of these manufactured items. A combination product of powder and solvent for solution, would have the solution as the pharmaceutical product and it would reference both manufactured items. While this information is useful and easy to provide in FHIR, this link between pharmaceutical products and manufactured items is not present in ISO IDMP logical model or EMA IG.

* Unit of presentation is used as a product charecteristic in the pharmaceutical/administrable product. According to EMA, no unit of presentation is defined for continuous pharmaceutical products (creme tubes, bottles, etc). There is no clear line between continuous and non-continuous products, especially when simple administration devices are provided in the package. Different interpretations may exist.

### Strength & units

#### Concentration and presentation strength

Presentation strength can be per mass/volume of the unit of presentation.
Example: for a 0.6ml vial, both 6mg/vial and 6mg/0.6ml are considered presentation strength, but 10mg/1ml is concentration strength.

Presentation strength is typically given per manufactured item, but it can also be given for the volume of simplistic administration device that comes within the package (measuring cup, spoon, etc).

Reference strength does not have a distinction between presentation or concentration strength. In ISO IDMP model, reference strength is a subelement of strength, and the type of strength would be clear from the context. In FHIR, reference strength is positioned on the same level with concentration and presentation strength, which means that it cannot be stated if the reference strength used is concentration or presentation strength (normally it does not cause problems, as it's implied by the units used).


#### Reference strength

The most fiery discussions during the creation of this IG were around reference strength. The final decision was to conform to EMA IG (Ch 2. p 176; Ch 8. p28) and specify reference strength for all the active ingredients, simply repeating the strength in cases where no reference substance exists (e.g. clotrimazole).

There is no reference strength type in the EMA IG or FHIR specification, therefore this data element is not used in the PPL examples either. Reference strength in CDA documents can only be used together with the type of the reference strength, so this minor discrepancy has strong implications in certain contexts.

