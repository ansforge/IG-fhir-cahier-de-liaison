Profile: CdL_BundleCreationNoteCdL
Parent: Bundle
Id: cdl-bundle-creation-note
Title: "Bundle de Creation de note"
Description: "Profil du bundle représentant le flux 1 de création de note du volet CdL"

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    DocumentReference 1..1 and
    Patient 0..1 and
    Practitioner 0..1 and
    PractitionerRole 0..* and
    Organization 0..1 and
    RelatedPerson 0..1 and
    Device 0..1

* entry[DocumentReference].resource 1..
* entry[DocumentReference].resource only cdl-document-reference
* entry[DocumentReference].request.method = #POST
* entry[DocumentReference].response ..0

* entry[Patient].resource 1..
* entry[Patient].resource only FRCorePatientProfile
* entry[Patient].request.method obeys req-met-1
* entry[Patient].response ..0

* entry[Practitioner].resource 1..
* entry[Practitioner].resource only as-practitioner
* entry[Practitioner].request.method obeys req-met-1
* entry[Practitioner].response ..0

* entry[PractitionerRole].resource 1..
* entry[PractitionerRole].resource only as-practitionerrole
* entry[PractitionerRole].request.method obeys req-met-1
* entry[PractitionerRole].response ..0

* entry[Organization].resource 1..
* entry[Organization].resource only as-organization
* entry[Organization].request.method obeys req-met-1
* entry[Organization].response ..0

* entry[RelatedPerson].resource 1..
* entry[RelatedPerson].resource only FRCoreRelatedPersonProfile
* entry[RelatedPerson].request.method obeys req-met-1
* entry[RelatedPerson].response ..0

* entry[Device].resource 1..
* entry[Device].resource only Device
* entry[Device].request.method obeys req-met-1
* entry[Device].response ..0