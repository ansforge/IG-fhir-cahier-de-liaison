Profile: CdLDocumentReference
Parent: DocumentReference
Id: cdl-document-reference
Title: "DocumentReference Cahier de Liaison"
Description: "Profil de la ressource DocumentReference pour le cahier de liaison. Il regroupe les informations relatives à la note."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains cdl-ext-is-emergency named isEmergency 0..*
* extension[isEmergency] ^short = "L’urgence de la note qui permettra d’identifier la façon avec laquelle elle devra être prise en compte"
* extension[isEmergency] MS

* masterIdentifier ^short = "Identifiant de la note attribué par le système initiateur à l’origine de la création de la note"
* masterIdentifier MS

* status ^short = "Le statut de la note. Les gestionnaires de cahiers de liaison ne supportant pas la suppression de notes peuvent proposer leur désactivation par mise à jour de leurs statuts"
* status MS

* docStatus ..0

* date MS

* type 1..
* type from $JDV-J23-TypeNoteCahierLiaison-CISIS (required)
* type MS

* subject 1..
* subject only Reference(FRCorePatientProfile)
* subject MS

* author 1..
* author MS
* author ^short = "Auteur de la note. Il est préférable de privilégier la situation d'exercice (PractitionerRole) dans le cas où l'auteur est un professionnel."
* author only Reference(Device or FRCoreRelatedPersonProfile or FRCorePatientProfile or as-practitioner or as-practitionerrole or as-organization)

* relatesTo ^short = "Cet élément peut être utilisé pour lier des notes entre elles (note en réponse à une autre par exemple). Pour ce faire le code « appends » doit être utilisé dans relatesTo.code et relatesTo.reference doit pointer vers la note mère."

* description MS

* authenticator ..0
* custodian ..0
* securityLabel ..1
* securityLabel from $JDV-J110-StatutVisibiliteDocument-CISIS (required)
* securityLabel ^short = "Statut de visibilité de la note"
* securityLabel MS

* content MS
* content ^short = "Contenu de la note. Cet élément qui représente le contenu de la note est répétable. Pour une note avec du texte et une photo par exemple, deux instances de l’élément « content » peuvent être présentes : une pour représenter le texte et une pour représenter la photo."

* content.attachment.contentType MS
* content.attachment.data MS
* content.attachment.url MS
* content.attachment.title MS
* content.attachment.creation MS

* context MS


Mapping:  CdLDocumentReferenceToMOSNote
Source:   CdLDocumentReference
Target:   "https://mos.esante.gouv.fr"
Id:       cdl-documentreference-to-mos-note
Title:    "CdLDocumentReference to MOS - Note"
* -> "Note"
* masterIdentifier -> "Note.idNote"
* type -> "Note.type"
* securityLabel -> "Note.restrictionAudience"
* date -> "Note.dateHeureCreation"
* description -> "description"
* content.attachment -> "Note.pieceJointe"
* extension[isEmergency] -> "Note.urgenceNote"
* author -> "Note.auteurNote"
* author -> "AuteurNote.idAuteurNote"
* subject -> "Note.personnePriseEnCharge"