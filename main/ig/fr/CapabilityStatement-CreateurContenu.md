# CI-SIS Cahier-de-Liaison - CreateurContenu - Cahier De Liaison v3.0.1

## CapabilityStatement: CI-SIS Cahier-de-Liaison - CreateurContenu 

 
Le créateur de contenu est une personne, un équipement ou une entité qui alimente le cahier de liaison par des informations qui ont vocation à être partagées. Le créateur de contenu peut être un logiciel métier installé sur un ordinateur, une application installée sur un téléphone mobile ou une tablette ainsi que tout autre dispositif utilisé par une personne ou une entité pour alimenter le cahier de liaison. 

 [Fichier de définition d'OpenAPI-Swagger](../CreateurContenu.openapi.json) | [Télécharger](../CreateurContenu.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CreateurContenu",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/CapabilityStatement/CreateurContenu",
  "version" : "3.0.1",
  "name" : "CreateurContenu",
  "title" : "CI-SIS Cahier-de-Liaison - CreateurContenu",
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
  "description" : "Le créateur de contenu est une personne, un équipement ou une entité qui alimente le cahier de liaison par des informations \nqui ont vocation à être partagées. Le créateur de contenu peut être un logiciel métier\ninstallé sur un ordinateur, une application installée sur un téléphone mobile ou une \ntablette ainsi que tout autre dispositif utilisé par une personne ou une entité pour \nalimenter le cahier de liaison. ",
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
    "mode" : "client",
    "documentation" : "Alimente le cahier de liaison avec une nouvelle note",
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
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.0.1",
      "supportedProfile" : ["http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization"],
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Device",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "DocumentReference",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference|3.0.1",
      "interaction" : [{
        "code" : "update"
      },
      {
        "code" : "delete"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "delete"
      }],
      "conditionalDelete" : "single"
    }],
    "interaction" : [{
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-creation-note"
    },
    {
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-bundle-maj-note"
    }]
  },
  {
    "mode" : "client",
    "documentation" : "Alimente le cahier de liaison avec une nouvelle note",
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
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Device",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.0.1",
      "supportedProfile" : ["http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization"],
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "DocumentReference",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cdl/StructureDefinition/cdl-document-reference|3.0.1",
      "interaction" : [{
        "code" : "update"
      },
      {
        "code" : "delete"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "delete"
      }],
      "conditionalDelete" : "single"
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
