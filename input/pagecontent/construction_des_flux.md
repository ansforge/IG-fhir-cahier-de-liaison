### Construction des flux

Deux options sont proposées pour la construction des flux :

* La première (option Restful) consiste à assurer la création et la mise à jour d’une note par des requêtes POST et PUT de la ressource « DocumentReference ». Cette option implique la définition de flux permettant de gérer les acteurs impliqués dans les notes, c’est-à-dire l’auteur et le sujet de la note. Chaque ressource (« Patient », « Practitioner », « PractitionerRole », « RelatedPerson », « Organization » et « Device ») pourra ainsi être créée ou mise à jour.
* La seconde (option transaction) consiste à introduire une transaction permettant d’encapsuler les différentes ressources nécessaires dans un Bundle.

Le gestionnaire doit implémenter les deux options.

Cette section présente la construction de flux HTTP (de l'API REST FHIR[^18]) pour l'échange des informations identifiées dans les sections précédentes et mises en correspondance avec les éléments des ressources FHIR retenues. La Table ci-dessous liste les types de requête HTTP pour chaque flux identifié.

+------------------------+----------------------------------+----------+
| Nom du flux            | Ressource FHIR R4                | Requête  |
|                        |                                  | http     |
+========================+==================================+==========+
| Flux 1a -              | Patient, Practitioner,           | HTTP     |
| CreationActeurRestful  | PractitionerRole, RelatedPerson, | POST     |
|                        | Organization, Device             |          |
|                        |                                  |          |
|                        | Profil                           |          |
|                        |                                  |          |
|                        | FrPatient, FrRelatedperson,      |          |
|                        | Fr                               |          |
|                        | Practitioner et FrOrganizationdu |          |
|                        | package*.fhir.fr.core 1.1.0*     |          |
|                        |                                  |          |
|                        | Pract                            |          |
|                        | itionerRoleProfessionalRoleRASS, |          |
|                        | Practitio                        |          |
|                        | nerRoleOrganizationalRoleRASS du |          |
|                        | package *ANS.annuaire.fhir.r4    |          |
|                        | 0.2.0*                           |          |
+------------------------+----------------------------------+----------+
| Flux 1b -              | DocumentReference                | HTTP     |
| CreationNoteRestful    |                                  | POST     |
|                        | Profil CdL_DocumentReferenceCdL  |          |
+------------------------+----------------------------------+----------+
| Flux 1c -              | Bundle                           | HTTP     |
| C                      |                                  | POST     |
| reationNoteTransaction | Profil CdL_BundleCreationNoteCdL |          |
+------------------------+----------------------------------+----------+
| Flux 2a -              | Patient, Practitioner,           | HTTP PUT |
| MAJActeurRestful       | PractitionerRole, RelatedPerson, |          |
|                        | Organization, Device             |          |
|                        |                                  |          |
|                        | Profil                           |          |
|                        |                                  |          |
|                        | FrPatient, FrRelatedperson,      |          |
|                        | Fr                               |          |
|                        | Practitioner et FrOrganizationdu |          |
|                        | package*.fhir.fr.core 1.1.0*     |          |
|                        |                                  |          |
|                        | Pract                            |          |
|                        | itionerRoleProfessionalRoleRASS, |          |
|                        | Practitio                        |          |
|                        | nerRoleOrganizationalRoleRASS du |          |
|                        | package *ANS.annuaire.fhir.r4    |          |
|                        | 0.2.0*                           |          |
+------------------------+----------------------------------+----------+
| Flux 2b -              | DocumentReference                | HTTP PUT |
| MAJNoteRestful         |                                  |          |
|                        | Profil CdL_DocumentReferenceCdL  |          |
+------------------------+----------------------------------+----------+
| Flux 2c -              | Bundle                           | HTTP     |
| MAJNoteTransaction     |                                  | POST     |
|                        | Profil CdL_BundleMAJNoteCdL      |          |
+------------------------+----------------------------------+----------+
| Flux 3 -               | DocumentReference                | HTTP     |
| SuppressionNote        |                                  | DELETE   |
|                        | Profil CdL_DocumentReferenceCdL  |          |
|                        |                                  | (ce flux |
|                        |                                  | est      |
|                        |                                  | op       |
|                        |                                  | tionnel) |
+------------------------+----------------------------------+----------+
| Flux 4 -               | DocumentReference                | HTTP GET |
| RechercheNotes         |                                  |          |
|                        | Profil CdL_DocumentReferenceCdL  |          |
+------------------------+----------------------------------+----------+
| Flux 5 -               | Bundle                           | Réponse  |
| ReponseRechercheNotes  |                                  | à la     |
|                        | Profil                           | requête  |
|                        | CdL                              | HTTP GET |
|                        | _BundleResultatRechercheNotesCdL |          |
+------------------------+----------------------------------+----------+



#### Flux 1 - Création note

C’est le flux d’alimentation du cahier de liaison avec une nouvelle note.

Il est composé de trois flux distincs :

* Les flux 1a - CréationActeurRestful et 1b - CreationNoteRestful : ces deux flux ont été dissociés pour séparer la création des acteurs de la création des notes dans l’option de construction Restful.
* Le flux 1c - CreationNoteTransation : ce flux a été dissocié des flux 1a et 1b car il correspond à la création d’une note dans l’option de construction Transaction

#### Flux 2 - Mise à jour d'une note

C’est le flux de mise à jour d’une note.

Il est composé de trois flux distincs :

* Les flux 2a - MAJActeurRestful et 2b - MAJNoteRestful : ces deux flux ont été dissociés pour séparer la mise à jour des acteurs de la mise à jour d’une note dans l’option de construction Restful.
* Le Flux 2c - MAJNoteTransaction : ce flux a été dissocié pour séparer les mises à jour dans l’option de construction Transaction

#### Flux 3 - Suppression d'une note

C’est le flux de suppression d’une note.

#### Flux 4 - Recherche de notes

C’est le flux de recherche multicritères de notes dans le cahier de liaison.

#### Flux 5 - Réponse à la recherche de notes

Ce flux retourne le résultat de la recherche de notes répondant aux critères envoyés dans le flux précédent.