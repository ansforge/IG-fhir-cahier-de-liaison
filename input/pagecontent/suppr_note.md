### Flux 3 : Suppression d’une note

Ce flux permet au créateur d’une note, qu’il soit un professionnel, un établissement, une personne tierce, un équipement ou la personne prise en charge, de supprimer une note créée par erreur. Les informations véhiculées dans ce flux sont celles nécessaires à l’identification de la note.

Ce flux est optionnel. 
Pour des raisons de traçabilité, il est recommandé au gestionnaire du cahier de liaison de privilégier la désactivation d’une note (mise à jour du statut de la note grâce à l’élément DocumentReference.status) plutôt que sa suppression.
Si ce flux est implémenté, pour des raisons d’imputabilité, il est recommandé qu’une note ne puisse être supprimée que par son auteur.
