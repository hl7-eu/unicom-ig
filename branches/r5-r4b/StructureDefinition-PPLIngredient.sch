<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Ingredient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Ingredient</sch:title>
    <sch:rule context="f:Ingredient">
      <sch:assert test="count(f:for) &gt;= 1">for: minimum cardinality of 'for' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.meta</sch:title>
    <sch:rule context="f:Ingredient/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.implicitRules</sch:title>
    <sch:rule context="f:Ingredient/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.language</sch:title>
    <sch:rule context="f:Ingredient/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.text</sch:title>
    <sch:rule context="f:Ingredient/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.contained</sch:title>
    <sch:rule context="f:Ingredient/f:contained">
      <sch:assert test="not(f:Citation|f:Evidence|f:EvidenceReport|f:EvidenceVariable|f:MedicinalProductDefinition|f:PackagedProductDefinition|f:AdministrableProductDefinition|f:Ingredient|f:ClinicalUseDefinition|f:RegulatedAuthorization|f:SubstanceDefinition|f:SubscriptionStatus|f:SubscriptionTopic) or not(parent::f:Citation|parent::f:Evidence|parent::f:EvidenceReport|parent::f:EvidenceVariable|parent::f:MedicinalProductDefinition|parent::f:PackagedProductDefinition|parent::f:AdministrableProductDefinition|parent::f:Ingredient|parent::f:ClinicalUseDefinition|parent::f:RegulatedAuthorization|parent::f:SubstanceDefinition|f:SubscriptionStatus|f:SubscriptionTopic)">Containing new R4B resources within R4 resources may cause interoperability issues if instances are shared with R4 systems (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.extension</sch:title>
    <sch:rule context="f:Ingredient/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.modifierExtension</sch:title>
    <sch:rule context="f:Ingredient/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.identifier</sch:title>
    <sch:rule context="f:Ingredient/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.status</sch:title>
    <sch:rule context="f:Ingredient/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.for</sch:title>
    <sch:rule context="f:Ingredient/f:for">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.role</sch:title>
    <sch:rule context="f:Ingredient/f:role">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.function</sch:title>
    <sch:rule context="f:Ingredient/f:function">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.allergenicIndicator</sch:title>
    <sch:rule context="f:Ingredient/f:allergenicIndicator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.manufacturer</sch:title>
    <sch:rule context="f:Ingredient/f:manufacturer">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.manufacturer.extension</sch:title>
    <sch:rule context="f:Ingredient/f:manufacturer/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.manufacturer.modifierExtension</sch:title>
    <sch:rule context="f:Ingredient/f:manufacturer/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.manufacturer.role</sch:title>
    <sch:rule context="f:Ingredient/f:manufacturer/f:role">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.manufacturer.manufacturer</sch:title>
    <sch:rule context="f:Ingredient/f:manufacturer/f:manufacturer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance</sch:title>
    <sch:rule context="f:Ingredient/f:substance">
      <sch:assert test="count(f:strength) &gt;= 1">strength: minimum cardinality of 'strength' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance</sch:title>
    <sch:rule context="f:Ingredient/f:substance">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.modifierExtension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:code</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:concept) &lt;= 1">concept: maximum cardinality of 'concept' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:code/f:concept</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:code/f:concept/f:coding</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding.system</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding.version</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding.code</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding.display</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.coding.userSelected</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.concept.text</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:concept/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.code.reference</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:code/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.modifierExtension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x] 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator">
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator.extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator.value 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator.comparator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator.unit 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator.system 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].numerator.code 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:numerator/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator">
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator.extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator.value 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator.comparator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator.unit 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator.system 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.presentation[x].denominator.code 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:presentation[x]/f:denominator/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.textPresentation</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:textPresentation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x] 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator">
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator.extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator.value 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator.comparator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator.unit 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator.system 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].numerator.code 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:numerator/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator">
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator.extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator.value 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator.comparator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator.unit 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator.system 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.concentration[x].denominator.code 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:concentration[x]/f:denominator/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.textConcentration</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:textConcentration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.measurementPoint</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:measurementPoint">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.country</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:country">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:referenceStrength</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength">
      <sch:assert test="count(f:substance) &gt;= 1">substance: minimum cardinality of 'substance' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.modifierExtension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:concept) &lt;= 1">concept: maximum cardinality of 'concept' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding.extension</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding.system</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding.version</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding.code</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding.display</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.coding.userSelected</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.concept.text</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:concept/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.substance.reference</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:substance/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x] 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator.extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator.value 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator.comparator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator.unit 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator.system 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].numerator.code 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:numerator/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator.extension 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator.value 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator.comparator 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator.unit 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator.system 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.strength[x].denominator.code 1</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:strength[x]/f:denominator/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.measurementPoint</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:measurementPoint">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Ingredient.substance.strength.referenceStrength.country</sch:title>
    <sch:rule context="f:Ingredient/f:substance/f:strength/f:referenceStrength/f:country">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
