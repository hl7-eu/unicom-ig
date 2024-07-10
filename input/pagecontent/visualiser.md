UNICOM FHIR Implementation Guide introduces a novelty feature - a customizable template for visualizing FHIR Bundles. This visualization can be used inside the IG in the [narrative content view of example resources](https://hl7-eu.github.io/unicom-ig/Bundle-010-Clexane-60mg-06ml-EE-FullProduct.html#).

### Background
The work of creating ISO IDMP compatible example data for UNICOM pilots to use was one of the tasks of Work Package 4 (national competent authorities). For this purpose, a first solution was created - the UNICOM FHIR Server (UFIS). When creating first instances of products, it became clear that it is nearly impossible to work with such complicated data structures without having a tool for visualizing the full data of one product. For that purpose, UFIS made use of IDMP viewer by NProgram (Rik Smithies), now known as [Vhewer](https://vhewer.com/).
This viewer was one of the most used features of UFIS: data submitters could use the viewer to validate the integrity of submitted data, and other users wanted to see and compare the modelling of medicinal product data.  

When the official UNICOM IG was finally started, the same challenges were visible, and there was a strong expectation of having the same or similar visualisation **inside** the implementation guide. After some successful changes to the FHIR publishing infrastructure, UNICOM developed a pioneer solution that is open source and well integrated in the tooling  - the Bundle Visualizer you see in this IG.

### Bundle visualizer

#### Use case
The primary use case for Bundle visualizer is to provide clean and easy-to-read visualization of FHIR bundles that consist of several resources that add up to one set of data or a document. This can be used instead of a narrative content view in the examples.   

This specific visualization serves as an explanation of how the resources are assembled together. It is not meant to demonstrate the layout of the data in an actual user interface.  

Another important use case is the validation of example data. Complicated examples that consist of several FHIR resources are difficult to create manually. It is easy to lose references between resources, bundle up wrong resources, or make mistakes in the data. UNICOM IG aims to provide a big amount of examples of actual medication data, which means that the content validation of example data has been extremely important. This would not be possible without a visualization tool.

#### How it works
Bundle visualizer, as stated in the name, works on a FHIR Bundle. This Bundle can be provided to the visualizer or obtained from a adequately designed search query, which returns the desired kind of bundle. Different templates can be applied to different resource types, which can then be assembled together into one view in an appropriate way.  

To integrate with and make the most of the FHIR tooling, the Bundle viewer uses [Liquid Templates](https://shopify.github.io/liquid/). 
This approach means the Bundle visualizer can be created, modified and used inside a FHIR IG or in a separate project.

Bundle visualizer is a generic tool. Even though first introduced in UNICOM project, where it is used for MedicationDefinition resources, it can be used for any kind of resources.


#### Technical considerations
Requesting the required data set as a bundle might be problematic. It is not a problem when using the visualiser inside the IG, as the example bundles in an IG would always be predefined and manually assembled. However, on a server, you may not always be able to query all the data in a way, that it would be served as one FHIR bundle. Since the solutions are open source and editable, this can be addressed in the future if needed.

The template disregards all data that is not explicitly included in the template. Therefore, it is important to keep the templates up-to-date with the data model and make sure all the data that is included in the examples are also made visible via the templates.  
Both options require some validation, to confirm the visualizer is displaying the data correctly.

Templates as such are not dependant on FHIR versions, but they make use of FHIR paths and attribute names, which may occasionally change. A changed FHIR path requires an update to the template.

### How to use it in your IG
#### Set up the IG
To set up the IG for using liquid rendering of the resources, it is necessary to set the `produce-jekyll-data` parameter to true.  
In sushi:
```yaml
# parameters:
#  produce-jekyll-data: true
```
or in json:
```
"parameter": [
  {
    "code": "produce-jekyll-data",
    "value": "true"
  },
```

#### Create a template
Creating a template from scratch is a developer's job, requiring basic knowledge of FHIR and [Liquid Templates](https://shopify.github.io/liquid/), and quite some patience. Liquid templates are not the easiest way to create a display tool, but as executable scripts (like JavaScript) are not allowed inside an IG, the regular options are off the table.  
You can find UNICOM templates' code [in our GitHub repository](https://github.com/hl7-eu/unicom-ig/tree/master/unicom-template/package/includes).  

Initial templates may be easier to create in a separate project to make use of a locally run http-server in order to speed up the work.
#### Create a template
 
### Maintaining a template
Changing an existing template where the desired data elements have already been made visible is significantly easier task. Anyone with basic knowledge of html should be able to make simple changes to the templates.  
Modifying a template inside an Implementation Guide (IG) project can be time-consuming as it requires frequent building of the entire project to verify if the changes have been correctly applied. However, for faster iteration, the building time can be reduced to seconds by modifying the temporary liquid files used by Jekyll and running only Jekyll on the temporary pages. 

To accomplish this, run the following command from the root folder of the IG project:

  `jekyll build --destination ./output -s temp/pages .`

This command instructs Jekyll to build the project using the temporary pages and output the result to the `./output` directory.

It's important to note that this method works with temporary files that are created each time the IG publisher runs. Once the temporary files are generated, you can iterate rapidly. However, remember to copy the results of your iteration (liquid files) back to the `_includes` folder in your source template. The `_includes` folder contains the file that is used by the publisher and will replace the corresponding file in `temp/pages/_includes` when the publisher is executed.
