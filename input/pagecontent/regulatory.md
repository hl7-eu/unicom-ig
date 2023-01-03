
### Overview
This is FHIR Implementation Guide for UNICOM project, created to assist work with pilot product list product data in FHIR.

This specification is a combined effort of several work packages of UNICOM project.   

The implementation guide consists of the following   artifacts:
- Logical model for defining medicinal product (basic data   elements suitable for wide range of different use cases); 
- FHIR profiles for defining a medicinal product using resources in Medication Definition module.
- Example resources for different
   medicinal products.

Implementation guide follows the EMA Product Management Service specifications (including EMA SPOR terminology), but it does not cover full regulatory data.

Data elements for product definition are considered enough for most clinical and cross-border data exchange use cases. Data elements specific to regulatory use cases, have been omitted in order to provide cleaner and easier overview of core medication data.

References to source information in EMA implementation guide are made available in the profiles (hover the name of the attribute to see corresponding EMA IG paragraph).

Profiles specify the core set of attributes, but are left open for additions if something more specific needed. For example, national identifiers are not defined as separate attributes in the profile, but this data can always be added in accordance with the specification of the underlying FHIR resource. Please note that on the Artifacts page, there are two types of profiles: regulatory profiles and transition profiles. While regulatory profiles follow the EMA IG, the transition profiles are purely a technical intermediate product to allow processing incomplete data.

### Logical model
ISO IDMP logical model includes full regulatory data, which is usually more than needed in the eHealth services. 
[**UNICOM IG logical model**](StructureDefinition-FullMedicinalProduct.html) is a subset of ISO IDMP data that is typically used to represent core medication data.
Logical model is described using a FHIR logical model resource, but it is not implementation-specific, and it aims to describe the regulatory data model in a simple and logical way.   

### Profiles
The aim of profiling was to combine FHIR base specification with EMA ISO IDMP Implementation Guide (specifying cardinalities and value set bindings, and adding additional information).
The medication data in UNICOM project uses profiles for the following entities:
- [Medicinal Product](StructureDefinition-PPLMedicinalProductDefinition.html) 
- [Administrable/Pharmaceutical Product](StructureDefinition-PPLAdministrableProductDefinition.html)
- [Packaged Product](StructureDefinition-PPLPackagedProductDefinition.html) 
- [Manufactured Item](StructureDefinition-PPLManufacturedItemDefinition.html)
- [Ingredient](StructureDefinition-PPLIngredient.html)
- [Marketing Authorisation](StructureDefinition-PPLRegulatedAuthorization.html)
- [Organization (for marketing authorisation holder)](StructureDefinition-PPLOrganization.html)

On the [Artifacts](Artifacts.html) page you will also find another set of similar profiles, which are described as data transformation profiles. These profiles are very similar to regulatory profiles by structure, but have less restrictions and terminology bindings in order to allow technical data processing while data is still incomplete.

### Terminology
Regulatory profiles use [EMA SPOR RMS](https://spor.ema.europa.eu/rmswi/#/) lists for value sets. 

UNICOM implementation guide also includes international terminologies like WHO ATC, EDQM, UCUM, etc.

Value set bindings are defined in profiles, value sets can be found on the Artifacts page (section [Value Sets](artifacts.html#terminology-value-sets) and section [Code Systems](artifacts.html#terminology-code-systems)). 

### Example Data
All FHIR profiles are illustrated with example data. 
For better understanding, there are also examples of different products as FHIR bundles. Please see the Artifacts page [Example Instances section](artifacts.html#example-example-instances).

Not all UNICOM data is hosted inside the implementation guide. 
There is work in progress for creating more ISO IDMP compatible data for UNICOM pilots to use. Currently, some of the publicly reachable sources are:
- WP6 database with FHIR API
- UFIS server

### Guidance and references

#### ISO IDMP
- [ISO 11615](https://www.iso.org/standard/70150.html)
- [ISO 11616](https://www.iso.org/standard/70044.html)
- [ISO 11238](https://www.iso.org/standard/69697.html)
- [ISO 11239](https://www.iso.org/standard/55032.html)
- [ISO 11240](https://www.iso.org/standard/55033.html)

#### HL7 FHIR
UNICOM implementation guide is based on FHIR version 4.3.0, and the core set of resources can be found in [MedicationDefinition module](https://www.hl7.org/fhir/medication-definition-module.html)).
EMA Implementation Guide is based on [FHIR version 4.6.0](http://hl7.org/fhir/2021May/), which is a slightly older version. Please see [Known Issues](issues.html#fhir-versions) for more information about FHIR versions.

#### EMA Implementation Guide
European Medicines Agency has published a set of documents to provide implementation guidance for regulatory authorities. These documents can be publicly accessed on EMA web page:
[EMA EU ISO IDMP Implementation Guide 2.1](https://www.ema.europa.eu/en/human-regulatory/research-development/data-medicines-iso-idmp-standards/spor-master-data/substance-product-data-management-services#eu-idmp-implementation-guide---version-2.1.1-section)

For UNICOM IG users, the following parts of EMA IG may be of more interest:
- [Product management services IG with FHIR references](https://www.ema.europa.eu/documents/regulatory-procedural-guideline/product-management-services-pms-implementation-international-organization-standardization-iso_en-0.pdf)
- [Practical examples](https://www.ema.europa.eu/documents/regulatory-procedural-guideline/product-management-service-pms-implementation-international-organization-standardization-iso_en.pdf)
- [Full representation of ISO IDMP](https://www.ema.europa.eu/documents/other/product-management-service-pms-implementation-international-organization-standardization-iso_en.pdf)

