# CI-SIS Cahier-de-Liaison - ConsommateurContenu - Cahier De Liaison v3.0.0

## CapabilityStatement: CI-SIS Cahier-de-Liaison - ConsommateurContenu 

 
Le consommateur de contenu qui interroge le cahier de liaison 

 [Raw OpenAPI-Swagger Definition file](../ConsommateurContenu.openapi.json) | [Download](../ConsommateurContenu.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "ConsommateurContenu",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/CapabilityStatement/ConsommateurContenu",
  "version" : "3.0.0",
  "name" : "ConsommateurContenu",
  "title" : "CI-SIS Cahier-de-Liaison - ConsommateurContenu",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-02-15T14:22:09+01:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le consommateur de contenu qui interroge le cahier de liaison",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "implementationGuide" : ["http://interop.esante.gouv.fr/ig/fhir/cdl/ImplementationGuides/ans.fhir.fr.cdl"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "Le consommateur de contenu envoie une demande de recherche de notes au gestionnaire de CdL",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "DocumentReference",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-date",
        "type" : "date",
        "documentation" : "date de création de la note"
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
        "type" : "token",
        "documentation" : "type de la note"
      },
      {
        "name" : "security-label",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-security-label",
        "type" : "token",
        "documentation" : "degré de restriction de l'audience de la note"
      },
      {
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-subject",
        "type" : "reference",
        "documentation" : "Sujet de la note"
      },
      {
        "name" : "author",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-author",
        "type" : "reference",
        "documentation" : "Sujet de la note"
      }]
    },
    {
      "type" : "Patient",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
        "type" : "token",
        "documentation" : "Identifiant du patient"
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
        "type" : "string",
        "documentation" : "Nom de famille du patient"
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
        "type" : "string",
        "documentation" : "Prénom du patient"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name",
        "type" : "string",
        "documentation" : "Nom du patient"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier",
        "type" : "token",
        "documentation" : "Identifiant de la personne de confiance"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name",
        "type" : "string",
        "documentation" : "Nom de la personne de confiance"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
        "type" : "token",
        "documentation" : "Identifiant du Praticien"
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
        "type" : "string",
        "documentation" : "Nom de famille du patient"
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
        "type" : "string",
        "documentation" : "Prénom du patient"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-name",
        "type" : "string",
        "documentation" : "Nom du patient"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
        "type" : "token",
        "documentation" : "Identifiant de l'organisation"
      }]
    },
    {
      "type" : "Device",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Device",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-identifier",
        "type" : "token",
        "documentation" : "Identifiant de l'équipement"
      }]
    }]
  }]
}

```
