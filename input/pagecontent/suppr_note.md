### Flux 3 : Suppression d’une note

Ce flux permet au créateur d’une note, qu’il soit un professionnel, un établissement, une personne tierce, un équipement ou la personne prise en charge, de supprimer une note créée par erreur. Les informations véhiculées dans ce flux sont celles nécessaires à l’identification de la note.

Ce flux est optionnel. Pour des raisons de traçabilité, il est recommandé au gestionnaire du cahier de liaison de privilégier la désactivation d’une note (mise à jour du statut de la note grâce à l’élément DocumentReference.status) plutôt que sa suppression.

Si ce flux est implémenté, pour des raisons d’imputabilité, il est recommandé qu’une note ne puisse être supprimée que par son auteur.


La suppression concerne les informations qui se rapportent directement à la note, c’est-à-dire la ressource « DocumentReference ». La suppression d’une note est faite à travers une requête HTTP DELETE.

Il est possible d’utiliser l’identifiant attribué par le système source, le « masterIdentifier » pour cette opération. Pour ce faire il faut supporter la suppression conditionnelle de FHIR  en employant le paramètre de recherche « identifier ».

Si la suppression de la note est correctement effectuée, le système gestionnaire du cahier de liaison retourne un code HTTP 200 ok. Pour des informations sur les autres codes HTTP (HTTP status codes) consultez la documentation relative à l’interaction de suppression, « delete » de l’API REST FHIR . 

Il est recommandé de ne pas permettre la suppression du sujet et de l’auteur référencés par le « DocumentReference » qui peuvent être référencés par d’autres notes.

<div class="figure" style="width:100%;">
    <p>{% include 3-suppr.svg %}</p>
</div>
