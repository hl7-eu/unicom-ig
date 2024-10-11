<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PackagedProductDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition</sch:title>
    <sch:rule context="f:PackagedProductDefinition">
      <sch:assert test="count(f:packageFor) &gt;= 1">packageFor: minimum cardinality of 'packageFor' is 1</sch:assert>
      <sch:assert test="count(f:containedItemQuantity) &gt;= 1">containedItemQuantity: minimum cardinality of 'containedItemQuantity' is 1</sch:assert>
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:legalStatusOfSupply) &lt;= 1">legalStatusOfSupply: maximum cardinality of 'legalStatusOfSupply' is 1</sch:assert>
      <sch:assert test="count(f:package) &gt;= 1">package: minimum cardinality of 'package' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.meta</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.implicitRules</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.language</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.contained</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:contained">
      <sch:assert test="not(f:Citation|f:Evidence|f:EvidenceReport|f:EvidenceVariable|f:MedicinalProductDefinition|f:PackagedProductDefinition|f:AdministrableProductDefinition|f:Ingredient|f:ClinicalUseDefinition|f:RegulatedAuthorization|f:SubstanceDefinition|f:SubscriptionStatus|f:SubscriptionTopic) or not(parent::f:Citation|parent::f:Evidence|parent::f:EvidenceReport|parent::f:EvidenceVariable|parent::f:MedicinalProductDefinition|parent::f:PackagedProductDefinition|parent::f:AdministrableProductDefinition|parent::f:Ingredient|parent::f:ClinicalUseDefinition|parent::f:RegulatedAuthorization|parent::f:SubstanceDefinition|f:SubscriptionStatus|f:SubscriptionTopic)">Containing new R4B resources within R4 resources may cause interoperability issues if instances are shared with R4 systems (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:identifier</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.use</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:use">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.value</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.period</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.identifier.assigner</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:identifier/f:assigner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.name</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.packageFor</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:packageFor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.status</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.statusDate</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:statusDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:containedItemQuantity</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 1">comparator: maximum cardinality of 'comparator' is 1</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity.value</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity.comparator</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity.unit</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.containedItemQuantity.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:containedItemQuantity/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.description</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:legalStatusOfSupply/f:code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding.version</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding.display</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.coding.userSelected</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.code.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:code/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:legalStatusOfSupply/f:jurisdiction</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:jurisdiction">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.jurisdiction</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:jurisdiction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.jurisdiction.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:jurisdiction/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.jurisdiction.coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:jurisdiction/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.legalStatusOfSupply.jurisdiction.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:legalStatusOfSupply/f:jurisdiction/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:marketingStatus</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:country) &gt;= 1">country: minimum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:jurisdiction) &lt;= 1">jurisdiction: maximum cardinality of 'jurisdiction' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:dateRange) &lt;= 1">dateRange: maximum cardinality of 'dateRange' is 1</sch:assert>
      <sch:assert test="count(f:restoreDate) &lt;= 1">restoreDate: maximum cardinality of 'restoreDate' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:marketingStatus/f:country</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:country">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.country</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:country">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.country.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:country/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.country.coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:country/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.country.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:country/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.jurisdiction</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:jurisdiction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:marketingStatus/f:status</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding.version</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding.display</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.coding.userSelected</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.status.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:status/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.dateRange</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:dateRange">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.marketingStatus.restoreDate</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:marketingStatus/f:restoreDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.characteristic</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:characteristic">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.copackagedIndicator</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:copackagedIndicator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.manufacturer</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:manufacturer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:quantity) &gt;= 1">quantity: minimum cardinality of 'quantity' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.identifier</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package/f:type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package/f:type/f:coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding.version</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding.display</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.coding.userSelected</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.type.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:type/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.quantity</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.material</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:material">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.alternateMaterial</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:alternateMaterial">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package/f:shelfLifeStorage</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:period[x]) &gt;= 1">period[x]: minimum cardinality of 'period[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding.version</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding.display</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.coding.userSelected</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.type.text</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:type/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.period[x] 1</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:period[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.shelfLifeStorage.specialPrecautionsForStorage</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:shelfLifeStorage/f:specialPrecautionsForStorage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.manufacturer</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:manufacturer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.property</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:property">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.property.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:property/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.property.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:property/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.property.type</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:property/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.property.value[x] 1</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:property/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem">
      <sch:assert test="@value|f:*|h:div|self::f:Parameters">All FHIR elements must have a @value or children unless an empty Parameters resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.modifierExtension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.item</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:package/f:containedItem/f:amount</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 1">comparator: maximum cardinality of 'comparator' is 1</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount.extension</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount.value</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount.comparator</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount/f:comparator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount.unit</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount.system</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.containedItem.amount.code</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:containedItem/f:amount/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>PackagedProductDefinition.package.package</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:package/f:package">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
