### Construction des flux

Deux options sont proposées pour la construction des flux :

* La première (option Restful) consiste à assurer la création et la mise à jour d’une note par des requêtes POST et PUT de la ressource « DocumentReference ». Cette option implique la définition de flux permettant de gérer les acteurs impliqués dans les notes, c’est-à-dire l’auteur et le sujet de la note. Chaque ressource (« Patient », « Practitioner », « PractitionerRole », « RelatedPerson », « Organization » et « Device ») pourra ainsi être créée ou mise à jour.
* La seconde (option transaction) consiste à introduire une transaction permettant d’encapsuler les différentes ressources nécessaires dans un Bundle.

Le gestionnaire doit implémenter les deux options.

Cette section présente la construction de flux HTTP (de l'API REST FHIR[^18]) pour l'échange des informations identifiées dans les sections précédentes et mises en correspondance avec les éléments des ressources FHIR retenues. La Table ci-dessous liste les types de requête HTTP pour chaque flux identifié.

| Nom du flux                     | Ressource FHIR R4                    | Requête http     |
| ------------------------------- | ------------------------------------ | ---------------- |
| Flux 1a - CreationActeurRestful | Profils FrPatient, FrRelatedperson du package*.fhir.fr.core*,Profils ASPractitioner, ASPractitionerRole ASOrganization du package ans.fhir.fr.annuaire ansi que la ressource Device           | HTTP POST     |
| Flux 1b - CreationNoteRestful   | Profil CdL_DocumentReferenceCdL      | HTTP POST |
| Flux 1c - CreationNoteTransaction | Profil CdL_BundleCreationNoteCdL   | HTTP POST     |
| Flux 2a - MAJActeurRestful      | Idem Flux 1a - CreationActeurRestful | HTTP PUT |
| Flux 2b - MAJNoteRestful        | Idem Flux 1b - CreationNoteRestful   | HTTP PUT |
| Flux 2c - MAJNoteTransaction    | Profil CdL_BundleMAJNoteCdL          | HTTP POST |
| Flux 3 - SuppressionNote (optionnel) | Idem Flux 1b - CreationNoteRestful | HTTP DELETE |
| Flux 4 - RechercheNotes         | Idem Flux 1b - CreationNoteRestful   | HTTP GET |
| Flux 5 - ReponseRechercheNotes  | Profil CdL_BundleResultatRechercheNotesCdL | Réponse à la requête  |

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