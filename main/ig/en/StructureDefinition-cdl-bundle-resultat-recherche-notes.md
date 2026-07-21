# Bundle résultat recherche notes - Cahier De Liaison v3.0.1

## Resource Profile: Bundle résultat recherche notes 

 
Profil du bundle de resultat de recherches d'une note 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cdl|current/StructureDefinition/StructureDefinition-cdl-bundle-resultat-recherche-notes.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cdl-bundle-resultat-recherche-notes.csv), [Excel](../StructureDefinition-cdl-bundle-resultat-recherche-notes.xlsx), [Schematron](../StructureDefinition-cdl-bundle-resultat-recherche-notes.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cdl-bundle-resultat-recherche-notes",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-resultat-recherche-notes",
  "version" : "3.0.1",
  "name" : "CdLBundleResultatRechercheNotes",
  "title" : "Bundle résultat recherche notes",
  "status" : "active",
  "date" : "2026-07-21T13:21:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil du bundle de resultat de recherches d'une note",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
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
      "patternCode" : "searchset"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Bundle.entry:DocumentReference",
      "path" : "Bundle.entry",
      "sliceName" : "DocumentReference",
      "min" : 0,
      "max" : "*"
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
      "id" : "Bundle.entry:DocumentReference.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "match"
    },
    {
      "id" : "Bundle.entry:DocumentReference.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "max" : "*"
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
      "id" : "Bundle.entry:Patient.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Patient.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "max" : "*"
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
      "id" : "Bundle.entry:Practitioner.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Practitioner.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "id" : "Bundle.entry:PractitionerRole.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:PractitionerRole.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "max" : "*"
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
      "id" : "Bundle.entry:Organization.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Organization.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "max" : "*"
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
      "id" : "Bundle.entry:RelatedPerson.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:RelatedPerson.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "max" : "*"
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
      "id" : "Bundle.entry:Device.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Device.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Device.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    }]
  }
}

```
