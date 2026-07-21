# CdL_isEmergency - Cahier De Liaison v3.0.1

## Extension: 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DocumentReference Cahier de Liaison](StructureDefinition-cdl-document-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cdl|current/StructureDefinition/StructureDefinition-cdl-ext-is-emergency.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cdl-ext-is-emergency.csv), [Excel](../StructureDefinition-cdl-ext-is-emergency.xlsx), [Schematron](../StructureDefinition-cdl-ext-is-emergency.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cdl-ext-is-emergency",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-ext-is-emergency",
  "version" : "3.0.1",
  "name" : "CdL_isEmergency",
  "status" : "active",
  "date" : "2026-07-21T12:40:20+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-ext-is-emergency"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
