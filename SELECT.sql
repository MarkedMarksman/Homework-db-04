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

--Homework 4

SELECT g.name, COUNT(artist_id) p_count FROM genre gp
LEFT JOIN genres g ON g.genres_id = gp.genre_id
GROUP BY g.name
ORDER BY p_count DESC;

SELECT COUNT(track_id) t_count FROM tracks t
LEFT JOIN album a ON a.album_id = t.album_id
WHERE a.date BETWEEN '2019-01-01' AND '2020-01-01';

SELECT a.name, AVG(t.duration) avg_duration FROM album a
LEFT JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.name 
ORDER BY avg_duration DESC;

SELECT ar.name FROM artist ar
LEFT JOIN albums ara ON ar.artist_id  = ara.artist_id
JOIN album al ON al.album_id = ara.album_id
where	ar.name NOT IN (select	ar.name FROM artist a LEFT 
		     JOIN albums ara ON ar.artist_id = ara.artist_id 
		     JOIN album al ON al.album_id = ara.album_id WHERE al.date >='2020-01-01')
GROUP BY ar.name;

SELECT c.name FROM collection c
JOIN collections tc ON tc.collection_id = c.collection_id
JOIN tracks t ON t.track_id = tc.track_id
JOIN album a ON a.album_id = t.album_id
JOIN albums al ON al.album_id = a.album_id
JOIN artist ar ON ar.artist_id  = al.artist_id 
WHERE ar.name = 'Led Zeppelin';

SELECT a.name, COUNT(gp.genre_id) FROM album a 
JOIN albums al ON al.album_id = a.album_id
JOIN artist ar ON ar.artist_id  = al.artist_id 
JOIN genre gp ON gp.artist_id  = ar.artist_id 
GROUP BY a.name
HAVING COUNT(gp.genre_id)>1;

SELECT t.name, tc.collection_id FROM tracks t 
LEFT JOIN collections tc ON tc.track_id = t.track_id 
WHERE tc.collection_id IS NULL;

SELECT ar.name FROM artist ar
JOIN albums al ON ar.artist_id  = al.artist_id
JOIN tracks t ON al.album_id = t.album_id
WHERE t.duration = (SELECT MIN(t.duration) FROM tracks t);

SELECT a.name, COUNT(*) t_count FROM album a 
LEFT JOIN tracks t ON a.album_id = t.album_id 
GROUP BY a.name 
HAVING COUNT(*) = (SELECT COUNT(t.name) FROM album a 
		   LEFT JOIN tracks t ON a.album_id = t.album_id 
		   GROUP BY a.name
		   ORDER BY COUNT(t.name) ASC
		   LIMIT 1);


