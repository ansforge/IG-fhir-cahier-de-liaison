### Flux 2 : Mise à jour d’une note

Ce flux permet au créateur d’une note, qu’il soit un professionnel, un établissement, une personne tierce, un équipement ou la personne prise en charge, de corriger ou de modifier sa note. Les informations véhiculées dans ce flux sont similaires à celles relatives à la note, véhiculées dans le flux 1 de création de note, l’identifiant de la note idNote étant obligatoire.
La gestion des droits d’accès est hors champs des présentes spécifications. Il est tout de même à noter que pour des raisons d’imputabilité, il est recommandé qu’une note ne puisse être modifiée que par son auteur.

#### Option RestFUL

Le flux 2b de mise à jour est une requête HTTP PUT reposant sur l’interaction « update » de FHIR . La ressource « DocumentReference » constitue le corps de la requête. La mise à jour nécessite de préciser l’identifiant logique de la ressource à mettre à jour. 
Si la mise à jour de la note est correctement effectuée, le système gestionnaire retourne un code HTTP 200 ok.
A la mise à jour de la note, le gestionnaire incrémente le numéro de version de la ressource (DocumentReference.meta.versionID) et indique la date de la mise à jour au niveau de DocumentReference.meta.LastUpdated.

Les requêtes de création et de mise à jour sont envoyées au gestionnaire :

<div class="figure" style="width:100%;">
    <p>{% include 1b-2b-restful.svg %}</p>
</div>

#### Option transaction

Le Bundle « CdL_BundleMAJNoteCdL» peut contenir exactement les mêmes ressources que le « CdL_BundleCreationNoteCdL». Le Bundle contient à minima une ressource DocumentReference ; concernant les acteurs, seules la ou les ressources qui doivent être créées ou mises à jour sont inclues dans le bundle. Ce Bundle constitue le corps de la requête HTTP POST.
Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à PUT pour chaque ressource à mettre à jour ou à POST pour chaque nouvelle ressource à créer sur le serveur :

* Pour la ressource DocumentReference, l’attribut request.method sera positionné à PUT,

* Pour les ressources référencées dans DocumentReference comme sujet et auteur de la note, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera alors positionné à POST s’il s’agit d’un nouvel acteur ou à PUT pour mettre à jour un acteur. 

La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire

<div class="figure" style="width:100%;">
    <p>{% include 1c-2c-transaction.svg %}</p>
</div>