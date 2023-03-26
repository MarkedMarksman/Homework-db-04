SELECT name,date from album
where date = 2018;

SELECT name, duration 
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT name from tracks
WHERE duration >= '3:30:00';

SELECT name from collection
WHERE date between '2018-01-01' and '2021-01-01';

SELECT name 
FROM artist
WHERE name NOT LIKE '% %';

SELECT name 
FROM tracks
WHERE LOWER(name) LIKE '%my%' OR LOWER(name) LIKE '%мой%';


