// 1. Extend Medication with drugCharacteristic complex extension. We can use this in any prescription etc.
Extension:      DrugCharacteristic
Parent:         Extension
Id:             drugCharacteristic
Title:          "Drug Characteristic"
Description:    "Drug Characteristic"
* extension contains
    characteristicType 1..1 and
    characteristicValue 1..1 
* extension[characteristicType].value[x] only CodeableConcept
* extension[characteristicValue].value[x] only string or Quantity or CodeableConcept or Attachment or base64Binary or Reference



Extension:      MedicationDefinition
Parent:         Extension
Id:             medicationDefinition
Title:          "Medication Definition extension"
Description:    "Medication Definition extension"
* value[x] only Reference 
* valueReference only Reference(MedicationKnowledge or Bundle)



Profile: DefinedMed
Parent: Medication
* extension contains
    DrugCharacteristic named drugCharacteristic 0..* and
    MedicationDefinition named medicationDefinition 0..*



// 2. Extend Medication with drugCharacteristics

Extension:  DefinedMedication
Parent:     Extension
Id:         definedMedication
* value[x] only CodeableConcept or Reference(DefinedMed)


CodeSystem: CSMedRelationTypes
Id: Cs-med-relation-types
Title: "Marketing Authorization Holder"
Description:  "Marketing Authorization Holder."
* #package-of "Package of"
* #contains "Contains"
* #matches "Matches"


ValueSet: VSMedRelationTypes
Id: vs-med-relation-types
Title: "Marketing Authorization Holder"
Description:  "Marketing Authorization Holder."
* include codes from system CSMedRelationTypes 


Extension:  MedRelation
Parent:     Extension
Id:         medRelation
* value[x] only Coding
* valueCoding.code from VSMedRelationTypes (required) 


Extension:  RelatedMedication
Parent:     Extension
Id:         relatedMedication
Title:          "Related Medication"
Description:    "Related Medication"
* extension contains
    MedRelation named medRelation 1..1 MS and
    DefinedMedication named definedMedication 1..* MS 


Profile: IntMedicationRequest
Parent: MedicationRequest
* medicationReference only Reference(DefinedMed)
* extension contains RelatedMedication named relatedMedication 0..1


