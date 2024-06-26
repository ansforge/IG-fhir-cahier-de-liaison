Profile: CdL_BundleResultatRechercheNotesCdL
Parent: Bundle
Id: cdl-bundle-resultat-recherche-notes
Title: "Bundle résultat recherche notes"
* type = #searchset
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    DocumentReference 0..* and
    Patient 0..* and
    Practitioner 0..* and
    PractitionerRole 0..* and
    Organization 0..* and
    RelatedPerson 0..* and
    Device 0..*

* entry[DocumentReference].resource 1..
* entry[DocumentReference].resource only CdL_DocumentReferenceCdL
* entry[DocumentReference].search.mode = #match
* entry[DocumentReference].request ..0
* entry[DocumentReference].response ..0

* entry[Patient].resource 1..
* entry[Patient].resource only $FrPatient
* entry[Patient].search.mode = #include
* entry[Patient].request ..0
* entry[Patient].response ..0

* entry[Practitioner].resource 1..
* entry[Practitioner].resource only as-practitioner
* entry[Practitioner].search.mode = #include
* entry[Practitioner].request ..0
* entry[Practitioner].response ..0

* entry[PractitionerRole].resource 1..
* entry[PractitionerRole].resource only as-practitionerrole
* entry[PractitionerRole].search.mode = #include
* entry[PractitionerRole].request ..0
* entry[PractitionerRole].response ..0

* entry[Organization].resource 1..
* entry[Organization].resource only as-organization
* entry[Organization].search.mode = #include
* entry[Organization].request ..0
* entry[Organization].response ..0

* entry[RelatedPerson].resource 1..
* entry[RelatedPerson].resource only $FrRelatedPerson
* entry[RelatedPerson].search.mode = #include
* entry[RelatedPerson].request ..0
* entry[RelatedPerson].response ..0

* entry[Device].resource 1..
* entry[Device].resource only Device
* entry[Device].search.mode = #include
* entry[Device].request ..0
* entry[Device].response ..0