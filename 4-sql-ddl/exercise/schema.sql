/* CREATE all schemas */

CREATE TABLE fluggesellschaft (
  id INTEGER PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  kuerzel CHAR(3) NOT NULL
);

CREATE TABLE flughafen (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  ort VARCHAR(50) NOT NULL,
  land VARCHAR(50) NOT NULL
);

CREATE TABLE flugzeugtyp (
  TYP VARCHAR(40) PRIMARY KEY,
  anzahl_first INTEGER DEFAULT 0,
  anzahl_business INTEGER DEFAULT 0,
  anzahl_economy INTEGER DEFAULT 0,
  anzahl_piloten INTEGER DEFAULT 2,
  anzahl_flightattendants INTEGER DEFAULT 0
);

CREATE TABLE flugzeug (
  identifikation VARCHAR(10) PRIMARY KEY,
  gesellschaft INTEGER NOT NULL REFERENCES fluggesellschaft(id),
  flugzeugtyp VARCHAR NOT NULL REFERENCES flugzeugtyp(typ)
);

CREATE TABLE flug (
  id INTEGER PRIMARY KEY,
  flugnummer VARCHAR(10) NOT NULL,
  abflugzeit TIME,
  dauer INTEGER,
  woche CHAR(7),
  gesellschaft INTEGER NOT NULL REFERENCES fluggesellschaft(id),
  flugzeugtyp VARCHAR NOT NULL REFERENCES flugzeugtyp(typ),
  von INTEGER NOT NULL REFERENCES flughafen(id),
  nach INTEGER NOT NULL REFERENCES flughafen(id)
);

CREATE TABLE angestellter (
  id INTEGER PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  gesellschaft INTEGER NOT NULL REFERENCES fluggesellschaft(id),
  funktion VARCHAR(20)
);

CREATE TABLE passagier (
  id INTEGER PRIMARY KEY,
  name VARCHAR(80) NOT NULL
);

CREATE TABLE buchung (
  id INTEGER PRIMARY KEY,
  datum DATE NOT NULL,
  passagier INTEGER NOT NULL REFERENCES passagier(id)
);

CREATE TABLE flugdurchfuehrung (
  id INTEGER PRIMARY KEY,
  datum DATE NOT NULL,
  flug INTEGER NOT NULL REFERENCES flug(id),
  flugzeug VARCHAR NOT NULL REFERENCES flugzeug(identifikation)
);

CREATE TABLE ticket (
  id INTEGER PRIMARY KEY,
  ausstellungsdatum DATE,
  platznummer CHAR(5),
  gueltigkeit BOOLEAN,
  sitzkategorie INTEGER,
  durchfuehrung INTEGER NOT NULL REFERENCES flugdurchfuehrung(id),
  buchung INTEGER NOT NULL REFERENCES buchung(id)
);

CREATE TABLE besatzung (
  angestellter INTEGER REFERENCES angestellter(id),
  durchfuehrung INTEGER REFERENCES flugdurchfuehrung(id),
  position VARCHAR(20),
  PRIMARY KEY(angestellter, durchfuehrung)
);
