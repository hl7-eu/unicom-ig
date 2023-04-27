
### Clinical Use

ISO IDMP in its full complexity is designed for regulatory use. However, a subset of product data is perfectly suitable for clinical use as well. In most countries, information about authorised products is published by the regulatory authority in a public registry. If or how this data is used by the eHealth applications varies a lot across different countries.
One goal of UNICOM is to build the bridge between regulatory medication data and clinical medication data, so that every party in the country would use the data originating from the same source. This would ensure better interoperability on a national level as well as in crossborder services.

UNICOM FHIR Implementation Guide has separate sections to describe the regulatory data as well as eHealth data, and to draw attention to possible mapping and simplification needs.

In HL7 FHIR, ISO IDMP compatible regulatory resources are in [MedicationDefinition module](https://hl7.org/fhir/medication-definition-module.html). Clinical resources (like MedicationRequest, typically used for e-prescription) use either [Medication](https://hl7.org/fhir/medication.html) resource or codeable concepts defined in a terminology. 

#### MyHealth@EU crossborder services
##### Data exchange standard
EU crossborder services (ePrescription, eDispensation, Patient Summary) use HL7 CDA as the common data exchange format (see specifications LINK). Therefore, one of the tasks in UNICOM is to explain how ISO IDMP FHIR resources relate to data elements used in MyHealth@EU CDA templates. Mapping between data elements from FHIR MedicationDefinition module and MyHealth@EU ManufacturedMaterial template was done in cooperation of UNICOM WP1, WP4, and WP6. This mapping will be published in the UNICOM IG soon, it can already be made available on request.



##### Preferred code systems
MyHealth@EU specifies the following code systems for describing medication data:
- EDQM for dose forms, packaging, and units of presentation
- UCUM for units of measurement
- WHO ATC for medication classification
- EMA SPOR SMS for active ingredients


All these code systems have been recoded in EMA SPOR, stating in most cases, that the original source is the international code system mentioned above. However, EMA SPOR RMS lists may contain concepts that are not mappable to the original source (EXAMPLE). For units of measurement and countries EMA provides mappings, but does not state UCUM or ISO to be the sources of the list. Any implementation should be aware of the need of mapping and handling possible unmapped concepts.

#### Medicinal products as coded concepts in a terminology

SNOMED CT international edition does not contain information about specific products. Medicinal product concepts are provided as virtual medicinal products, without any indication to brand or excipients. For the same reason, it also does not contain complex packaging and combined dose forms. 

In some countries the SNOMED CT national release centre uses the regulatory data to create national SNOMED CT drug extension, which includes actual branded products. This is used, for example, in Spain and Norway, where regulatory data is used in the clinical domain, but in a completely different format.

