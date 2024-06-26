### Flux 4 : Recherche de notes

Ce flux intervient dans le processus de consultation de notes d’un cahier de liaison. Il permet de communiquer un ensemble de critères de recherche de notes au système gestionnaire du cahier de liaison.


Le flux 4 de recherche de notes est une requête HTTP GET accompagnée des
paramètres listés dans le tableau ci-dessous. Ces critères de recherche
ont été définis lors de l'étude métier de ce volet.

+---------------+----------------+----------------------+-------------+
| Critère de    |                | Paramètre            | Type du     |
| recherche     |                |                      | paramètre   |
+===============+================+======================+=============+
| Identifiant   |                | subjec               | token       |
| de la         |                | t:Patient.identifier |             |
| personnes     |                |                      |             |
| prise en      |                | ou                   |             |
| charge        |                |                      |             |
|               |                | patient.identifier   |             |
|               |                |                      |             |
|               |                | ou                   |             |
|               |                |                      |             |
|               |                | subject.identifier   |             |
+---------------+----------------+----------------------+-------------+
| Identifiant   | S'il s'agit    | author:Pra           | token       |
| de l'auteur   | d'un           | ctitioner.identifier |             |
| de la note    | professionnel  |                      |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit de | autho                | token       |
|               | la personne    | r:Patient.identifier |             |
|               | prise en       |                      |             |
|               | charge         |                      |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit    | author:Rela          | token       |
|               | d'une personne | tedPerson.identifier |             |
|               | tierce         |                      |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit    | author:Org           | token       |
|               | d'un           | anization.identifier |             |
|               | établissement  |                      |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit    | auth                 | token       |
|               | d'un           | or:Device.identifier |             |
|               | équipement     |                      |             |
+---------------+----------------+----------------------+-------------+
| Nom de        | S'il s'agit    | author               | string      |
| famille de    | d'un           | :Practitioner.family |             |
| l'auteur de   | professionnel  |                      |             |
| la note       |                | ou                   |             |
|               |                |                      |             |
|               |                | auth                 |             |
|               |                | or:Practitioner.name |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit de | a                    | string      |
|               | la personne    | uthor:Patient.family |             |
|               | prise en       |                      |             |
|               | charge         | ou                   |             |
|               |                |                      |             |
|               |                | author:Patient.name  |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit    | autho                | string      |
|               | d'une personne | r:RelatedPerson.name |             |
|               | tierce         |                      |             |
+---------------+----------------+----------------------+-------------+
| Prénom de     | S'il s'agit    | autho                | string      |
| l'auteur de   | d'un           | r:Practitioner.given |             |
| la note       | professionnel  |                      |             |
|               |                | ou                   |             |
|               |                |                      |             |
|               |                | auth                 |             |
|               |                | or:Practitioner.name |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit de | author:Patient.given | string      |
|               | la personne    |                      |             |
|               | prise en       | ou                   |             |
|               | charge         |                      |             |
|               |                | author:Patient.name  |             |
+---------------+----------------+----------------------+-------------+
|               | S'il s'agit    | autho                | string      |
|               | d'une personne | r:RelatedPerson.name |             |
|               | tierce         |                      |             |
+---------------+----------------+----------------------+-------------+
| Date de       |                | date                 | date        |
| création de   |                |                      |             |
| la note       |                |                      |             |
+---------------+----------------+----------------------+-------------+
| Type de la    |                | type                 | token       |
| note          |                |                      |             |
+---------------+----------------+----------------------+-------------+
| Degré de      |                | security-label       | token       |
| restriction   |                |                      |             |
| de l'audience |                |                      |             |
| de la note    |                |                      |             |
+---------------+----------------+----------------------+-------------+


Le paramètre « \_include »[^27] doit pouvoir être utilisé pour demander le renvoi des ressources référencées par les éléments de la ressource « DocumentReference », particulièrement par les éléments « subject » et « author ».

Exemples de requêtes

GET http ://targetsystem.com/API/DocumentReference?\_include=\*&patient.identifier=1234567890112345678901&author:Practitioner.identifier=80123456789

Rechercher les ressources de type DocumentReference dont le sujet et l'auteur portent respectivement les identifiants 1234567890112345678901 et 80123456789. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par les ressources « DocumentReference » retournées.

GET http://targetsystem.com/API/DocumentReference?\_include=DocumentReference:subject&author:Practitioner.family=Dupont&author:Practitioner.given=Marie

Rechercher les ressources de type DocumentReference dont l'auteur a comme nom de famille « Dupont » et comme prénom « Marie ». Le résultat de la recherche devrait aussi inclure les ressources référencées par l'élément subject des ressources DocumentReference retournées, c'est-à-dire les ressources Patient.

GET http://targetsystem.com/API/DocumentReference?\_include=\*&date=ge2013-03-16&type=urn:oid:1.2.250.1.213.1.1.5.98\|OBS

Rechercher les ressources de type DocumentReference ayant été créées depuis le 16/03/2013 inclus et ayant comme type « Note d'observation » (code OBS du jeu de valeurs portant l'OID 1.2.250.1.213.1.1.5.98). Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par les ressources DocumentReference retournées.



### Flux 5 : Résultat de recherche de notes

Le flux 5 constitue la réponse à la requête GET du flux précédent. Lorsque la recherche s'est bien exécutée, le système gestionnaire du cahier de liaison retourne un code HTTP 200 OK. Le corps de la réponse à la requête est une ressource « Bundle » de type « searchset » encapsulant une collection de 0, à plusieurs ressources « DocumentReference » répondant aux critères de recherche. Les ressources référencées par les ressources DocumentReference retournées seront aussi dans le Bundle si celles-ci ont été demandées via le paramètre \_include, dans la requête GET.

Le résultat de recherche pouvant contenir un grand nombre de notes, le gestionnaire de cahier de liaison peut choisir de ne pas renvoyer les contenus lourds des notes dans les ressources « DocumentReference » (DocumentReference.content.attachment.data vide pour les photos par exemple).

Les systèmes consommateurs de notes devront les récupérer dans un second temps via des requêtes GET spécifiques en utilisant l'url indiquée dans l'attribut DocumentReference.content.attachment.url.

Pour des informations sur les autres codes HTTP (HTTP status codes) retournés en cas d'échec, consultez la documentation relative à l'interaction de recherche, « search » de l'API REST FHIR[^29].

Ce flux intervient dans le processus de consultation de notes d’un cahier de liaison. Il s’agit du résultat de recherche retourné par le gestionnaire du cahier de liaison suite à la réception du flux 4 de recherche de notes.
Le contenu de ce flux est similaire à celui du flux 1 de création de note mais peut englober plusieurs notes.

Les recherches sont soumises au gestionnaire qui retourne les résultats au consommateur :

<div>
    <img src="recherche.png"  alt="Recherche d'une note" width="60%">
    <p>Recherche d'une note</p>
    <p></p>
</div>
