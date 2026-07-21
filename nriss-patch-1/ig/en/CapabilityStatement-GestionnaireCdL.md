# CI-SIS Cahier-de-Liaison - GestionnaireCdL - Cahier De Liaison v3.0.1

## CapabilityStatement: CI-SIS Cahier-de-Liaison - GestionnaireCdL 

 
Le gestionnaire de cahier de liaison implémente le cahier de liaison 

 [Raw OpenAPI-Swagger Definition file](../GestionnaireCdL.openapi.json) | [Download](../GestionnaireCdL.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "GestionnaireCdL",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/CapabilityStatement/GestionnaireCdL",
  "version" : "3.0.1",
  "name" : "GestionnaireCdL",
  "title" : "CI-SIS Cahier-de-Liaison - GestionnaireCdL",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-02-15T14:22:10+01:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le gestionnaire de cahier de liaison implémente le cahier de liaison",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "implementationGuide" : ["http://interop.esante.gouv.fr/ig/fhir/cdl/ImplementationGuides/ans.fhir.fr.cdl"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Système d'information ou composant de système d'information qui implémente le cahier de liaison",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Bundle",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note|3.0.1",
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Patient",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant du patient"
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
        "type" : "string",
        "documentation" : "Nom de famille du patient"
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given|4.0.1",
        "type" : "string",
        "documentation" : "Prénom du patient"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name|4.0.1",
        "type" : "string",
        "documentation" : "Nom du patient"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant de la personne de confiance"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name|4.0.1",
        "type" : "string",
        "documentation" : "Nom de la personne de confiance"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant du Praticien"
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
        "type" : "string",
        "documentation" : "Nom de famille du patient"
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given|4.0.1",
        "type" : "string",
        "documentation" : "Prénom du patient"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-name|4.0.1",
        "type" : "string",
        "documentation" : "Nom du patient"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant de l'organisation"
      }]
    },
    {
      "type" : "Device",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant de l'équipement"
      }]
    },
    {
      "type" : "DocumentReference",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference|3.0.1",
      "interaction" : [{
        "code" : "update"
      },
      {
        "code" : "create"
      },
      {
        "code" : "delete"
      },
      {
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "delete"
      }],
      "conditionalDelete" : "single",
      "searchInclude" : ["DocumentReference.subject", "DocumentReference.author"],
      "searchParam" : [{
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-date|4.0.1",
        "type" : "date",
        "documentation" : "date de création de la note"
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type|4.0.1",
        "type" : "token",
        "documentation" : "type de la note"
      },
      {
        "name" : "security-label",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-security-label|4.0.1",
        "type" : "token",
        "documentation" : "degré de restriction de l'audience de la note"
      }]
    }],
    "interaction" : [{
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note"
    },
    {
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note"
    }]
  }]
}

```
