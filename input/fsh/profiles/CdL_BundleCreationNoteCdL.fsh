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
* entry[Patient].resource only FrPatient
* entry[Patient].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[Patient].request.method ^constraint.source = "Bundle"
* entry[Patient].response ..0

* entry[Practitioner].resource 1..
* entry[Practitioner].resource only as-practitioner
* entry[Practitioner].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[Practitioner].request.method ^constraint.source = "Bundle"
* entry[Practitioner].response ..0

* entry[PractitionerRole].resource 1..
* entry[PractitionerRole].resource only as-practitionerrole
* entry[PractitionerRole].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[PractitionerRole].request.method ^constraint.source = "Bundle"
* entry[PractitionerRole].response ..0

* entry[Organization].resource 1..
* entry[Organization].resource only as-organization
* entry[Organization].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[Organization].request.method ^constraint.source = "Bundle"
* entry[Organization].response ..0

* entry[RelatedPerson].resource 1..
* entry[RelatedPerson].resource only $FrRelatedPerson
* entry[RelatedPerson].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[RelatedPerson].request.method ^constraint.source = "Bundle"
* entry[RelatedPerson].response ..0

* entry[Device].resource 1..
* entry[Device].resource only Device
* entry[Device].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[Device].request.method ^constraint.source = "Bundle"
* entry[Device].response ..0