CodeSystem: DoseFormOntologyCS
Id:         dose-form-ontology-cs
Title:     "Dose Form Ontology Code System"
* ^hierarchyMeaning = #is-a
* #20053000
    "Oral use"
    "Oral Use"
  * ^designation[0].language = #en
  * ^designation[=].value = "Oral use"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Oraal gebruik"
  * ^designation[+].language = #fr-BE
  * ^designation[=].value = "Voie orale"

  * #10220XXX
      "Capsule"
      "Capsule"
    * ^designation[0].language = #en
    * ^designation[=].value = "Capsule"
    * ^designation[+].language = #nl-BE
    * ^designation[=].value = "X"
    * ^designation[+].language = #fr-BE
    * ^designation[=].value = "Y"

  * #10220000
      "Tablet"
      "Tablet"
    * ^designation[0].language = #en
    * ^designation[=].value = "Tablet"
    * ^designation[+].language = #nl-BE
    * ^designation[=].value = "X"
    * ^designation[+].language = #fr-BE
    * ^designation[=].value = "Y"

    * #10318000
      "Sublingual tablet"
      "Sublingual tablet"
      * ^designation[0].language = #en
      * ^designation[=].value = "Sublingual tablet"


ValueSet: DoseFormOntologyCS
Id: dose-form-ontology-cs
Title: "Dose Form ontology Value Set"
* include codes from system DoseFormOntologyCS
