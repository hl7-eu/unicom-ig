For a medication specified in a clinical document (prescription, summary, dispense) to be recognizable across borders, it shall contain attributes (including identifiers) that are recognized across borders. 
Assuming theclinical documents may be originally authored for national use, this requires additional provisions to allow a product that was specified with national intent (and national codes) to be identifiable across borders.
This can be achieved in two major ways: 

* Requiring any country to be able to query any other country's database, and look up the product definitions in the original country
* Enabling the clinical document to contain attributes that can be recognized across borders

The first option may be challenging in terms of architecture and availability. In any case, the net result would normally be that after the lookup, the second country must obtain the product description in an IDMP language.
The current eHDSI specifications are expected to support the second option. So whether the information is provided by the country of origin or is derived by querying the product in the country of destination, the expectation is that the clinical document - specifically the medication part - would be expressed in cross-border IDMP attributes and identifiers.
This should be in addition to the original product specification (for safety, auditing and tracing purposes), and not replacing it.

For appending cross-border attributes to the medication specification in a clinical document, there are two options:

### Alternative 1: Extending the clinical resource
  <figure>
    {% include alternative1.svg %}
    <figcaption>Alternative 1 - extending the clinical document</figcaption>
  </figure>
In this alternative, the clinical document contains a medication product, but a new extension is added to the document itself, which contains the relatedMedication with the cross-border attributes.

  
### Alternative 2: Extending the medication
  <figure>
    {% include alternative2.svg %}
    <figcaption>Alternative 2 - extending the medication</figcaption>
  </figure>
In this alternative, the clinical document contains a medication product, and the medication it itself extended with a related medication that contains the cross-border attributes.
