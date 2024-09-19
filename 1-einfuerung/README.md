# UML-Klassendiagramme

In Dbs1 nutzen wir UML-Klassendiagramme *ausschliesslich* für das konzeptionelle Modell
(=Modellierung der Domäne)

## Darstellung einer Klasse in UML

Ein Klasse kann Attribute und Methoden beinhalten.

```mermaid
classDiagram
class BankAccount{
    +String owner
    +BigDecimal balance
    +deposit(amount)
    +withdrawal(amount)
}
```

### Return Type
Für Methoden kann auch ein Rückgabetypen definiert werden

```mermaid
classDiagram
class BankAccount{
    +String owner
    +BigDecimal balance
    +deposit(amount) bool
    +withdrawal(amount) int
}
```

### Generische Typen

Generika können als Teil einer Klassendefinition und für Klassenmitglieder / Rückgabetypen dargestellt werden.

```mermaid
classDiagram
class Square~Shape~{
    int id
    List~int~ position
    setPoints(List~int~ points)
    getPoints() List~int~
}

Square : -List~string~ messages
Square : +setMessages(List~string~ messages)
Square : +getMessages() List~string~
Square : +getDistanceMatrix() List~List~int~~
```

### Sichtbarkeit

Um die Sichtbarkeit (oder Kapselung) eines Attributs oder einer Methode/Funktion zu beschreiben, kann eine optionale Notation vor dem Namen des Mitglieds platziert werden:

- `+` Öffentlich
- `-` Privat
- `#` Geschützt
- `~` Paket/Intern

Zusätzlich können Klassifizierer zu einer Methodendefinition hinzugefügt werden, indem folgende Notationen am Ende der Methode hinzugefügt werden:

- `*` Abstrakt
- `$` Statisch


## Beziehungen definieren

Eine Beziehung ist ein allgemeiner Begriff, der spezifische logische Verbindungen zwischen Klassen und Objekten beschreibt.

```
[classA][Arrow][ClassB]
```

Es gibt acht verschiedene Beziehungstypen für Klassen in UML.

- `<|--` Inheritance
- `*--` Composition
- `o--` Aggregation
- `-->` Association
- `--` Link (Solid)
- `..>`	Dependency
- `..|>`  Realization
- `..` Link (Dashed)

```mermaid
classDiagram
classA <|-- classB
classC *-- classD
classE o-- classF
classG <-- classH
classI -- classJ
classK <.. classL
classM <|.. classN
classO .. classP

```

### Label

Beziehungsbeschriftungen können hinzugefügt werden
```
[classA][Arrow][ClassB]:Label
```
Hier als Beispiel

```mermaid
classDiagram
classA <|-- classB : implements
classC *-- classD : composition
classE o-- classF : aggregation
```
### Zwei-Weg Beziehung

Beziehungen können logisch eine N:M darstellen:
```mermaid
classDiagram
    Animal <|--|> Zebra
```

## Namespace definieren

Ein Namespace gruppiert Klassen:

```mermaid
classDiagram
namespace BaseShapes {
    class Triangle
    class Rectangle {
      double width
      double height
    }
}
```

## Kardinalität / Multiplikation bei Beziehungen
Kardinalität oder Multiplikation in Klassendiagrammen zeigt die Anzahl der Instanzen einer Klasse, die mit einer Instanz der anderen Klasse verknüpft werden können.

Kardinalitätsnotationen werden am Ende einer Assoziation platziert.

```
[classA] "cardinality1" [Arrow] "cardinality2" [ClassB]:LabelText
```

Die verschiedenen Kardinalitätsoptionen sind:

- `1` Nur 1
- `0..1` Null oder Eins
- `1..*` Eins oder mehr
- `*` Viele
- `n` n (wobei n>1)
- `0..n` Null bis n (wobei n>1)
- `1..n` Eins bis n (wobei n>1)


```mermaid
classDiagram
    Customer "1" --> "*" Ticket
    Student "1" --> "1..*" Course
    Galaxy --> "many" Star : Contains
```

## Diagramme

https://mermaid.js.org/syntax/classDiagram.html#class

