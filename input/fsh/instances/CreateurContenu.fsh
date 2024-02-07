Instance: CreateurContenu
InstanceOf: CapabilityStatement
Usage: #definition
* name = "CreateurContenu"
* title = "CI-SIS Cahier-de-Liaison - CreateurContenu"
* status = #active
* experimental = false
* date = "2023-02-15T14:22:10+01:00"
* publisher = "ANS"
* description = "Le créateur de contenu est une personne, un équipement ou une entité qui alimente le cahier de liaison par des informations \nqui ont vocation à être partagées. Le créateur de contenu peut être un logiciel métier\ninstallé sur un ordinateur, une application installée sur un téléphone mobile ou une \ntablette ainsi que tout autre dispositif utilisé par une personne ou une entité pour \nalimenter le cahier de liaison. "
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://interop.esante.gouv.fr/ig/fhir/cdl/ImplementationGuides/ans.fhir.fr.cdl"

* rest[0].mode = #client
* rest[=].documentation = "Alimente le cahier de liaison avec une nouvelle note"
* rest[=].security.cors = false
* rest[=].security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest[=].resource[0].type = #Bundle
* rest[=].resource[=].profile = Canonical(cdl-bundle-creation-note)
* rest[=].resource[=].interaction.code = #create
* rest[=].resource[+].type = #Patient
* rest[=].resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPatient"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].profile = Canonical(as-practitioner)
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].profile = Canonical(as-practitionerrole)
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #RelatedPerson
* rest[=].resource[=].profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_FrRelatedPerson"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #Organization
* rest[=].resource[=].profile = Canonical(as-organization)
* rest[=].resource[=].supportedProfile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_Organization-OrgaInt"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #Device
* rest[=].resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Device"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #DocumentReference
* rest[=].resource[=].profile = Canonical(cdl-document-reference)
* rest[=].resource[=].interaction[0].code = #update
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[=].resource[=].interaction[=].extension.valueCode = #MAY
* rest[=].resource[=].interaction[=].code = #delete
* rest[=].resource[=].conditionalDelete = #single
* rest[=].interaction[0].code = #transaction
* rest[=].interaction[=].documentation = Canonical(cdl-bundle-creation-note)
* rest[=].interaction[+].code = #transaction
* rest[=].interaction[=].documentation = Canonical(cdl-bundle-maj-note)
* rest[+].mode = #client
* rest[=].documentation = "Alimente le cahier de liaison avec une nouvelle note"
* rest[=].security.cors = false
* rest[=].security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest[=].resource[0].type = #Bundle
* rest[=].resource[=].profile = Canonical(cdl-bundle-creation-note)
* rest[=].resource[=].interaction.code = #create
* rest[=].resource[+].type = #Patient
* rest[=].resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPatient"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].profile = Canonical(as-practitioner)
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].profile = Canonical(as-practitionerrole)
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #RelatedPerson
* rest[=].resource[=].profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_FrRelatedPerson"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #Device
* rest[=].resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Device"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #Organization
* rest[=].resource[=].profile = Canonical(as-organization)
* rest[=].resource[=].supportedProfile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_Organization-OrgaInt"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[+].type = #DocumentReference
* rest[=].resource[=].profile = Canonical(cdl-document-reference)
* rest[=].resource[=].interaction[0].code = #update
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[=].resource[=].interaction[=].extension.valueCode = #MAY
* rest[=].resource[=].interaction[=].code = #delete
* rest[=].resource[=].conditionalDelete = #single
* rest[=].interaction[0].code = #transaction
* rest[=].interaction[=].documentation = Canonical(cdl-bundle-creation-note)
* rest[=].interaction[+].code = #transaction
* rest[=].interaction[=].documentation = Canonical(cdl-bundle-maj-note)