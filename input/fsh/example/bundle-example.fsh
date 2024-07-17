Instance: cdl-bundle-creation-note
InstanceOf: CdLBundleCreationNote
Usage: #example
* type = #transaction
* entry[DocumentReference].fullUrl = "urn:uuid:04886b69-ef36-4584-819e-4590cd3888a4"
* entry[DocumentReference].resource = 04886b69-ef36-4584-819e-4590cd3888a4
* entry[DocumentReference].request.method = #POST
* entry[DocumentReference].request.url = "DocumentReference/04886b69-ef36-4584-819e-4590cd3888a4"
* entry[PractitionerRole].fullUrl = "urn:uuid:f380b0fd-23c2-415a-b367-53e707ef91e2"
* entry[PractitionerRole].resource = f380b0fd-23c2-415a-b367-53e707ef91e2
* entry[PractitionerRole].request.method = #POST
* entry[PractitionerRole].request.url = "PractitionerRole/f380b0fd-23c2-415a-b367-53e707ef91e2"
* entry[Practitioner].fullUrl = "urn:uuid:85652218-ea45-426f-916e-6ca5ea8dd5e1"
* entry[Practitioner].resource = 85652218-ea45-426f-916e-6ca5ea8dd5e1
* entry[Practitioner].request.method = #POST
* entry[Practitioner].request.url = "Practitioner/85652218-ea45-426f-916e-6ca5ea8dd5e1"
* entry[Patient].fullUrl = "urn:uuid:0d920958-b596-4b91-af67-9bafc707820b"
* entry[Patient].resource = 0d920958-b596-4b91-af67-9bafc707820b
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient/0d920958-b596-4b91-af67-9bafc707820b"

Instance: 04886b69-ef36-4584-819e-4590cd3888a4
InstanceOf: CdLDocumentReference
Usage: #inline
* status = #current
* type = $TRE-R234-TypeNote#DEM-AVIS "Demande d'avis"
* subject = Reference(0d920958-b596-4b91-af67-9bafc707820b) "Michel ROUBINOWITZ"
* date = "2019-03-04T08:30:00+11:00"
* author[0] = Reference(85652218-ea45-426f-916e-6ca5ea8dd5e1)
* author[+] = Reference(f380b0fd-23c2-415a-b367-53e707ef91e2) "Mme Sophie Brooks (infirmier)"
* content.attachment.contentType = #text/plain
* content.attachment.language = #fr
* content.attachment.data = "TWFtYW4gZXN0IGZhdGlndellLiBFbGxlIG4nYSBwYXMgdm91bHUgc29ydGlyIGNlIG1hdGluLg=="

Instance: f380b0fd-23c2-415a-b367-53e707ef91e2
InstanceOf: AsPractitionerRoleProfile
Usage: #inline
* active = true
* code = $TRE-G15-ProfessionSante#60 "Infirmier"
* practitioner = Reference(85652218-ea45-426f-916e-6ca5ea8dd5e1) "Mme Sophie Brooks"

Instance: 85652218-ea45-426f-916e-6ca5ea8dd5e1
InstanceOf: AsPractitionerProfile
Usage: #inline
* name.prefix = "MME"
* name.given = "Sophie"
* name.family = "Brooks"

Instance: 0d920958-b596-4b91-af67-9bafc707820b
InstanceOf: FRCorePatientINSProfile

* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445#VALI


// birthPlace
* extension[birthPlace].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune#60500
* extension[birthPlace].valueAddress.city = "Chantilly"


* identifier[INS-NIR].use = #official
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].value = "123456789012244"

* active = true
* name[officialName].use = #official
* name[officialName].family = "ROUBINOWITZ"
* name[officialName].given = "Michel"
* name[officialName].extension[birth-list-given-name].valueString = "Michel"

* telecom.system = #phone
* telecom.value = "+33635256986"
* telecom.use = #mobile
* telecom.rank = 1
* gender = #male
* birthDate = "1975-03-11"
* address.use = #home
* address.type = #both
* address.line = "10 Rue Guillaume Bertrand"
* address.city = "Paris"
* address.postalCode = "75011"