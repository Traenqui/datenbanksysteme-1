# Mitarbeiterverwaltung

## Testat 1

### Aufgabe 1: Themenwahl

Mitarbeiterverwaltungssystem (EMS)

### Aufgabe 2: Beschreibung und Konsistenzbedingungen

Das Mitarbeiterverwaltungssystem (EMS) ermöglicht es einem Unternehmen, ihre Mitarbeiter zu verwalten und ihre Informationen zu speichern.
Informationen beinhalten Beschäftigungsverhältnisse, Gehälter, Abteilungen und Arbeitszeiten.
Es soll die Möglichkeit bieten Mitarbeiter verschiedenen Projekten und Abteilungen zuzuweisen.
Die Arbeitszeiten müssen erfasst werden können und Gehaltsänderungen sollen über die Zeit verfolgt werden können.
Eine Performance-Klasse soll die Performance eines jeden Mitarbeiter festhalten

#### Konsistenzbedingungen

1. Das Enddatum eines Projektes darf nicht vor dem Startdatum des Projektes sein
2. Jeder Mitarbeiter muss mindesten einer Abteilung zugeordnet sein
3. Ab 30 Überstunden werden alle weiteren Stunden automatisch ausbezahlt
4. Das Soll an Arbeitsstunden pro Woche sind 40 Stunden

### Aufgabe 3: UML-Klassendiagramm erstellen

```mermaid
classDiagram
    %% Klassen Definitionen
    class Employee {
        +int EmployeeID
        +string FirstName
        +string LastName
        +date BirthDate
        +date HireDate
        +float TargetHoursAWeek
    }

    class Department {
        +int DepartmentID
        +string Name
        +string Location
    }

    class Project {
        +int ProjectID
        +string Name
        +date StartDate
        +date EndDate
    }

    class Salary {
        +decimal Amount
        +date ValidFrom
    }

    class WorkLog {
        +time StartTime
        +time EndTime
        +date Date
    }

    class PerformanceReview {
        +decimal Score
        +date ReviewDate
        +text Comments
    }

    class Manager {
        +string ResponsibilityArea
        +decimal Bonus
    }

    %% Beziehungen
    Department "1" -- "1..*" Employee : "arbeitet in"
    Employee "1" -- "1..*" Salary : "bekommt"
    Employee "0..*" -- "0..*" Project : "zugewiesen"
    Employee "1" -- "0..*" WorkLog : "rapportiert"
    PerformanceReview "0..*" -- "1" Employee : "erhält"

    %% Manager-spezifische Beziehungen
    Manager "1" -- "0..1" PerformanceReview : "macht"
    Manager "1" -- "1..*" Project : "verantwortlich"
    Manager "1" -- "1" Department : "leitet"

    %% Vererbung
    Employee <|-- Manager : {overlapping, incomplete}

    %% Konsistenzbedingungen
    note for Project "EndDate darf nicht vor StartDate sein"
    note for Employee "Muss einem Department zugeordnet sein"
    note for Salary "Mindestgehalt: 1500 €"
    note for WorkLog "Ab 30 Überstunden werden alle weiteren Stunden ausbezahlt"
    note for Employee "Soll an Arbeitsstunden pro Woche: 40 Stunden"
    note for Salary "Der Lohn mit dem aktuellsten Datum wird ausbezahlt"
```
