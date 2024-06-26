Profile: CdL_DocumentReferenceCdL
Parent: DocumentReference
Id: cdl-document-reference
Description: "Profil de la ressource DocumentReference pour le cahier de liaison"

* meta.lastUpdated 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains cdl-ext-is-emergency named isEmergency 0..*

* docStatus ..0

* type 1..
* type from $JDV-J23-TypeNoteCahierLiaison-CISIS (required)
* type ^short = "Kind of document"

* subject 1..
* subject only Reference(FRCorePatientProfile)

* author 1..
* author only Reference(Device or FRCoreRelatedPersonProfile or FRCorePatientProfile or as-practitioner or as-practitionerrole or as-organization)

* authenticator ..0
* custodian ..0
* securityLabel ..1
* securityLabel from $JDV-J110-StatutVisibiliteDocument-CISIS (required)
* securityLabel ^short = "Statut de visibilité de la note"
* content.format ..0