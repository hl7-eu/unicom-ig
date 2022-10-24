### Transaction 1 - Get prescription
**This transaction is intended to correspond to eHDSI CDA content, not replacing it. Further analysis is required to decide how this object gets created, shared and consulted across borders**


|Method|Resource|Payload|
|----|----|----|
|GET|MedicationRequest|patient id<br/>date<br/>| 

Example
```
GET {host}/MedicationRequest?patient=x
```


### Transaction 2 - Get exact matching product

This transaction requests from the server an exact match for the product given its identifiers or attributes.

Open issues:
* Medication or MedicationKnowledge?
* Medication doesn't allow searching for strength
* 

|Method|Resource|Payload|
|----|----|----|
|GET|Medication|product-code<br/>substance<br/>strength<br/>dose-form<br/>| 

Example
```
GET {host}/Medication?doseform=x&ingredient-code=y&ingredient-strength=z
```



### Transaction 3, 4 - Get "equivalent" dose forms / substances

This transaction requests from the server the equivalent/approximate values for each of the attributes - in this case, dose form and substance.
**Note that this is not validated as a good approach - only with the PoC and realistic data this can be further validated**

Open issues:
* Which rules do we use? For PoC, can we use Strength, substance, dose form?
* How are the rules defined computably?
* How are "equivalents" defined? Is an ontology sufficient?
* Where does the master data come from? 

|Method|Resource|Payload|
|----|----|----|
|POST|/ValueSet/$expand|Parameters for value set generation| 

Example
```
POST {{host}}/ValueSet/$expand HTTP/1.1
Accept: application/json+fhir
Content-Type: application/json+fhir

{
    "resourceType": "Parameters",
    "parameter": [

        {
            "name": "valueSet",
            "resource": {
                "resourceType": "ValueSet",
                "url": "http://example.com/siblings",
                "title": "Sibling codes",
                "name": "Sibling_codes",
                "status": "draft",
                "compose": {
                    "include": [
                        {
                            "filter": [
                                {
                                    "property": "concept",
                                    "op": "is-a",
                                    "value": {{doseform}}
                                }
                            ],
                            "system": "http://medigree.net/fhir/idmp/CodeSystem/dose-form-ontology-cs"
                        },
                        {
                            "concept": [
                                {
                                    "code": {{doseform}}
                                }
                            ],
                            "system": "http://medigree.net/fhir/idmp/CodeSystem/dose-form-ontology-cs"
                        }

                    ]
                }
            }
        }
    ]
}

```

### Transaction 5 - Get "equivalent" strengths

This transaction requests from the server the equivalent/approximate values for strength.
**Note that this is not validated as a good approach - only with the PoC and realistic data this can be further validated**

Open issues:
* Do we get strengths values or an interval?
* How are the rules defined computably?
* Where does the master data come from? 

|Method|Resource|Payload|
|----|----|----|
| | | | 

Example
```
```


### Transaction 6 - Store Dispense
**This transaction is intended to correspond to eHDSI CDA content, not replacing it. Further analysis is required to decide how this object gets created, shared and consulted across borders**

Issues:
* How do we store the medication details? ID? national, EU,..?
* Attributes - which and in which format?


|Method|Resource|Payload|
|----|----|----|
|POST|MedicationRequest|patient id<br/>date<br/>| 

Example
```
POST {host}/MedicationDispense?patient=x
```

