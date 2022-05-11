---
layout: page
title: Hintergrund des Projektes
order: 2
---

## Stand der Forschung und Praxis

Daten aus der historischen und forensischen Anthropologie und der modernen Rechtsmedizin (z.B. forensische Bildgebung) erlauben ein Verständnis über das Verhalten, die Lebensweise und Kultur des Menschen aus verschiedenen Zeitepochen.
Somit sind Daten z.B. von Ausgrabungen, in denen menschliche Überreste sowie Kulturgüter, ehemalige Behausungen etc. zutage gefördert und untersucht werden, die Grundlage für zukünftige Analysen. Aus den menschlichen Überresten lassen sich Rückschlüsse auf die Lebenszeit und -weise der Person ziehen;
oftmals stehen dafür Knochenfunde zur Verfügung.
Bei der Analyse kommt es auf deren Einordnung in das Skelettsystem des Menschen und deren Beschreibung (z.B. Abnutzungsgrad aufgrund harter Arbeitsbedingungen) an.
Diese Annotation wird je Knochen und -fragment vorgenommen, aus der deduktiv Lebensweisen der Person oder der Population (anhand eines Gräberfeldes) abgeleitet werden können.
Nur durch eine einheitliche Einordnung und Annotation unter Nutzung von Terminologien/Ontologien wird die Vergleichbarkeit der Daten sowie die von ihnen abgeleiteten Ergebnissen und damit ihre Transparenz und Nachhaltigkeit sichergestellt.
Terminologien und formale Ontologien stellen somit eine Grundlage der Interoperabilität der Daten entsprechend der FAIR-Prinzipien dar.
Ihre Nutzung in der historischen und forensischen Anthropologie bedingt zwei Voraussetzungen.

* Die relevanten Terminologien/Ontologien müssen in ausreichender Granularität elektronisch verfügbar sein.
Die bislang verfügbaren Terminologien/Ontologien, z.B. Foundation Model of Anatomy (FMA) [1] bilden die Sprachwelt der historischen Anthropologie nur unzureichend ab.
Die Terminologien/Ontologien werden von sog. Terminologiediensten verwaltet.
Es gibt unterschiedliche Softwaresysteme solcher Dienste (z.B. BioPortal undOntology-Lookup-Service (OLS)), die an Institutionen außerhalb Deutschlands als Installation verfügbar sind.
* Jedoch fokussieren die Installationen oftmals auf andere Wissenschaftsdisziplinen; die historische und forensische Anthropologie wird noch nicht repräsentiert.
Zu-dem synchronisieren sich die Terminologiedienste bislang nicht.
Mit dem Projekt soll diese “ontologische Annotations-Lücke” geschlossen werden.
Dazu wird einerseits eine Ontologie entwickelt, die die Skelettstücke einordnet, ihren Zustand beschreibbar macht sowie Messungen an ihnen ermöglicht.
Die Ontologie wird in einem Terminologierservice verwaltet, der sich mit denen der NFDI synchronisiert.

## Stand der Wissenschaft
In diesem Abschnitt stellen wir den aktuellen Stand an Ontologien zur Einordnung von skelettalen Fragmenten in der historischen und forensischen Anthropologie sowie Terminologiedienste, Phänotypisierung und das Softwaresystem AnthroWorks3D dar.

### Ontologien
Foundational Model of Anatomy Ontology (FMA) [1, 4] befasst sich mit der Darstellung von Klassen oder Typen und Beziehungen, die für die symbolische Darstellung der phänotypischen Struktur des menschlichen Körpers erforderlich sind.
Die FMA ist eine Domänenontologie, die einen kohärenten Bestand an explizitem deklarativem Wissen über die menschliche Anatomie darstellt, das sowohl für Menschen verständlich als auch maschinen-interpretierbar ist.
Das Ziel ist, die FMA in die medizinischen Anwendungen zu integrieren und dadurch Konsistenz und Standardisierung bei der Darstellung anatomischer Klassen zu ermöglichen.
FMA besteht aus vier miteinander verknüpften Komponenten:
1. Anatomy Taxonomy (Klassifikation anatomischer Entitäten);
2. Anatomical Structural Abstraction (Teil-Ganzes- und räumliche Beziehungen zwischen anatomischen Entitäten);
3. Anatomical Transformation Abstraction (morphologische Transformationen anatomischer Entitäten);
4. Metaknowledge (Prinzipien, Regeln und Definitionen für die Repräsentation anatomischer Entitäten).

Das Problem der existierenden Anatomie-Ontologien im Kontext des aktuellen Vorhabens besteht darin, dass sich die medizinische und die anthropologische Sicht auf die Anatomie stark unterscheiden.
Außerdem werden in Anatomie-Ontologien relevante anthropologische Aspekte (wie z.B. Abnutzungsgrad der Knochen) nicht berücksichtigt.

### Terminologiedienste
Terminologiedienste (Ontologie-Repositories bzw. Ontology Lookup Services) sind Plattformen, die Ontologien verwalten und den Nutzern in einer geeigneten Form zurVerfügung stellen.
Die meisten Terminologiedienste sind als Webanwendungen verfügbar und bieten zusätzlich einen programmatischen Zugang zu ihren Funktionen bzw. Inhalten mittels (REST) APIs.
Sie können sich in den angebotenen Funktionen unterscheiden, bieten aber häufig u.a. komplexe Suche nach Konzepten, erweiterte Browsing- und Darstellungs-Funktionen sowie Verwaltung verschiedener Versionen.

Ontology Lookup Service (OLS) [5] ist ein Repository für biomedizinische Ontologien, das einen zentralen Zugang zu den neuesten Ontologie-Versionen bieten soll.
Auf die Ontologien kann sowohl über eine Website als auch programmatisch über die OLS-API zugegriffen werden.
OLS bietet verschiedene Möglichkeiten, über Ontologien zu navigieren, sie zu durchsuchen bzw. abzufragen.
OLS wird vom Samples, Phenotypes and Ontologies Team (SPOT) am EMBL-EBI entwickelt und gepflegt.

BioPortal [6] wird vom National Center for Biomedical Ontology (NCBO) entwickelt und bietet Zugang zu häufig verwendeten biomedizinischen Ontologien.
Verschiedene Funktionen stehen zur Verfügung, wie z.B. Ontologien zu durchsuchen oder nach einem Begriff bzw. nach Mappings zwischen verschiedenen Begriffen zu suchen.
Alle über die BioPortal-Website verfügbaren Informationen sind auch über den NCBO-Webdienst (REST API) erreichbar.

AberOWL [7] ist ein Framework für den ontologiebasierten Zugriff auf biologische Daten.
Es besteht aus einem Repository für Bio-Ontologien sowie einer Reihe von Webservices und Frontends, die den Zugang auf die verfügbaren Ontologien bzw. Datensätze ermöglichen.
Das Repository bietet u.a semantische Abfrage von Ontologien unter Verwendung der Manchester OWL Syntax, Abfrage von Pubmed-Artikeln anhand von Ontologie-Begriffen sowie ontologie-basierten Zugriff mittels SPARQL.

### Phänotypisierung
Unter Phänotypisierung verstehen wir die Bestimmung und Analyse von Phänotypen.
Dazu zählen Zuordnung des Phänotyps einer Person zu einer Phänotyp-Klasse, Identifikation von Personen mit bestimmten Phänotypen, Bestimmung abgeleiteter Merkmale (Derivate) sowie Unterstützung weiterführender Analysen.
Die Phänotypisierung kann durch Entwicklung von Phänotyp-Algorithmen unterstützt werden.
Die Algorithmen bestehen aus strukturierten Auswahlkriterien, die dazu dienen, Individuen mit bestimmten Merkmalen zu identifizieren bzw. weitere Merkmale abzuleiten.
Die Entwicklung von computergestützten Phänotyp-Algorithmen ist ein anspruchsvolles Problem, das durch verschiedene Gründe bedingt ist.
Zum einen hat der Phänotyp-Begriff keine allgemein anerkannte Definition und seine Bedeutung hängt vom Kontext ab.
Zum anderen werden die Phänotypen meist als nicht-maschinen-interpretierbare und oft mehrdeutige beschreibende Text-Dokumente spezifiziert, die eine manuelle Übersetzung in eine strukturierte ausführbare Form durch einen Experten erfordern [8].
Jüngste Entwicklungen haben gezeigt, dass die formale Ontologie geeignete Methoden zur Modellierung von Phänotypen bietet, sowie die Forschung und Entscheidungsfindung unterstützen kann [9–12].
Im Rahmen des methodischen Use Case ‘Phenotype Pipeline’ (PheP) sowie der Nachwuchsforschergruppe ‘Terminologie- und Ontologie-basierte Phänotypisierung’ (TOP) wird der Phänotyp-Begriff ontologisch analysiert und aufbauend darauf die Core Ontology of Phenotypes (COP) zur Modellierung und Klassifikation komplexer Phänotypen entwickelt.
Außerdem wird in der Nachwuchsforschergruppe TOP an Konzeption und Implementierung einer neuartigen Ontologie-basierten Methode zur Berechnung von Phänotypen aus verfügbaren Daten gearbeitet [9, 10].
In dem intendierten Vorhaben werden Projektpartner von diesen Erfahrungen und Ergebnissen profitieren.
Die bereitgestellten Ontologien, Methoden und Tools werden an die Anthropologie-Domäne angepasst, weiterentwickelt und zur Ableitung ontologisch fundierter Anthropologie-Phänotypen eingesetzt.

### AnthroWorks3D
Das Tool stellt einen Lösungsansatz dar, um 3D-Modelle von Skeletten herzustellen und zu analysieren.
AnthroWorks3D hebt sich von anderen Tools ab, in dem es interdisziplinär und anwendungsfreundlich Techniken der Photogrammetrie, Erkenntnisse aus User Experience Research und Knowhow aus der Spieleentwicklung bündelt und mit anthropologischem Fachwissen verknüpft.
Erstmals vorgestellt haben die Wissenschaftler:innen aus Mittweida und Göttingen AnthroWorks3D bei der digitalen CIDOC-Konferenz im Dezember 2020.

## Relevante Publikationen

1. **Rosse C, Mejino JLV. The Foundational Model of Anatomy Ontology (2008).**<br>
In: Burger A, Davidson D, Baldock R, editors. Anatomy Ontologies for Bioinformatics: Principles and Practice. London: Springer London; p. 59–117. <https://doi.org/10.1007/978-1-84628-885-2_4>.
2. **Heuschkel, M., Fritzsch, T., Schmiedel, F., Meier, S., van der Burgt, P., Grosskopf, B., Flux, A. L., Mohaupt, M., Labudde, D., Kirsten, T. (2020)**<br>
AnthroWorks3D - A Digital Tool for Anthropological Analyses in Cultural Heritage Institutions and Beyond. CIDOC Conference 2020 Digital Transformation in Cultural Heritage.
3. **Herre, H. (2010).**<br>
General Formal Ontology (GFO): A foundational ontology for conceptual modelling. In Theory and applications of ontology: computer applications (pp. 297-345). Springer, Dordrecht.
4. The Foundational Model of Anatomy Ontology (FMA). <http://sig.biostr.washington.edu/projects/fm/AboutFM.html>
5. The Ontology Lookup Service (OLS). <https://www.ebi.ac.uk/ols/index>
6. BioPortal. <https://bioportal.bioontology.org/>
7. AberOWL. <http://aber-owl.net/>
8. **Mo H, Thompson WK, Rasmussen LV, Pacheco JA, Jiang G, Kiefer R, et al. (2015).**<br>
Desiderata for computable representations of electronic health records-driven phenotype algorithms.
Journal of the American Medical Informatics Association: JAMIA. 22:1220–30.
9. **Uciteli A, Beger C, Kirsten T, Meineke FA, Herre H. (2020).**<br>
Ontological representation, classification and data-driven computing of phenotypes.
Journal of Biomedical Semantics. 11. doi:10.1186/s13326-020-00230-0.
10. **Uciteli A, Beger C, Kirsten T, Meineke FA, Herre H. (2019).**<br>
Ontological Modelling and Reasoning of Phenotypes. In: Proceedings of the Joint Ontology Workshops (JOWO).
Episode V: The Styrian Autumn of Ontology, Graz, Austria, 2019. CEUR Workshop Proceedings, Vol. 2518.
11. **Uciteli A, Beger C, Wagner J, Kiel A, Meineke FA, Stäubert S, et al. (2021).**<br>
Ontological Modelling and Execution of Phenotypic Queries in the Leipzig Health Atlas. Stud Health Technol Inform.
12. **Uciteli A, Beger C, Wagner J, Kirsten T, Meineke FA, Stäubert S, et al. (2021).**<br>
Ontological modelling and FHIR Search based representation of basic eligibility criteria. GMS Med Inform Biom Epidemiol.
