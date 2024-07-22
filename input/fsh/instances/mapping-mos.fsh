Instance: ConceptMap-mos-cdl
InstanceOf: ConceptMap
Usage: #definition

* name = "ConceptMapMOS2CDL"
* title = "MOS to FHIR CDL"
* status = #draft
* experimental = true
* description = "Mapping entre le MOS et les profils cahiers de liaison pour les profils qui ne sont pas présents dans ce guide."
* purpose = "Donner un indice fonctionnel du mapping entre FHIR et MOS."
* sourceUri = "https://mos.esante.gouv.fr"
* targetUri = "https://hl7.fr/ig/fhir/core"

* group[+].source = "https://mos.esante.gouv.fr/12.html"
* group[=].target = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"

* group[=].element[+].code = #Contact.IdContact
* group[=].element[=].display = "Contact.IdContact"
* group[=].element[=].target.code = #RelatedPerson.identifier
* group[=].element[=].target.display = "RelatedPerson.identifier"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Contact.adresse
* group[=].element[=].display = "Contact.adresse"
* group[=].element[=].target.code = #RelatedPerson.address
* group[=].element[=].target.display = "RelatedPerson.address"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Contact.telecommunication
* group[=].element[=].display = "Contact.telecommunication"
* group[=].element[=].target.code = #RelatedPerson.telecom
* group[=].element[=].target.display = "RelatedPerson.telecom"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PersonnePhysique.nomFamille
* group[=].element[=].display = "PersonnePhysique.nomFamille"
* group[=].element[=].target.code = #RelatedPerson.name.family
* group[=].element[=].target.display = "RelatedPerson.name.family"
* group[=].element[=].target.equivalence = #relatedto


* group[=].element[+].code = #PersonnePhysique.prenomUsuel
* group[=].element[=].display = "PersonnePhysique.prenomUsuel"
* group[=].element[=].target.code = #RelatedPerson.name.given
* group[=].element[=].target.display = "RelatedPerson.name.given"
* group[=].element[=].target.equivalence = #relatedto


* group[+].source = "https://mos.esante.gouv.fr/12.html"
* group[=].target = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"

* group[=].element[+].code = #Professionnel.idPP
* group[=].element[=].display = "Professionnel.idPP"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = "Practitioner.identifier"
* group[=].element[=].target.equivalence = #relatedto


* group[=].element[+].code = #Professionnel.adresseCorrespondance
* group[=].element[=].display = "Professionnel.adresseCorrespondance"
* group[=].element[=].target.code = #Practitioner.address
* group[=].element[=].target.display = "Practitioner.address"
* group[=].element[=].target.equivalence = #relatedto


* group[=].element[+].code = #Professionnel.telecommunication
* group[=].element[=].display = "Professionnel.telecommunication"
* group[=].element[=].target.code = #Practitioner.telecom
* group[=].element[=].target.display = "Practitioner.telecom"
* group[=].element[=].target.equivalence = #relatedto


* group[=].element[+].code = #PersonnePhysique.nomFamille
* group[=].element[=].display = "PersonnePhysique.nomFamille"
* group[=].element[=].target.code = #Practitioner.name.family
* group[=].element[=].target.display = "Practitioner.name.family"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PersonnePhysique.prenomUsuel
* group[=].element[=].display = "PersonnePhysique.prenomUsuel"
* group[=].element[=].target.code = #Practitioner.name.given
* group[=].element[=].target.display = "Practitioner.name.given"
* group[=].element[=].target.equivalence = #relatedto



* group[+].source = "https://mos.esante.gouv.fr/12.html"
* group[=].target = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"

* group[=].element[+].code = #ExerciceProfessionnel.profession
* group[=].element[=].display = "ExerciceProfessionnel.profession"
* group[=].element[=].target.code = #PractitionerRole.code
* group[=].element[=].target.display = "PractitionerRole.code"
* group[=].element[=].target.equivalence = #relatedto


* group[+].source = "https://mos.esante.gouv.fr/12.html"
* group[=].target = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"


* group[=].element[+].code = #EntiteGeographique.numFINESS
* group[=].element[=].display = "EntiteGeographique.numFINESS"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.display = "Organization.identifier"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #EntiteGeographique.secteurActivite
* group[=].element[=].display = "EntiteGeographique.secteurActivite"
* group[=].element[=].target.code = #Organization.type
* group[=].element[=].target.display = "Organization.type"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #EntiteGeographique.adresseEG
* group[=].element[=].display = "EntiteGeographique.adresseEG"
* group[=].element[=].target.code = #Organization.address
* group[=].element[=].target.display = "Organization.address"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #EntiteGeographique.telecommunication
* group[=].element[=].display = "EntiteGeographique.telecommunication"
* group[=].element[=].target.code = #Organization.telecom
* group[=].element[=].target.display = "Organization.telecom"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #EntiteGeographique.denominationEG
* group[=].element[=].display = "EntiteGeographique.denominationEG"
* group[=].element[=].target.code = #Organization.name
* group[=].element[=].target.display = "Organization.name"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://mos.esante.gouv.fr/12.html"
* group[=].target = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"


* group[=].element[+].code = #PersonnePriseEnCharge.idPersonnePriseEnCharge
* group[=].element[=].display = "PersonnePriseEnCharge.idPersonnePriseEnCharge"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = "Patient.identifier"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PersonnePriseEnCharge.adresseCorrespondance
* group[=].element[=].display = "PersonnePriseEnCharge.adresseCorrespondance"
* group[=].element[=].target.code = #Patient.address
* group[=].element[=].target.display = "Patient.address"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PersonnePriseEnCharge.telecommunication
* group[=].element[=].display = "PersonnePriseEnCharge.telecommunication"
* group[=].element[=].target.code = #Patient.telecom
* group[=].element[=].target.display = "Patient.telecom"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Patient.idPatient
* group[=].element[=].display = "Patient.idPatient"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = "Patient.identifier"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Patient.adresseCorrespondance
* group[=].element[=].display = "Patient.adresseCorrespondance"
* group[=].element[=].target.code = #Patient.address
* group[=].element[=].target.display = "Patient.address"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Patient.telecommunication
* group[=].element[=].display = "Patient.telecommunication"
* group[=].element[=].target.code = #Patient.telecom
* group[=].element[=].target.display = "Patient.telecom"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PersonnePhysique.nomFamille
* group[=].element[=].display = "PersonnePhysique.nomFamille"
* group[=].element[=].target.code = #Patient.name.family
* group[=].element[=].target.display = "Patient.name.family"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PersonnePhysique.telecommunication
* group[=].element[=].display = "PersonnePhysique.telecommunication"
* group[=].element[=].target.code = #Patient.name.given
* group[=].element[=].target.display = "Patient.name.given"
* group[=].element[=].target.equivalence = #relatedto



* group[+].source = "https://mos.esante.gouv.fr/12.html"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Device"

* group[=].element[+].code = #RessourceMaterielle.libelle
* group[=].element[=].display = "RessourceMaterielle.libelle"
* group[=].element[=].target.code = #Device.deviceName.name
* group[=].element[=].target.display = "Device.deviceName.name"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #RessourceMaterielle.reference
* group[=].element[=].display = "RessourceMaterielle.reference"
* group[=].element[=].target.code = #Device.modelNumber
* group[=].element[=].target.display = "Device.modelNumber"
* group[=].element[=].target.equivalence = #relatedto