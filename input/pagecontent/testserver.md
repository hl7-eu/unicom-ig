UNICOM has produced a ready-to-use testing environment for everyone who is interested in learning more about ISO IDMP and regulatory data. It is the base of UNICOM demonstrator implementations (available online), but can be set up by anyone from a docker image.

### UNICOM FHIR server API and product browser

Data created in UNICOM project can be viewed and accessed in [Product Browser](https://jpa.unicom.datawizard.it/apps/productlist/index.html).

Product Browser uses UNICOM FHIR server ([FHIR HAPI](https://hapifhir.io/hapi-fhir/docs/server_jpa/get_started.html)) API for data queries, and [visualisers](visualiser.html) for displaying the product data.
The same software package is provided as a Docker image, and anyone can set up a similar server in their own environment and use it as IDMP playground.

A small set of IDMP-compatible data is available with the server. Bigger sets of IDMP-compatible data can be uploaded to the server if needed (please read the manual). The data has been provided by Swedish, Portuguese, and Estonian NCAs.

### Testing toolbox as a docker image

UNICOM testing toolbox includes:
- preconfigured HAPI FHIR JPA server,
- product browser with visualisation and validation functions,
- all resources provided in UNICOM Implementation Guide (including terminology and mappings),
- IDMP-compatible example data.

For setting up your own instance of UNICOM, visit [UNICOM Test Lab GitHub](https://github.com/unicom-project-eu/UNICOM-test-lab).

