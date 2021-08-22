SELECT album_name, 
	year
FROM test.album
WHERE year = '2018';

SELECT track_name, 
	duration
FROM test.track
ORDER BY duration DESC
LIMIT 1;

SELECT track_name
FROM test.track
WHERE duration >= 3.5*60;

SELECT collection_name
FROM test.collection
WHERE year::int BETWEEN 2018 AND 2020;

SELECT performer_name
FROM test.performer
WHERE performer_name NOT LIKE '% %';

SELECT track_name
FROM test.track
WHERE track_name LIKE '%мой%'
	OR track_name LIKE '%my%'
	OR track_name LIKE '%Mein%';