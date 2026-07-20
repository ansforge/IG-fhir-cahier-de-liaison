# Bundle de mise à jour d'une note - Cahier De Liaison v3.0.1

## Resource Profile: Bundle de mise à jour d'une note 

 
Profil du bundle pour le flux 2 de mise à jour d'une note du volet CdL 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cdl|current/StructureDefinition/StructureDefinition-cdl-bundle-maj-note.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cdl-bundle-maj-note.csv), [Excel](../StructureDefinition-cdl-bundle-maj-note.xlsx), [Schematron](../StructureDefinition-cdl-bundle-maj-note.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cdl-bundle-maj-note",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note",
  "version" : "3.0.1",
  "name" : "CdLBundleMAJNote",
  "title" : "Bundle de mise à jour d'une note",
  "status" : "active",
  "date" : "2026-07-20T08:30:08+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil du bundle pour le flux 2 de mise à jour d'une note du volet CdL",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DocumentReference",
      "path" : "Bundle.entry",
      "sliceName" : "DocumentReference",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:DocumentReference.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference|3.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:DocumentReference.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:DocumentReference.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:Patient.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met-1",
        "severity" : "error",
        "human" : "POST si il s’agit d’un nouvel élément ou PUT si il s’agit d’un élément qui existe déjà",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note|3.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:Patient.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "Practitioner",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Practitioner.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:Practitioner.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met-1",
        "severity" : "error",
        "human" : "POST si il s’agit d’un nouvel élément ou PUT si il s’agit d’un élément qui existe déjà",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note|3.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:Practitioner.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:PractitionerRole",
      "path" : "Bundle.entry",
      "sliceName" : "PractitionerRole",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:PractitionerRole.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:PractitionerRole.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met-1",
        "severity" : "error",
        "human" : "POST si il s’agit d’un nouvel élément ou PUT si il s’agit d’un élément qui existe déjà",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note|3.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:PractitionerRole.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Organization",
      "path" : "Bundle.entry",
      "sliceName" : "Organization",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Organization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:Organization.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met-1",
        "severity" : "error",
        "human" : "POST si il s’agit d’un nouvel élément ou PUT si il s’agit d’un élément qui existe déjà",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note|3.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:Organization.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:RelatedPerson",
      "path" : "Bundle.entry",
      "sliceName" : "RelatedPerson",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:RelatedPerson.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:RelatedPerson.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met-1",
        "severity" : "error",
        "human" : "POST si il s’agit d’un nouvel élément ou PUT si il s’agit d’un élément qui existe déjà",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note|3.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:RelatedPerson.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Device",
      "path" : "Bundle.entry",
      "sliceName" : "Device",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Device.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Device"
      }]
    },
    {
      "id" : "Bundle.entry:Device.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met-1",
        "severity" : "error",
        "human" : "POST si il s’agit d’un nouvel élément ou PUT si il s’agit d’un élément qui existe déjà",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note|3.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:Device.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    }]
  }
}

```
