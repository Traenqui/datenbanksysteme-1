> An diesem Beispiel kann geübt werden, UML-Diagramme zu zeichnen. Das Resultat dieser Übung ist ein UML-Klassendiagramm.

# UML-Diagramm erstellen

## Klassen

- Person
  - Name (Attribut)
  - Vorname (Attribut)
- Zimmer
  - Beschreibung (Attribut)
  - Preis pro Nacht (Attribut)
  - Anzahl Betten (Attribut)
- Buchung
  - Gäste: Eine oder mehrere Personen (Assoziation)
  - Zimmer (Assoziation)
  - Ankunftsdatum (Attribut)
  - Abreisedatum (Attribut)

## Aufgaben:

1. Zeichnen Sie diese drei Klassen mit den richtigen Assoziationen als UML-Klassen-Diagramm, noch ohne Multiplizitäten-Angabe

```mermaid
classDiagram
    Person -- Buchung : "bucht"
    Buchung -- Zimmer : "beinhaltet"
    
    class Person {
        +Name: String
        +Vorname: String
    }
    
    class Zimmer {
        +Beschreibung: String
        +Preis_pro_Nacht: Double
        +Anzahl_Betten: int
    }
    
    class Buchung {
        +Ankunftsdatum: Date
        +Abreisedatum: Date
    }

```
2. Zeichnen Sie für verschiedene Beispielszenarien von Hotelbuchungen UML-Objekt-Diagramme oder Punkte-Ellipsen-Diagramme und analysieren Sie mit deren Hilfe die Multiplizitäten

```mermaid
classDiagram
    class Peter_Mueller {
        Name = "Müller"
        Vorname = "Peter"
    }
    
    class Sarah_Klein {
        Name = "Klein"
        Vorname = "Sarah"
    }
    
    class Zimmer_101 {
        Beschreibung = "Einzelzimmer mit Blick auf den Garten"
        Preis_pro_Nacht = 80.0
        Anzahl_Betten = 2
    }
    
    class Buchung_1 {
        Ankunftsdatum = "2024-09-15"
        Abreisedatum = "2024-09-20"
    }

    Peter_Mueller -- Buchung_1 : "bucht"
    Sarah_Klein -- Buchung_1 : "bucht"
    Buchung_1 -- Zimmer_101 : "beinhaltet"

```

3. Ergänzen Sie das UML-Klassendiagramm um die Multiplititäts-Angaben

```mermaid
classDiagram
    Person "1" --o "0..*" Buchung : bucht
    Buchung "1" --o "1" Zimmer : beinhaltet
    
    class Person {
        +Name: String
        +Vorname: String
    }
    
    class Zimmer {
        +Beschreibung: String
        +Preis_pro_Nacht: Double
        +Anzahl_Betten: int
    }
    
    class Buchung {
        +Ankunftsdatum: Date
        +Abreisedatum: Date
    }

```