----------------------- NOV 15 ---------------------------------




SELECT m_geschlecht, COUNT(*) 

FROM Mitarbeiter 

GROUP BY m_geschlecht; 




SELECT COUNT(*) 

FROM Mitarbeiter 

GROUP BY m_geschlecht; 







-- Aufgabe 2, Frage 1

SELECT *

FROM mitarbeiter2

ORDER BY Nachname



-- Aufgabe 2, Frage 2

SELECT *

FROM mitarbeiter2

ORDER BY Ort DESC, Nachname , Vorname



-- Aufgabe 2, Frage 3

SELECT Ort, PLZ, AVG(Gehalt) AS Durchschnittsgehalt

FROM mitarbeiter2

GROUP BY Ort

ORDER BY Durchschnittsgehalt DESC

LIMIT 1



-- Aufgabe 2, Frage 4

SELECT Ort, Geschlecht, COUNT(*) AS Anzahl

FROM mitarbeiter2

GROUP BY Ort



-- Aufgabe 2, Frage 5

SELECT Ort, PLZ, AVG(Gehalt) AS Durchschnittsgehalt

FROM mitarbeiter2

GROUP BY Ort

HAVING COUNT(*) >= 3

ORDER BY Ort DESC

LIMIT 1



-- Aufgabe 2, Frage 6

SELECT Ort, Geschlecht, COUNT(*) AS Anzahl

FROM mitarbeiter2 

GROUP BY Ort, Geschlecht 

HAVING AVG(Gehalt) > 2000





----------------------- Aufgabe 1 ---------------------------------



---- 1. Fragen Sie die Vor- und Nachnamen aller männlicher Mitarbeiter ab.

SELECT m_vorname, m_nachname

FROM `Mitarbeiter`

WHERE m_geschlecht = 'm'



-- 2. Zeigen Sie die Datensätze aller Mitarbeiter an, die den Nachnamen Klein haben:

-- ctrl + shift + enter für ausführen

SELECT *

FROM `Mitarbeiter`

WHERE m_nachname = 'Klein'



-- 3. Zeigen Welche Mitarbeiternachnamen beginnen mit einem Buchstaben von A bis H?

SELECT *

FROM `Mitarbeiter`

WHERE m_nachname BETWEEN 'A%' AND 'H%'



-- 4. Zeigen Welche Mitarbeiter verdienen mindestens 2000 €?

-- Geben Sie die Vor- und Nachnamen aus.

SELECT m_nachname, m_vorname

FROM `Mitarbeiter`

WHERE m_gehalt >= 2000



-- 5. Welche Mitarbeiter sind nach 2004 im Unternehmen eingestellt worden und verdienen mehr

-- als 1800 €?

-- Geben Sie die kompletten Datensätze aus

SELECT * 

FROM `Mitarbeiter`

WHERE m_einstellung >= 2005 

AND m_gehalt >= 1800;



-- 6. Welche männlichen Mitarbeiter verdienen mehr als 2000 € oder sind schon seit dem Jahr

-- 2000 Mitarbeiter des Unternehmens? Geben Sie den Vor-, Nachnamen, Gehalt und Ge-

-- schlecht aus.

SELECT m_vorname, m_nachname, m_gehalt, m_geschlecht

FROM `Mitarbeiter`

WHERE m_gehalt>= 2000 OR m_einstellung >= 2000;



-- 7. Ermitteln Sie das Durchschnittsgehalt mit Hilfe einer Aggregatsfunktion.

-- Nutzen Sie den Aliasnamen: Durchschnitt

SELECT AVG(m_gehalt) AS Durschschnitt

FROM `Mitarbeiter`;



-- 8. Welcher Mitarbeiter hat den alphabetisch letzten Nachnamen? (Alias: Letzter)

select m_nachname as Letzter

FROM `Mitarbeiter`

ORDER BY m_nachname DESC

LIMIT 1;



-- 9. Ermitteln Sie den Geburtstag des ältesten Mitarbeiters. (Alias: Ältester)

SELECT m_geburtsdatum as Ältester

FROM `Mitarbeiter`

ORDER BY m_geburtsdatum ASC

LIMIT 1;



-- 10. Wie viele Mitarbeiter gibt es im Unternehmen? (Alias: Anzahl)

SELECT COUNT(*) AS Anzahl

FROM `Mitarbeiter`;



-- 11. Wie viele unterschiedliche Nachnamen gibt es

SELECT COUNT(DISTINCT m_nachname) FROM `Mitarbeiter`;




-- 12. Wie hoch wäre das Gehalt der Mitarbeiter nach einer 4,5%-igen Erhöhung?

-- Geben Sie Vor-, Nachname und das neue Gehalt aus



SELECT m_vorname, m_nachname, m_gehalt * 1.045 AS NeuGehalt 

FROM `Mitarbeiter`;




-- 13. Welche Mitarbeiter werden nach einer 5%-igen Gehaltserhöhung mehr als 2050 € verdie-

-- nen? Zeigen Sie neben dem Mitarbeiternamen auch das veränderte Gehalt an.

SELECT m_vorname, m_nachname, m_gehalt * 1.05 AS NeuGehalt

FROM `Mitarbeiter`

WHERE m_gehalt * 1.05 > 2050;




-- 14. Zeigen Sie alle Mitarbeiter, deren Nachnamen mit K beginnen

SELECT *

FROM `Mitarbeiter`

WHERE m_nachname LIKE 'K%';



-- 15. Welche Mitarbeiter beziehen ein Gehalt zwischen 1500 € und 2500 €?

SELECT *

FROM `Mitarbeiter`

WHERE m_gehalt BETWEEN 1500 AND 2500;



-- 16. Welche Mitarbeiter sind in den Jahren 1967, 1988 und 1993 geboren?

SELECT *

FROM `Mitarbeiter`

WHERE YEAR(m_geburtsdatum) = 1967 OR

 YEAR(m_geburtsdatum) = 1988 OR

 YEAR(m_geburtsdatum) = 1993;