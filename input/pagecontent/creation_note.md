### Flux 1 : création d'une note

Ce flux contient les informations relatives à une nouvelle note et alimente le cahier de liaison. Les informations véhiculées sont relatives à un épisode dans la prise en charge d’une personne. L’auteur de la note peut être la personne prise en charge, un professionnel, une personne tierce, un établissement ou un équipement.
Il s’agit d’un flux d’indexation de notes. Il véhicule la nouvelle note, en tant que pièce jointe (objet binaire), et ses métadonnées. Une note peut avoir des formats différents (texte, image, contenu structuré…).

#### Option RestFUL

Le flux 1b de création d’une note est une requête HTTP POST dont le corps est constitué d'une ressource « DocumentReference ». Si la création de la note est correctement effectuée, un code HTTP 201 created est retourné.

#### Option transaction

La première étape de la construction de ce flux de création de note consiste à organiser son contenu. Plusieurs types de ressources sont présents :

* La ressource DocumentReference (profil CdL_DocumentReferenceCdL),
* La ressource référencée en tant que sujet de la note : la ressource Patient (profil FrPatient),
* La ou les ressources référencées comme auteur de la note :
  * PractitionerRole (profil PractitionerRoleOrganizationalRoleRASS) pour représenter la situation d’exercice particulière d’un professionnel.
    * Avec PractitionerRole (profil PractitionerRoleProfessionalRoleRASS) représentant l’exercice professionnel, référencée depuis PractitionerRole.partOf.
    * Avec Practitioner (profil FrPractitioner) référencée depuis PractitionerRole.practitioner (Exercice professionnel).
  * RelatedPerson (profil FrRelatedperson) pour représenter une personne tierce,
  * Organization (profil FrOrganization) pour représenter une entité géographique (EG)
  * Device pour représenter une ressource matérielle.

Ces ressources sont encapsulées dans une ressource « Bundle » de type « transaction » conforme au profil « CdL_BundleCreationNoteCdL». Le Bundle contient a minima une ressource DocumentReference. Ce Bundle constitue le corps de la requête HTTP POST.
Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à POST pour chaque nouvelle ressource à créer sur le serveur :

* Pour la ressource DocumentReference, l’attribut request.method sera positionné à POST,
* Pour les ressources référencées dans DocumentReference comme sujet et auteur de la note, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera positionné à POST.
La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.

Si la transaction a été correctement effectuée et donc que la création de la note est correctement effectuée, un code HTTP 200 ok est retourné . Un Bundle de type transaction-response doit être renvoyé dans le corps de la réponse . Ce dernier doit contenir les ressources telles qu’elles ont été créées par le gestionnaire ou, a minima, les identifiants logiques des ressources ayant été attribués par le gestionnaire (dans Bundle.entry.fullUrl et/ou Bundle.entry.resource.id).
Sinon, un code HTTP 500 Internal Server Error est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle.

### Flux 1 : création d'acteurs

Les flux de gestion des ressources représentant l’auteur et le sujet d’une note sont des flux de création et de mise à jour des acteurs respectivement opérés par les requêtes HTTP POST et HTTP PUT sur les ressources FHIR « Patient », « Practitioner », « PractitionerRole », « RelatedPerson », « Organization » et « Device ». 
Il est fortement recommandé de s’appuyer sur les données de l’Annuaire Santé , rassemblant les données d’identification des professionnels et des structures de santé issues des différents référentiels nationaux.
Le flux 1a de création d’un acteur est une requête HTTP POST reposant sur l’interaction « create » de FHIR .
Le flux 2a de mise à jour est une requête HTTP PUT reposant sur l’interaction « update » de FHIR . La mise à jour nécessite de préciser l’identifiant logique de la ressource à mettre à jour. 

Ces requêtes sont envoyées au gestionnaire :

<div class="figure" style="width:100%;">
    <p>{% include gestion-acteurs.svg %}</p>
</div>

Si la création de l’acteur est correctement effectuée, un code HTTP 201 created est retourné.
Si la mise à jour d’un acteur est correctement effectuée, le système gestionnaire retourne un code HTTP 200 OK . 
