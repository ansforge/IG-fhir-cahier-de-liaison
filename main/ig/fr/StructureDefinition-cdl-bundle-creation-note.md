# Bundle de création d'une note - Cahier De Liaison v3.0.1

## Profil de ressource: Bundle de création d'une note 

 
Profil du bundle pour le flux 1 de création de note du volet CdL 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Bundle/cdl-bundle-creation-note](Bundle-cdl-bundle-creation-note.md)
* CapabilityStatements utilisant ce Profil: [CI-SIS Cahier-de-Liaison - CreateurContenu](CapabilityStatement-CreateurContenu.md) and [CI-SIS Cahier-de-Liaison - GestionnaireCdL](CapabilityStatement-GestionnaireCdL.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cdl|current/StructureDefinition/cdl-bundle-creation-note)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 3 éléments(6 éléments obligatoire(s) imbriqué(s))
 Interdit : 7 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [DocumentReference Cahier de Liaison (https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference|3.0.1)](StructureDefinition-cdl-document-reference.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.0.1)](https://hl7.fr/ig/fhir/core/2.0.1/StructureDefinition-fr-core-patient.html)
* [AS Practitioner Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.0.1)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.0.1/StructureDefinition-as-practitioner.html)
* [AS PractitionerRole Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.0.1)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.0.1/StructureDefinition-as-practitionerrole.html)
* [AS Organization Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.0.1)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.0.1/StructureDefinition-as-organization.html)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.0.1)](https://hl7.fr/ig/fhir/core/2.0.1/StructureDefinition-fr-core-related-person.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Contraintes

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 3 éléments(6 éléments obligatoire(s) imbriqué(s))
 Interdit : 7 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [DocumentReference Cahier de Liaison (https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference|3.0.1)](StructureDefinition-cdl-document-reference.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.0.1)](https://hl7.fr/ig/fhir/core/2.0.1/StructureDefinition-fr-core-patient.html)
* [AS Practitioner Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.0.1)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.0.1/StructureDefinition-as-practitioner.html)
* [AS PractitionerRole Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.0.1)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.0.1/StructureDefinition-as-practitionerrole.html)
* [AS Organization Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.0.1)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.0.1/StructureDefinition-as-organization.html)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.0.1)](https://hl7.fr/ig/fhir/core/2.0.1/StructureDefinition-fr-core-related-person.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 

Autres représentations du profil : [CSV](../StructureDefinition-cdl-bundle-creation-note.csv), [Excel](../StructureDefinition-cdl-bundle-creation-note.xlsx), [Schematron](../StructureDefinition-cdl-bundle-creation-note.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cdl-bundle-creation-note",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note",
  "version" : "3.0.1",
  "name" : "CdLBundleCreationNote",
  "title" : "Bundle de création d'une note",
  "status" : "active",
  "date" : "2026-07-21T12:38:43+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil du bundle pour le flux 1 de création de note du volet CdL",
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
      "patternCode" : "transaction"
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
      "patternCode" : "POST"
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
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1"
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
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1"
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
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1"
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
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1"
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
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1"
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
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1"
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
