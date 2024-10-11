<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ManufacturedItemDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ManufacturedItemDefinition</sch:title>
    <sch:rule context="f:ManufacturedItemDefinition">
      <sch:assert test="count(f:unitOfPresentation) &gt;= 1">unitOfPresentation: minimum cardinality of 'unitOfPresentation' is 1</sch:assert>
      <sch:assert test="count(f:ingredient) &lt;= 0">ingredient: maximum cardinality of 'ingredient' is 0</sch:assert>
      <sch:assert test="count(f:property) &lt;= 0">property: maximum cardinality of 'property' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
