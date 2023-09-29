SELECT top 5 * FROM athletes;
SELECT top 5 * FROM coaches;
SELECT top 5 * FROM entriesgender;
SELECT top 5 * FROM medals;
SELECT top 5 * FROM teams;

--count the number of atheletes from a country
SELECT Country, COUNT(*)
FROM athletes
GROUP BY Country ORDER BY COUNT(*) DESC;

--which country recived the most gold medals
SELECT TOP 5 * FROM medals ORDER BY Team_Country;
SELECT TOP 1 Team_Country,Gold
FROM medals
ORDER BY Gold DESC;

--Total participation by gender
SELECT
SUM(Female) as Total_females,
SUM(Male) as Total_males
FROM entriesgender;