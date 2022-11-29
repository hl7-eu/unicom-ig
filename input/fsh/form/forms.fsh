RuleSet: Question(context, linkId, text, type, required, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}
* {context}item[=].required = {required}

Instance: ProductForm
InstanceOf: sdc-questionnaire
Usage: #example
* meta.tag[0].code = #lforms
* status = #active
* url = "http://unicom-project.eu/fhir/Questionnaire/data-entry-questionnaire"


* insert Question(,identifier,Identifier,group,true,true)
* item
  * insert Question(,mpid,Medicinal Product Identifier (MPID\),string,false,false)
  * insert Question(,pmsid,EMA PMS Identifier,string,false,false)
  * insert Question(,nationalId,National/other identifier,string,false,false)
* insert Question(,domain,Domain,choice,false,false)
