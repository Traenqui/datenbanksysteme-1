INSERT INTO fluggesellschaft (id, name, kuerzel) VALUES
	(1, 'HsAir', 'HA'),
	(2, 'WorldAir', 'WA');

INSERT INTO flughafen (id, name, ort, land) VALUES
	(1, 'ZRH', 'Zuerich', 'Schweiz'),
	(2, 'GVA', 'Genf', 'Schweiz'),
	(3, 'LON', 'London', 'England'),
	(4, 'TFN', 'Teneriffa', 'Spanien'),
	(5, 'NYC', 'New York', 'USA');

INSERT INTO flugzeugtyp (typ, anzahl_first, anzahl_business, anzahl_economy, anzahl_piloten, anzahl_flightattendants) VALUES
	('A300', 10, 20, 160, 2, 5),
	('F50', 0, 10, 20, 2, 2);

INSERT INTO flugzeug (identifikation, gesellschaft, flugzeugtyp) VALUES
	('WAA300_1', 2, 'A300'),
	('HAF50_2', 1, 'F50');

INSERT INTO flug (id, flugnummer, abflugzeit, dauer, woche, gesellschaft, flugzeugtyp, von, nach) VALUES
	(1, 'HA1131', '10:35:00', 40, '1000100', 1, 'F50', 1, 2),
	(2, 'HA1132', '14:15:00', 40, '1000100', 1, 'F50', 1, 2),
	(3, 'HA2441', '08:25:00', 120, '0101000', 1, 'F50', 1, 3),
	(4, 'HA1141', '11:35:00', 40, '1000100', 1, 'F50', 2, 1),
	(5, 'HA1142', '19:15:00', 40, '1000100', 1, 'F50', 2, 1),
	(6, 'WA3331', '07:45:00', 180, '1001000', 2, 'F50', 2, 4),
	(7, 'WA7471', '07:35:00', 360, '0010100', 2, 'A300', 2, 5),
	(8, 'WA7472', '20:15:00', 360, '0010100', 2, 'A300', 2, 5);

INSERT INTO angestellter (id, name, gesellschaft, funktion) VALUES
	(1, 'Marxer Markus', 1, NULL),
	(2, 'Sutter Bruno', 1, NULL),
	(3, 'Mueller Barbara', 2, NULL),
	(4, 'Liechti Suzanne', 2, NULL);

INSERT INTO passagier (id, name) VALUES
	(1, 'Huber Hansjuerg'),
	(2, 'Maier Felix');

INSERT INTO buchung (id, datum,passagier) VALUES
	(1, '2004-01-21', 1),
	(2, '2003-12-15', 2);

INSERT INTO flugdurchfuehrung (id, datum, flug, flugzeug) VALUES
	(1, '2004-02-07', 7, 'WAA300_1'),
	(2, '2004-04-05', 1, 'HAF50_2'),
	(3, '2004-04-05', 5, 'HAF50_2');

INSERT INTO ticket (id, ausstellungsdatum, platznummer, durchfuehrung, buchung, gueltigkeit, sitzkategorie) VALUES
	(1, '2004-01-12', 'A10', 2, 1, true, 1),
	(2, '2004-01-12', 'D20', 3, 1, true, 2),
	(3, '2004-01-15', 'C21', 1, 2, true, 3);

INSERT INTO besatzung (angestellter, durchfuehrung, position) VALUES
	(1, 2, 'Pilot'),
	(1, 3, 'Pilot'),
	(2, 1, 'Pilot'),
	(4, 1, 'Flight Attendant'),
	(3, 2, 'Flight Attendant'),
	(3, 3, 'Flight Attendant');
