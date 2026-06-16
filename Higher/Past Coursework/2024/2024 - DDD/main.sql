.read setup.sql

.print
.print Question 2c
.print

SELECT initial, surname, swimCategory, teamName, COUNT(*) AS "Races Won"
FROM swimmer, team, Result
WHERE swimmer.teamRef = team.teamRef
AND swimmer.swimmerID = result.swimmerID
AND position = 1
GROUP BY swimmer.swimmerID
ORDER BY initial asc;

.print
.print Question 2d
.print

CREATE VIEW "Fastest Race Time" AS
SELECT MAX(raceTime) AS "Race Time"
FROM Result;

SELECT initial, surname, teamName, city, eventDate
FROM Swimmer, Team, Event, Result, "Fastest Race Time"
WHERE raceTime = "Race Time"
AND lane = 1 OR lane = 8;

.print
.print Question 2e
.print

--SELECT teamName, COUNT(position) AS "Total medals won"
--FROM Result, Swimmer, Team
--WHERE Result.swimmerID = Swimmer.swimmerID AND Swimmer.teamRef = Team.teamRef
--GROUP BY teamName;

.print

