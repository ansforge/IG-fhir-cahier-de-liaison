### INTRODUCTION

Ce document présente les spécifications techniques d’interopérabilité de mise en œuvre du volet cahier de liaison du CI-SIS. Sa production est basée sur l’étude métier et l’étude des normes et standards de ce volet et les complètent (cf. CI-SIS Etude métier – Cahier de liaison, CI-SIS Etude normes et standards – Cahier de liaison).

#### Lectorat cible & utilisation

Les spécifications fonctionnelles s'adresent principalement des chefs de projets ainsi que toute personne concernée par la maîtrise d’ouvrage et qui spécifie des projets avec des interfaces interopérables.

Les spécifications techniques s’adressent aux développeurs des interfaces interopérables des systèmes implémentant le « cahier de liaison » ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.
Cette spécification technique s’appuie sur le standard HL7 FHIR et plus particulièrement à un sous-ensemble des ressources définies par ce standard ainsi que la notion d’extension et de profilage des ressources. Pour les opérations sur les ressources, l’API HTTP REST définie par le standard HL7 FHIR est mise en œuvre. L’hypothèse est faite que le lecteur est familier de ces concepts.

Les spécifications d’interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d’un système d’information partagé. Il appartient à tout responsable de traitement de s’assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex. cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité…).
Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport  du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS).

#### Profils utilisés

Des ressources FHIR ont été profilées pour le contexte français et sont utilisés dans le cadre des spécifications techniques du volet « Cahier de liaison ».

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}

Dans l’ensemble de ce guide, lorsqu’il est fait référence aux ressources Patient, RelatedPerson et Organization, il est entendu que le profil français (respectivement, FrPatient, FrRelatedPerson et FrOrganization) doit être utilisé.
De même, lorsqu’il est fait référence à la ressource Practitioner, PractitionerRole, les profils français « AsProfessionalRoleR », « AsPractitioner » doivent être utilisés.

### Dépendances

{% include dependency-table.xhtml %}