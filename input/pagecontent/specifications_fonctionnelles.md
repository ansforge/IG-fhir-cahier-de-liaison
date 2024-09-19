### Introduction

Ce document présente une étude « métier » pour la mise en œuvre d’un cahier de liaison dans le domaine sanitaire, médico-administratif, médico-social et social afin d’assurer un suivi « terrain » d’une personne prise en charge (usager du secteur social ou patient)

L’étude menée concerne la modélisation des flux qui existent entre les composants d’un système d’information ou entre des systèmes d’informations qui participent à la mise en œuvre du cahier de liaison. Elle englobe les actions d'alimentation et de consultation du cahier de liaison selon divers critères de recherche qui sont présentés dans ce document.

A noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. En effet, les aspects relatifs à la sécurité sont du ressort du système d’information les implémentant.

Ces exigences « métier » sont mis en œuvre par les volets transport et service du CI-SIS.

#### Exemple - Remontée des informations de l’infirmière

Ci-dessous un exemple d’une mise en œuvre du cahier de liaison.

1. Lors de sa tournée au domicile du patient, l’infirmière constate un changement de son état de santé.
2. A la fin de sa visite, elle se connecte à la plateforme et accède au cahier de liaison partagé dans lequel elle peut indiquer ses observations, afin de les partager avec l’ensemble de l’équipe de prise en charge.
3. Le médecin traitant consulte les dernières observations relatives à son patient et décide de prendre contact avec le patient afin de faire un nouveau bilan.

#### Méthode d’élaboration des spécifications fonctionnelles

Les spécifications « métier » présentées dans ce document suivent la méthode d’élaboration des spécifications fonctionnelles des échanges élaborée par l’ANS. Cette méthode est constituée de plusieurs étapes :

- **Etape 1**: Organisation du contexte métier;
- **Etape 2**: Définition des processus métier collaboratifs;
- **Etape 3**: Description de chaque processus défini et identification des flux échangés
- **Etape 4**: Qualification des flux échangés;
- **Etape 5**: Pour chaque flux, identification des informations véhiculées;
- **Etape 6**: Élaboration du modèle hiérarchique de chaque flux structuré (sous forme d’un ou plusieurs diagrammes de classes UML). Le modèle hiérarchique élaboré repose sur la reprise des composants mutualisés dans le modèle des objets de santé (MOS) et des nomenclatures associées. A l'issue de cette élaboration, il se peut que de nouveaux composants jusqu'alors inexistants dans le MOS aient été définis et soient intégrés par la suite au MOS.

### Élaboration des spécifications fonctionnelles

#### Etape 1: Organisation du contexte métier

Le but de cette étape est d’organiser la vue métier dans laquelle s’insère le projet et d'identifier le ou les processus collaboratifs du périmètre du projet.

Le domaine « cahier de liaison » est relatif à la mise en œuvre d’un cahier de liaison partagé afin d’assurer un suivi « terrain » de la personne prise en charge. Il peut être alimenté, automatiquement ou manuellement, par des professionnels, des logiciels métier, une personne tierce (Une personne tierce peut être, par exemple, un membre de la famille qui s’occupe quotidiennement de la personne prise en charge.) en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Le cahier de liaison permet de garder en temps réel, une vue précise de la situation de cette personne prise en charge. Les informations échangées peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.

Le groupe de processus « gestion du cahier de liaison » comprend les processus relatifs à:

- La **création d’une note** dans le cahier de liaison par un professionnel, une personne tierce, une entité géographique, un équipement ou la personne prise en charge dans le secteur sanitaire, médico-administratif, médico-social et social;
- la **mise à jour d’une note** (modification) dans le cahier de liaison
- la **suppression d’une note** dans le cahier de liaison
- la **consultation d’une ou de plusieurs notes** dans le cahier de liaison par un professionnel, une personne tierce, une entité géographique ou la personne prise en charge dans le secteur sanitaire, médico-administratif, médico-social et social;


#### Etape 2: Définition des processus métier collaboratifs

Le but de cette étape est de définir les processus métier collaboratifs identifiés ci-dessus. Les Tables ci-dessous contiennent des informations concernant les acteurs et les cas d’utilisation des Figures 1, 2, 3 et 4.

| **Acteur** | **Description** |
| --- | --- |
| Gestionnaire de cahier de liaison | Il s’agit d’un système d’information ou d’un composant de système d’information qui implémente le cahier de liaison. |
| Professionnel | Un professionnel est une personne qui participe à la prise en charge d’une personne que ce soit au niveau sanitaire, médico-administratif, médico-social ou social. |
| PersonneTierce | Une personne tierce (non-professionnelle) participe à la prise en charge d’une personne que ce soit au niveau sanitaire, médico-administratif, médico-social ou social. Une personne tierce peut être un membre de la famille ou un proche de la personne à prendre en charge. |
| PersonnePriseEnCharge | Il s’agit de la personne à prendre en charge dans le secteur social ou sanitaire. |
| EntiteGeographique | L'[Entité Géographique](http://esante.gouv.fr/sites/MOS/MOS/0.html) (EG) correspond à la notion d'établissement:  <br>\*\* Pour les établissements inscrits au FINESS, l'EG correspond à une implantation géographique. Un établissement est caractérisé par une catégorie d'établissement; un établissement est obligatoirement relié à une entité juridique; à chaque établissement sont associées les activités exercées.  <br>\*\* Pour les organismes inscrits uniquement dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro SIRET.  <br>Synonymes: Site, établissement, structure. |
| Equipement | Equipement ou dispositif médical utilisé pour la réalisation d'une activité de soin ou le suivi du patient (objet connecté, équipement de diagnostic…) |

Table 1 : Table des acteurs

| **Cas d'utilisation** | **Description** |
| --- | --- |
| Création d’une note | Un professionnel, une personne tierce, un équipement, la personne prise en charge ou une entité géographique (un hôpital, par exemple) se connecte au gestionnaire de cahier de liaison via un module d’accès (Le module d’accès peut être offert par le portail internet ou bien intégré au logiciel du professionnel de santé (LPS). Il n’y a pas de de contrainte architecturale concernant ce module.). Ainsi, Ils accèdent au cahier de liaison afin de pouvoir l’alimenter avec de nouvelles informations qui ont vocation à être partagées. |
| Mise à jour d’une note | Une personne (professionnel, personne tierce ou personne prise en charge), un équipement ou une entité géographique se connecte au gestionnaire de cahier de liaison via un module d’accès pour modifier une note. |
| Suppression d’une note | Une personne (professionnel, personne tierce ou personne prise en charge) ou une entité géographique se connecte au gestionnaire de cahier de liaison via un module d’accès pour supprimer une note. |
| Consultation de note(s) | Une personne (professionnel, personne tierce ou personne prise en charge) ou une entité géographique se connecte au gestionnaire de cahier de liaison via un module d’accès pour consulter le suivi de la personne prise en charge. Dans ce cadre, le cahier de liaison agit comme une ressource qui donne des informations sur l’état de la personne prise en charge. |

Table 2 : Table des cas d'utilisation

Les Figures 1, 2, 3 et 4 présentent des diagrammes de cas d’utilisation concernant les processus identifiés ainsi que les acteurs concernés.

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img1.png" alt="CI-SIS" title="Diagramme de cas d’utilisation concernant la création d’une note dans le cahier de liaison">
</div>

Figure 1 : Diagramme de cas d’utilisation concernant la création d’une note dans le cahier de liaison

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img2.png" alt="CI-SIS" title="Diagramme de cas d’utilisation concernant la mise à jour d’une note dans le cahier de liaison">
</div>

Figure 2 : Diagramme de cas d’utilisation concernant la mise à jour d’une note dans le cahier de liaison

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img3.png" alt="CI-SIS" title="Diagramme de cas d’utilisation concernant la suppression d’une note dans le cahier de liaison">
</div>

Figure 3 : Diagramme de cas d’utilisation concernant la suppression d’une note dans le cahier de liaison

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img4.png" alt="CI-SIS" title="Diagramme de cas d’utilisation concernant la consultation de note(s) dans le cahier de liaison">
</div>

Figure 4 : Diagramme de cas d’utilisation concernant la consultation de note(s) dans le cahier de liaison

#### Etape 3: Description du processus et identification des flux

L’objectif de cette étape est de décrire les processus métier collaboratifs définis dans les cas d'utilisation de l’étape 2. Dans ce document, les processus sont modélisés avec des diagrammes d'activités UML qui identifient les acteurs techniques qui échangent des flux d’informations. Les Figure 6, 7, 8 et 9 décrivent les interactions entre le créateur/consommateur du contenu et le gestionnaire de cahier de liaison.

Sauf indication contraire, il n’y a pas de contrainte architecturale d’implémentation du gestionnaire de cahier de liaison: il peut être mis en œuvre au sein d’un même système ou sur plusieurs systèmes répartis.

##### Création d’une note

Les Tables 3, 4 et 5 représentent les acteurs, les actions et les flux identifiés en ce qui concerne le processus « Création d’une note ». Le diagramme d’activités correspondant est représenté dans la Figure 5.

| **Acteur** | **Description** |
| --- | --- |
| Créateur de contenu | Il s’agit de la personne, de l’équipement ou de l’entité qui alimente le cahier de liaison par des informations qui ont vocation à être partagées. Le créateur de contenu peut être un logiciel métier installé sur un ordinateur, une application installée sur un téléphone mobile ou une tablette ainsi que tout autre dispositif utilisé par une personne ou une entité ou interfacé à un équipement pour alimenter le cahier de liaison. |
| Gestionnaire de cahier de liaison | Le gestionnaire de cahier de liaison implémente le cahier de liaison. |

Table 3 : Table des acteurs

| **Action** | **Description** |
| --- | --- |
| Saisir la note à créer | le créateur de contenu saisit les informations concernant la personne prise en charge. |
| Envoyer la note au gestionnaire de cahier de liaison | Une fois que le créateur de contenu a saisi les informations qui ont vocation à être partagées, il envoie ces informations au gestionnaire de cahier de liaison. |
| Alimenter le cahier de liaison | Le gestionnaire de cahier de liaison reçoit les informations concernant la personne prise en charge et alimente le cahier de liaison. |

Table 4: Table des actions identifiées

| **Flux identifiés** | **Description** |
| --- | --- |
| Flux 1 - CréationNote | Il s’agit du flux qui contient les informations saisies par le créateur de contenu afin de créer une note dans le cahier de liaison concernant la personne prise en charge. |

Table 5: Table des flux identifiés

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img5.png" alt="CI-SIS" title="Diagramme d’activités du processus « Création d’une note »">
</div>

Figure 5 : Diagramme d’activités du processus « Création d’une note »

##### Mise à jour d’une note

Les Tables 6, 7 et 8 représentent les acteurs, les actions et les flux identifiés en ce qui concerne le processus « Mise à jour d’une note». Le diagramme d’activités correspondant est représenté dans la Figure 6.

| **Acteur** | **Description** |
| --- | --- |
| Créateur de contenu | Il s’agit de la personne, de l’équipement ou de l’entité qui a créé la note et qui demande sa modification dans le cahier de liaison. Le créateur de contenu peut être un logiciel métier installé sur un ordinateur, une application installée sur un téléphone mobile ou une tablette ainsi que tout autre dispositif utilisé par une personne ou une entité pour alimenter le cahier de liaison. |
| Gestionnaire de cahier de liaison | Le gestionnaire de cahier de liaison qui implémente le cahier de liaison. |

Table 6 : Table des acteurs

| **Action** | **Description** |
| --- | --- |
| Initier une demande de mise à jour d’une note | le créateur de contenu envoie une demande de modification d’une note au gestionnaire de cahier de liaison. |
| Mettre à jour la note concernée par la demande | Une fois que la demande est réceptionnée, le gestionnaire de cahier de liaison effectue l’opération de la mise à jour de la note concernée. |
| Envoyer une notification de mise à jour ou envoyer une erreur | Le gestionnaire de cahier de liaison envoie au créateur de la note une notification de mise à jour, ou il envoie une erreur. |
| Exploiter le retour du gestionnaire de cahier de liaison | Le créateur de contenu reçoit et traite le retour envoyé par le gestionnaire de cahier de liaison. |

Table 7: Table des actions identifiées

| **Flux identifiés** | **Description** |
| --- | --- |
| MaJNote | Il s’agit du flux qui contient les informations nécessaires pour que le gestionnaire de cahier de liaison traite la demande de mise à jour de la note. |

Table 8: Table des flux identifiés

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img6.png" alt="CI-SIS" title="Diagramme d’activités du processus collaboratif «Mise à jour d’une note»">
</div>

Figure 6: Diagramme d’activités du processus collaboratif «Mise à jour d’une note»

##### Suppression d’une note

Les Tables 9, 10 et 11 représentent les acteurs, les actions et les flux identifiés en ce qui concerne le processus « Suppression d’une note ». Le diagramme d’activités correspondant est représenté dans la Figure 7.

| **Acteur** | **Description** |
| --- | --- |
| Créateur de contenu | Il s’agit de la personne ou de l’entité qui a créé la(es) note(s) et qui demande la suppression d’une note dans le cahier de liaison. Le créateur de contenu peut être un logiciel métier installé sur un ordinateur, une application installée sur un téléphone mobile ou une tablette ainsi que tout autre dispositif utilisé par une personne ou une entité pour alimenter le cahier de liaison. |
| Gestionnaire de cahier de liaison | Le gestionnaire de cahier de liaison qui implémente le cahier de liaison. |

Table 9 : Table des acteurs

| **Action** | **Description** |
| --- | --- |
| Initier une demande de suppression d’une note | le créateur de contenu envoie une demande de suppression d’une note au gestionnaire de cahier de liaison. |
| Supprimer la note concernée par la demande | Une fois que la demande est réceptionnée, le gestionnaire de cahier de liaison effectue l’opération de suppression de la note concernée |
| Envoyer une notification de suppression ou envoyer une erreur | Le gestionnaire de cahier de liaison envoie au créateur de la note une notification de suppression dans le cas d’une suppression réussie. Dans le cas d’une impossibilité de suppression, il envoie une erreur. |
| Exploiter le retour du gestionnaire de cahier de liaison | Le créateur de contenu reçoit et traite le retour envoyé par le gestionnaire de cahier de liaison. |

Table 10: Table des actions identifiées

| **Flux identifiés** | **Description** |
| --- | --- |
| SuppressionNote | Il s’agit du flux qui contient les informations nécessaires pour que le gestionnaire de cahier de liaison puisse traiter la demande de suppression de note(s). |

Table 11: Table des flux identifiés

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img7.png" alt="CI-SIS" title="Diagramme d’activités du processus « Suppression d’une note»">
</div>

Figure 7 : Diagramme d’activités du processus « Suppression d’une note»

##### Consultation du cahier de liaison

Les Tables 12, 13 et 14 représentent les acteurs, les actions et les flux identifiés pour le processus « Consultation du cahier de liaison ». Le diagramme d’activités correspondant est représenté dans la Figure 8.

| **Acteur** | **Description** |
| --- | --- |
| Consommateur de contenu | Il s’agit de la personne ou entité qui consulte le cahier de liaison afin de récupérer des informations qui ont été partagées. Le consommateur de contenu peut être un logiciel métier installé sur un ordinateur, une application installée sur un téléphone mobile ou une tablette ainsi que tout autre dispositif utilisé par une personne ou une entité pour alimenter le cahier de liaison. |
| Gestionnaire de cahier de liaison | Le gestionnaire de cahier de liaison implémente le cahier de liaison. |

Table 12: Table des acteurs identifiés dans le diagramme d’activités de la Figure 8

| **Action** | **Description** |
| --- | --- |
| Envoyer une demande de consultation d’une ou de plusieurs notes | Le consommateur de contenu envoie une demande de consultation au gestionnaire de cahier de liaison en précisant les critères auxquelles doivent répondre les notes recherchées. |
| Rechercher les notes dans le cahier de liaison | Les notes demandées sont recherchées dans le cahier de liaison selon les critères définis par le consommateur de contenu. |
| Consulter la réponse du gestionnaire de cahier de liaison | Le consommateur consulte les notes retournées par le gestionnaire de cahier de liaison. |

Table 13: Table des actions identifiées dans le diagramme d’activités de la Figure 8

| **Flux identifiés** | **Description** |
| --- | --- |
| RechercheNotes | Il s’agit du flux qui contient les informations nécessaires pour rechercher une ou plusieurs notes dans un cahier de liaison. |
| RésulatsRechercheNotes | Il s’agit du flux qui contient les informations recherchées par le consommateur de contenu. |

Table 14 : Table des flux identifiés dans le diagramme d’activités de la Figure 8

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img8.png" alt="CI-SIS" title="Diagramme d’activités du processus « Consultation du cahier de liaison »">
</div>

Figure 8: Diagramme d’activités du processus « Consultation du cahier de liaison »

#### Etape 4: Qualification des flux échangés

Les flux échangés ont été identifiés à l'étape 3. L’étape 4 vise à qualifier les flux d'informations métier en identifiant les flux structurés. De plus, pour chaque flux, les acteurs « émetteur » et « récepteur » sont identifiés. Ci-dessous une liste des flux échangés dans le cadre du cahier de liaison.

| **Nom du flux** | **Emetteur** | **Récepteur** | **Nature du flux** |
| --- | --- | --- | --- |
| CréationNote | Créateur de contenu (personne, équipement ou entité) | Gestionnaire de cahier de liaison | Flux Structuré |
| MaJNote | Créateur de contenu (personne, équipement ou entité) | Gestionnaire de cahier de liaison | Flux Structuré |
| SuppressionNote | Créateur de contenu (personne ou entité) | Gestionnaire de cahier de liaison | Flux Structuré |
| RechercheNotes | Consommateur du contenu (personne ou entité) | Gestionnaire de cahier de liaison | Flux Structuré |
| RésultatRechercheNotes | Gestionnaire de cahier de liaison | Consommateur du contenu (personne ou entité) | Flux Structuré |

Table 15 : Récapitulatif des flux structurés identifiés

#### Etape 5: Identification des informations véhiculées dans les flux

Dans cette section, il s'agit de définir les informations « métier » présentes dans chaque flux identifié dans l’étape 4. La Table 16 liste les concepts présents dans ces flux.

|     | **Concepts** | **Définition** |
| --- | --- | --- |
| Auteur de la note | Professionnel | Un professionnel est une personne qui participe à la prise en charge d’une personne que ce soit au niveau sanitaire, médico-administratif, médico-social et social. |
| PersonneTierce | Une personne tierce peut être un membre de la famille ou un proche de la personne prise en charge. |
| EntitéGeographique | L'Entité Géographique (EG) correspond à la notion d'établissement (voir Table 1 pour plus de détails). |
| Equipement | Equipement ou dispositif médical utilisé pour la réalisation d'une activité de soin ou le suivi du patient (objet connecté, équipement de diagnostic…) |
| AuteurNote | Il s’agit de l’auteur de la note (professionnel, personne prise en charge, personne tierce ou entité géographique.) |
| Auteur ou sujet de la note | PersonnePriseEnCharge | Il s’agit de la personne prise en charge que ce soit au niveau sanitaire, médico-administratif, médico-social ou social. |
| Note | Note | Une note concerne un ensemble d’informations qui ont vocation à être partagées via le cahier de liaison. |

Table 16: Liste des concepts « métier » identifiés permettant l’alignement avec les informations modélisées dans le [MOS](http://esante.gouv.fr/sites/MOS/MOS/0.html).

#### Etape 6: Elaboration du modèle hiérarchique de chaque flux structuré

Le but de cette étape est d'élaborer des diagrammes de classe de chaque flux structuré à partir des informations métier identifiées. La représentation formalisée du flux doit prendre en compte deux exigences supplémentaires:

- Harmonisation du modèle avec d'autres flux: il faut réutiliser les classes génériques et mutualisées, mises à disposition dans le modèle des objets de santé (MOS);
- Hiérarchie: le modèle doit adopter une structure hiérarchique au plus proche du besoin métier

Ci-dessous les correspondances effectuées avec les concepts identifiés et les classes MOS (version 1.4).

| **Objets identifiés** | **Objets MOS correspondants** | **Attributs MOS à restreindre dans le modèle du flux** |
| --- | --- | --- |
| Professionnel | Professionnel,<br><br>ExerciceProfessionnel,<br><br>PersonnePhysique | Oui |
| PersonnePriseEnCharge | PersonnePhysique, Patient | Oui |
| Note |     | \-  |
| PersonneTierce | PersonnePhysique | Oui |
| EntitéGeorgraphique | EntitéGeographique | Oui |
| Equipement | RessourceMaterielle | non |
| AuteurNote | Professionnel<br><br>PersonnePhysique, | Oui |

Table 17 : Liste des correspondances entre les concepts « métier » identifiés et les concepts du MOS

##### Flux 1 - CréationNote

La Figure 9 présente le diagramme de classes modélisant les informations métier en ce qui concerne le Flux 1 « CréationNote ».

Note : Ce diagramme de classe est également utilisé pour modéliser les Flux 2 et 5.

{%include sf.svg%}

Figure 9: Diagramme de classe du flux « CréationNote»

Les tables ci-dessous définissent les attributs contenus dans le diagramme de classes de la Figure 7.

###### Classe "Note"

| **Nom** | **Description** | **Obligatoire** |
| --- | --- | --- |
| idNote: \[0..1\] Identifiant | Identifiant de la note dans le cahier de liaison. | Non, l’identifiant de la note peut être généré par le système ou bien précisé par la personne qui a créé la note. Cette information peut ne pas circuler dans ce Flux. |
| type: \[1..1\] Code | Type de la note: dépôt de document, sortie d’hôpital, etc. | Oui |
| restrictionAudience: \[0..1\] Code | Le type d’audience autorisé à accéder à la note (professionnels de santé, personnes tierces, etc.). | Non |
| dateHeureCreation: \[0..1\] DateHeure | Date à laquelle la note est déclarée. | Non, cette information est générée par le système et peut ne pas circuler dans le Flux.|
| description : \[0..1\] Texte | Il s’agit d’une description ou du titre de la note. | Oui |
| pieceJointe: \[1..\*\] ObjetBinaire | Il s’agit de toute pièce jointe à rajouter à la note. La pièce jointe peut être de plusieurs types (JPEG, TXT, PDF, XML, etc.). | Non |
| urgenceNote: \[0..1\] Indicateur | L’urgence de la note ce qui permet d’identifier la façon dont elle sera prise en charge. L’urgence de la note est de type Booléen (Urgente, non urgente). | Non |

Table 18 Attributs de la classe "Note"

###### Classe "AuteurNote"

| **Nom** | **Description** | **Obligatoire** |
| --- | --- | --- |
| idAuteurNote: \[0..1\] Identifiant | Identifiant de l’auteur de la note qui est soit un professionnel, soit une personne tierce, soit une entité géographique soit une personne prise en charge. | Non : Par exemple, ce champ peut prendre la valeur IdPP (Table 21) si l’auteur est un professionnel. |

Table 19 Attributs de la classe "AuteurNote"

###### Classe "PersonneTierce"

| **Nom** | **Description** | **Obligatoire** |
| --- | --- | --- |
| idPersonneTierce : \[0..1\] Identifiant | Identifiant de la personne tierce. | Non |
| adresse : \[0..\*\] Adresse | Point(s) de contact de la personne tierce. | Non |
| telecommunication: \[0..\*\] Telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |

Table 20 Attributs de la classe "PersonneTierce"

###### Classe "Professionnel"

Se référer à la classe **Professionnel** du [MOS](http://esante.gouv.fr/sites/MOS/MOS/0.html) pour plus d’informations.

| **Nom** | **Définition** | **Obligatoire** |
| --- | --- | --- |
| idPP : \[0..1\] Identifiant | Identifiant national de la personne physique:  <br>\*\* Pour les professionnels: N° RPPS ou ADELI  <br>\*\* Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure  <br>\*\* Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro Etudiant (identifiant ordinal dont les règles de génération sont propres à chaque ordre). | Non |
| adresseCorrespondance: \[0..\*\] Adresse | Adresse(s) de correspondance permettant de contacter les professionnels: | Non |
| telecommunication: \[0..\*\] Telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |

Table 21 Attributs de la classe "Professionnel"

###### Classe "ExerciceProfessionnel"

Se référer à la classe **ExerciceProfessionnel** du MOS pour plus d’informations.

| **Nom** | **Définition** | **Obligatoire** |
| --- | --- | --- |
| profession : \[0..1\] Code | Profession exercée ou future profession de l'étudiant. | Non |

Table 22 Attributs de la classe "ExcerciceProfessionnel"

###### Classe "EntiteGeographique”

Se référer à la classe **EntiteGeographique** du [MOS](http://esante.gouv.fr/sites/MOS/MOS/0.html) pour plus d’informations.

| **Nom** | **Description** | **Obligatoire** |
| --- | --- | --- |
| numFINESS : \[0..1\] Identifiant | Numéro FINESS de l'entité géographique. A chaque EG (établissement) est attribué un numéro FINESS à 9 caractères dont les 2 premiers correspondent au numéro du département d'implantation. Pour tous les départements d'outre-mer, les deux premiers caractères sont 97 et le quatrième caractère, dans ce cas précise le département 1 Guadeloupe, 2 Martinique, 3 Guyane et 4 Réunion. Pour Saint Pierre et Miquelon les deux premiers caractères sont 97 et le quatrième caractère est le 5. Pour Mayotte, les deux premiers caractères sont 98. | Non |
| secteurActivite : \[0..1\] Code | Un secteur d'activité regroupe les établissements partageant la même activité de santé. | Non |
| adresseEG : \[0..\*\] Adresse | Adresse(s) géopostale(s) de l'entité géographique en fonction de l'usage. | Non |
| telecommunication: \[0..\*\] Telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |
| denominationEG: \[0..1\] Texte | Nom sous lequel l'entité géographique exerce son activité. | Non |

Table 23 Attributs de la classe "EntiteGeographique"

###### Classe "RessourceMaterielle”

| Concept | Définition | Obligatoire |
| --- | --- | --- |
| libelle | Libellé de l'équipement | Non |
| reference | Référence de l'équipement | Non |

Table 24 Attributs de la classe"RessourceMaterielle"

###### Classe "PersonnePriseEnCharge”

| **Nom** | **Définition** | **Obligatoire** |
| --- | --- | --- |
| idPersonnePriseEnCharge \[0..1\] Identifiant | Identifiant de la personne prise en charge. | Non |
| adresse : \[0..\*\] Adresse | Point(s) de contact de la personne tierce. | Non |
| telecommunication: \[0..\*\] Telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |

Table 25 Classe "PersonnePriseEnCharge"

###### Classe "Patient”

Se référer à la classe **Patient** du [MOS](http://esante.gouv.fr/sites/MOS/MOS/0.html) pour plus d’informations.

| **Nom** | **Description** | **Obligatoire** |
| --- | --- | --- |
| idPatient: \[0..1\] Identifiant | Identifiant(s) du patient (identifiants de santé, identifiants locaux, etc.). | Non |
| adresseCorrespondance : \[0..\*\] Adresse | Point(s) de contact du patient. | Non |
| telecommunication: \[0..\*\] Telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |

Table 26 Classe "Patient"

###### Classe "PersonnePhysique”

Se référer à la classe **PersonnePhysique** du MOS pour plus d’informations.

| Nom | Définition | Obligatoire |
| --- | --- | --- |
| nomFamille: \[0..1\] Texte | Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.  <br>Synonymes : nom patronymique, nom de naissance. | Non |
| prenomUsuel: \[0..1\] Texte | Le prénom usuel est un des prénoms inscrit dans l'acte de naissance. | Non |

Table 27 "PersonnePhysique"

##### Flux 2 - MaJNote

Ce flux est modélisé par le même modèle hiérarchique du Flux 1 CréationNote, étant donné qu’ils peuvent contenir les mêmes informations métier.

A noter que pour la mise en œuvre du cahier de liaison dans une infrastructure de partage, la mise à jour d’une note concerne les informations relatives à son indexation et référencement dans cette infrastructure. Elle ne concerne pas les informations relatives à son auteur ni à son sujet.

##### Flux 3 - SuppressionNote

La Figure ci-dessous présente le diagramme de classe concernant le Flux 3 - **SuppressionNote**. Les attributs de cette classe représentent les critères de recherche des informations contenues dans le cahier de liaison afin de pouvoir supprimer une note.

<div class="figure" style="width:20%;">
    <img style="height: auto; width: 100%;" src="sf-img10.png" alt="CI-SIS" title="Diagramme de classes du Flux 3 - SuppressionNote">
</div>

Figure 10: Diagramme de classes du Flux 3 - SuppressionNote

La table ci-dessous définit les attributs contenus dans le diagramme de classe ci-dessus.

| Nom | Définition | Obligatoire |
| --- | --- | --- |
| idNote: \[0..1\] Identifiant | Identifiant d’une note | Non |

Table 28 Classe "SuppressionNote"

##### Flux 4 - RechercheNotes

La Figure 11 ci-dessous représente le diagramme de classe concernant le flux **RechercheNotes**. Les attributs de cette classe représentent les critères de recherche des informations contenues dans le cahier de liaison.

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="sf-img11.png" alt="CI-SIS" title="Diagramme de classe «RechercheNotes»">
</div>


Figure 11: Diagramme de classe «RechercheNotes»

La table ci-dessous définit les attributs contenus dans le diagramme de classe de la Figure 11.

| Nom | Définition | Obligatoire |
| --- | --- | --- |
| PersonnePriseEnCharge/idPersonnePriseEnCharge: \[0..1\] Identifiant | Identifiant de la personne prise en charge. | Non |
| AuteurNote/idAuteurNote : \[0..1\] Identifiant | Identifiant de l’auteur de la note. | Non |
| AuteurNote/prenomUsuel: \[0..1\] Texte | Le prénom usuel de l’auteur de la note. | Non |
| AuteurNote /nomFamille : \[0..1\] Texte | Le nom de famille de l’auteur de la note. | Non |
| Note/dateHeureCreation: \[0..1\] DateHeure | Date et heure de la création de la note dans le cahier de liaison. | Non |
| Note/type: \[0..1\] Code | médical, non médical, etc. | Non |
| Note/restrictionAudience: \[0..1\] Code | Le type d’audience autorisé à accéder à la note. | Non |

Table 29 Classe "RechercheNotes"

##### Flux 5 - RésultatRechercheNotes

Le Flux 5 est modélisé par le même modèle hiérarchique du Flux 1 - CréationNote, étant donné qu’il peut contenir les mêmes informations « métier ». Par contre, ce flux peut contenir plusieurs notes.