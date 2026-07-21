# MOS to FHIR CDL - Cahier De Liaison v3.0.1

## ConceptMap: MOS to FHIR CDL (Experimental) 

 
Mapping entre le MOS et les profils cahiers de liaison pour les profils qui ne sont pas présents dans ce guide. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "ConceptMap-mos-cdl",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cdl/ConceptMap/ConceptMap-mos-cdl",
  "version" : "3.0.1",
  "name" : "ConceptMapMOS2CDL",
  "title" : "MOS to FHIR CDL",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T13:00:31+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping entre le MOS et les profils cahiers de liaison pour les profils qui ne sont pas présents dans ce guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "purpose" : "Donner un indice fonctionnel du mapping entre FHIR et MOS.",
  "sourceUri" : "https://mos.esante.gouv.fr",
  "targetUri" : "https://hl7.fr/ig/fhir/core",
  "group" : [{
    "source" : "https://mos.esante.gouv.fr/12.html",
    "target" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
    "targetVersion" : "2.0.1",
    "element" : [{
      "code" : "Contact.IdContact",
      "display" : "Contact.IdContact",
      "target" : [{
        "code" : "RelatedPerson.identifier",
        "display" : "RelatedPerson.identifier",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Contact.adresse",
      "display" : "Contact.adresse",
      "target" : [{
        "code" : "RelatedPerson.address",
        "display" : "RelatedPerson.address",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Contact.telecommunication",
      "display" : "Contact.telecommunication",
      "target" : [{
        "code" : "RelatedPerson.telecom",
        "display" : "RelatedPerson.telecom",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePhysique.nomFamille",
      "display" : "PersonnePhysique.nomFamille",
      "target" : [{
        "code" : "RelatedPerson.name.family",
        "display" : "RelatedPerson.name.family",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePhysique.prenomUsuel",
      "display" : "PersonnePhysique.prenomUsuel",
      "target" : [{
        "code" : "RelatedPerson.name.given",
        "display" : "RelatedPerson.name.given",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://mos.esante.gouv.fr/12.html",
    "target" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
    "targetVersion" : "2.0.1",
    "element" : [{
      "code" : "Professionnel.idPP",
      "display" : "Professionnel.idPP",
      "target" : [{
        "code" : "Practitioner.identifier",
        "display" : "Practitioner.identifier",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Professionnel.adresseCorrespondance",
      "display" : "Professionnel.adresseCorrespondance",
      "target" : [{
        "code" : "Practitioner.address",
        "display" : "Practitioner.address",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Professionnel.telecommunication",
      "display" : "Professionnel.telecommunication",
      "target" : [{
        "code" : "Practitioner.telecom",
        "display" : "Practitioner.telecom",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePhysique.nomFamille",
      "display" : "PersonnePhysique.nomFamille",
      "target" : [{
        "code" : "Practitioner.name.family",
        "display" : "Practitioner.name.family",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePhysique.prenomUsuel",
      "display" : "PersonnePhysique.prenomUsuel",
      "target" : [{
        "code" : "Practitioner.name.given",
        "display" : "Practitioner.name.given",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://mos.esante.gouv.fr/12.html",
    "target" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
    "element" : [{
      "code" : "ExerciceProfessionnel.profession",
      "display" : "ExerciceProfessionnel.profession",
      "target" : [{
        "code" : "PractitionerRole.code",
        "display" : "PractitionerRole.code",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://mos.esante.gouv.fr/12.html",
    "target" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
    "targetVersion" : "2.0.1",
    "element" : [{
      "code" : "EntiteGeographique.numFINESS",
      "display" : "EntiteGeographique.numFINESS",
      "target" : [{
        "code" : "Organization.identifier",
        "display" : "Organization.identifier",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "EntiteGeographique.secteurActivite",
      "display" : "EntiteGeographique.secteurActivite",
      "target" : [{
        "code" : "Organization.type",
        "display" : "Organization.type",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "EntiteGeographique.adresseEG",
      "display" : "EntiteGeographique.adresseEG",
      "target" : [{
        "code" : "Organization.address",
        "display" : "Organization.address",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "EntiteGeographique.telecommunication",
      "display" : "EntiteGeographique.telecommunication",
      "target" : [{
        "code" : "Organization.telecom",
        "display" : "Organization.telecom",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "EntiteGeographique.denominationEG",
      "display" : "EntiteGeographique.denominationEG",
      "target" : [{
        "code" : "Organization.name",
        "display" : "Organization.name",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://mos.esante.gouv.fr/12.html",
    "target" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
    "targetVersion" : "2.0.1",
    "element" : [{
      "code" : "PersonnePriseEnCharge.idPersonnePriseEnCharge",
      "display" : "PersonnePriseEnCharge.idPersonnePriseEnCharge",
      "target" : [{
        "code" : "Patient.identifier",
        "display" : "Patient.identifier",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePriseEnCharge.adresseCorrespondance",
      "display" : "PersonnePriseEnCharge.adresseCorrespondance",
      "target" : [{
        "code" : "Patient.address",
        "display" : "Patient.address",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePriseEnCharge.telecommunication",
      "display" : "PersonnePriseEnCharge.telecommunication",
      "target" : [{
        "code" : "Patient.telecom",
        "display" : "Patient.telecom",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Patient.idPatient",
      "display" : "Patient.idPatient",
      "target" : [{
        "code" : "Patient.identifier",
        "display" : "Patient.identifier",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Patient.adresseCorrespondance",
      "display" : "Patient.adresseCorrespondance",
      "target" : [{
        "code" : "Patient.address",
        "display" : "Patient.address",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "Patient.telecommunication",
      "display" : "Patient.telecommunication",
      "target" : [{
        "code" : "Patient.telecom",
        "display" : "Patient.telecom",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePhysique.nomFamille",
      "display" : "PersonnePhysique.nomFamille",
      "target" : [{
        "code" : "Patient.name.family",
        "display" : "Patient.name.family",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "PersonnePhysique.telecommunication",
      "display" : "PersonnePhysique.telecommunication",
      "target" : [{
        "code" : "Patient.name.given",
        "display" : "Patient.name.given",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://mos.esante.gouv.fr/12.html",
    "target" : "http://hl7.org/fhir/StructureDefinition/Device",
    "targetVersion" : "4.0.1",
    "element" : [{
      "code" : "RessourceMaterielle.libelle",
      "display" : "RessourceMaterielle.libelle",
      "target" : [{
        "code" : "Device.deviceName.name",
        "display" : "Device.deviceName.name",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "RessourceMaterielle.reference",
      "display" : "RessourceMaterielle.reference",
      "target" : [{
        "code" : "Device.modelNumber",
        "display" : "Device.modelNumber",
        "equivalence" : "relatedto"
      }]
    }]
  }]
}

```
