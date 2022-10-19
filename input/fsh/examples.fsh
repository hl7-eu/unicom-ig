Instance: exampleMPD
InstanceOf: PPLMedicinalProductDefinition

* identifier[mpid].value = "123"
* identifier[1].value = "EE123"
* identifier[1].system = "http://estonia.ee"

* name.productName = "whatever"
* name.part[invented].part = "invented name"

Instance: examplePPD
InstanceOf: PPLPackagedProductDefinition

* packaging.containedItem.item.concept = #30002000 "Applicator"

