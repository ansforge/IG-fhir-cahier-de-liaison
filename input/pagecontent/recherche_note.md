### Flux 4 : Recherche de notes

Ce flux intervient dans le processus de consultation de notes d’un cahier de liaison. Il permet de communiquer un ensemble de critères de recherche de notes au système gestionnaire du cahier de liaison.

Le flux 4 de recherche de notes est une requête HTTP GET accompagnée des paramètres listés dans le tableau ci-dessous. Ces critères de recherche ont été définis lors de l'étude métier de ce volet.

| Critère de recherche |                | Paramètre     | Type du paramètre |
| ---                  | ---            | ---           | ---                |
| Identifiant de la personne prise en charge   | | subject:Patient.identifier ou patient.identifier ou subject.identifier | token |
| Identifiant de l'auteur de la note   | S’il s’agit d’un professionnel             | author:Prctitioner.identifier | token       |
|                                      | S’il s’agit de la personne prise en charge | author:Patient.identifier | token |
|                                      | S’il s’agit d’une personne tierce          | author:RelatedPerson.identifier | token |
|                                      | S’il s’agit d’un établissement             | author:Organization.identifier | token |
|                                      | S’il s’agit d’un équipement                | author:Device.identifier | token |
| Nom de famille de l’auteur de la note | S’il s’agit d’un professionnel | author:Practitioner.family ou author:Practitioner.name | string |
|                                       | S’il s’agit de la personne prise en charge |author:Patient.family ou author:Patient.name| string |
|                                       | S’il s’agit d’une personne tierce | author:RelatedPerson.name | string |
| Prénom de l’auteur de la note | S’il s’agit d’un professionnel | author:Practitioner.given ou author:Practitioner.name | string |
|                               | S’il s’agit de la personne prise en charge | author:Patient.given ou author:Patient.name | string |
|                               | S’il s’agit d’une personne tierce | author:RelatedPerson.name | string |
| Date de création de la note | | date | date |
| Type de la note | | type | token |
| Degré de restriction de l’audience de la note | | security-label | token |

Le paramètre « \_include » doit pouvoir être utilisé pour demander le renvoi des ressources référencées par les éléments de la ressource « DocumentReference », particulièrement par les éléments « subject » et « author ».

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
