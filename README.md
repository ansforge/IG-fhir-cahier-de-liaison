Ce guide d'implémentation sera accessible à l'adresse https://interop.esante.gouv.fr/ig/fhir/cdl après publication. Pour l'heure, la version actuellement publiée est accessible [ici](esante.gouv.fr/volet-cahier-de-liaison).

Publication en intégration continue : https://ansforge.github.io/IG-fhir-cahier-de-liaison/main/ig

# Contexte

## Contexte métier du projet

Cahier de liaison du patient pour partage entre les différents acteurs de sa santé.

## Contexte technique du projet

Ce volet spécifie les flux d’échange d’information entre :

* un système cible, gestionnaire du cahier de liaison, stockant, indexant et mettant à disposition des notes relatives à une personne prise en charge ;
* un système initiateur, une application mobile par exemple, souhaitant créer, mettre à jour, supprimer ou rechercher des notes dans le cahier de liaison.

