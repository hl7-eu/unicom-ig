UNICOM FHIR Implementation Guide introduces a novelty feature - a customizable template for visualizing FHIR Bundles. This visualization can be used inside the IG in the [narrative content view of example resources](https://hl7-eu.github.io/unicom-ig/Bundle-010-Clexane-60mg-06ml-EE-FullProduct.html#).

### Background
The work of creating ISO IDMP compatible example data for UNICOM pilots to use was one of the tasks of Work Package 4 (national competent authorities). For this purpose UNICOM FHIR Server (UFIS) was launched. Very quickly it was clear that it is nearly impossible to work with such complicated data structures without having a tool for visualizing the full data of one product. For that purpose, UFIS made use of [IDMP viewer created by Rik Smithies](https://idmp-viewer.azurewebsites.net/display-product).   
This became the most used feature of UFIS: data submitters used the viewer to validate the integrity of submitted data, and other users wanted to see the modelling of medicinal product data.  

When this IG was started, there was a strong expectation of having the same or similar visualisation inside the implementation guide. However, it was not possible, as the IDMP viewer worked well on server data, but not inside the static content of the implementation guide. This started a search for a solution, which resulted in the Bundle Visualizer you see in this IG now.

### Bundle visualizer

#### Use case
The primary use case for Bundle visualizer is to provide clean and easy-to-read visualization of FHIR bundles that consist of several resources that add up to one set of data or a document. This can be used instead of a narrative content view in the examples.   

This visualization serves as an explanation of how the resources are assembled together. It is not meant to demonstrate the layout of the data in an actual user interface.  

Another important use case is the validation of example data. Complicated examples that consist of several FHIR resources are difficult to create manually. It is easy to lose references between resources, bundle up wrong resources, or make mistakes in the data. UNICOM IG aims to provide a big amount of examples of actual medication data, which means that the content validation of example data has been extremely important. This would not be possible without a visualization tool.

#### How it works
Bundle visualizer, as stated in the name, works on a FHIR Bundle. Even when run on a server, it first needs to make a query that returns a desired kind of bundle. According to the resource type, different templates can be applied, which can then be assembled together into one view in an appropriate way.  

Bundle viewer uses [Liquid Templates](https://shopify.github.io/liquid/) and HTML/CSS for creating the view.  

Bundle visualizer can be created, modified and used inside a FHIR IG or in a separate project.  

Bundle visualizer is a generic tool. Even though first introduced in UNICOM project, where it is used for MedicationDefinition resources, it can be used for any kind of resources.

#### Comparison of two viewers
There is no reason to believe that one viewer is better than the other. Even though they seem quite alike, they serve a slightly different purpose and use a different solution. Here is a list of some of the key differences.  

|UNICOM Bundle Visualizer|IDMP Visualizer|
|--|--|
|Open source - anyone can use/customise  | Free to use; not customisable|
|Works in an IG or server|Works only in server|
|Works on a Bundle resource|Makes multiple queries|
|Disregards data that is not included on the template|Automatically includes all data in MedicationDefinition resources|
|Can be used with any kind of FHIR Bundle|Only for MedicationDefinition module resources|
|You can change the looks and content|Not customizable|
|Template needs to be created and kept up-to-date with data|Out-of-box solution, just copy your url|
|[Example](https://hl7-eu.github.io/unicom-ig/Bundle-015-CopaliaHCT-EE-FullProduct.html)|[Example](https://idmp-viewer.azurewebsites.net/display-product?url=http://185.11.167.107:8084/fhir/MedicinalProductDefinition/CopaliaHCT-EE-MPD)|
{:.table-bordered .table-sm}

#### Technical considerations
Requesting a whole needed data set as a bundle might be problematic. It is not a problem when using the visualiser inside the IG, as the example bundles in an IG would always be predefined and manually assembled. However, on a server, you may not always be able to query all the data in a way, that it would be served as one FHIR bundle.   

The template disregards all data that is not explicitly included in the template. Therefore, it is important to keep your templates up-to-date with the data model and make sure all the data that is included in the examples are also made visible via the templates.  

Templates as such are not dependant on FHIR versions, but they make use of FHIR paths and attribute names, which may occasionally change. A changed FHIR path requires an update to the template. 

### How to use it in your IG
#### Create a template
Creating a template from scratch is a developer's job, requiring basic knowledge of FHIR and [Liquid Templates](https://shopify.github.io/liquid/), and quite some patience. Liquid templates are not the easiest way to create a display tool, but as executable scripts (like JavaScript) are not allowed inside an IG, the regular options are off the table.  
You can find UNICOM templates' code [in our GitHub repository](https://github.com/hl7-eu/unicom-ig/tree/master/unicom-template/package/includes).  

Initial templates may be easier to create in a separate project to make use of a locally run http-server in order to speed up the work.
 
#### Changing a template
Changing an existing template where the desired data elements have already been made visible is significantly easier task. Anyone with basic knowledge of html should be able to make simple changes to the templates.  

Modifying a template inside an IG project may be time-consuming because of the need of frequent building of the project to see if the changes have been applied correctly. The building time can be reduced to seconds when using Jekyll build instead of IG Publisher script (run `jekyll build --destination ../../output` command from temp/pages folder). 
