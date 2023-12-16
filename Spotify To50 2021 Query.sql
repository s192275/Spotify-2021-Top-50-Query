SELECT * FROM SPOTIFY_TOP50_2021
	
--What is the average danceability by artist? 

SELECT id, artist_name, ROUND(AVG(danceability),2) AS average_danceability
FROM SPOTIFY_TOP50_2021
GROUP BY id, artist_name
ORDER BY average_danceability DESC

--Who are the top 10 artists based on popularity, and what are their tracks' average danceability and energy?

SELECT TOP 10 id, artist_name, popularity, track_name, ROUND(AVG(danceability),2) AS average_danceability,
ROUND(AVG(energy),2) AS average_energy FROM SPOTIFY_TOP50_2021
GROUP BY id, artist_name, popularity, track_name
ORDER BY popularity DESC

--What artist released the longest song?
SELECT TOP 1 id, artist_name, track_name, duration_ms FROM SPOTIFY_TOP50_2021 

--What is the average danceability of the top 12 most popular songs?
SELECT TOP 12 id, artist_name, track_name, popularity, ROUND(AVG(danceability),2) 
AS average_danceability
FROM SPOTIFY_TOP50_2021
GROUP BY id, artist_name, track_name, popularity
ORDER BY popularity DESC

--Using pitch-class integer notation
SELECT
    track_name,
    artist_name,
    CASE
        WHEN [key] = 0 AND mode = 1 THEN 'C Major'
        WHEN [key] = 0 AND mode = 0 THEN 'C Minor'
        WHEN [key] = 1 AND mode = 1 THEN 'C#/Db Major'
        WHEN [key] = 1 AND mode = 0 THEN 'C#/Db Minor'
        WHEN [key] = 2 AND mode = 1 THEN 'D Major'
        WHEN [key] = 2 AND mode = 0 THEN 'D Minor'
        WHEN [key] = 3 AND mode = 1 THEN 'D#/Eb Major'
        WHEN [key] = 3 AND mode = 0 THEN 'D#/Eb Minor'
        WHEN [key] = 4 AND mode = 1 THEN 'E Major'
        WHEN [key] = 4 AND mode = 0 THEN 'E Minor'
        WHEN [key] = 5 AND mode = 1 THEN 'F Major'
        WHEN [key] = 5 AND mode = 0 THEN 'F Minor'
        WHEN [key] = 6 AND mode = 1 THEN 'F#/Gb Major'
        WHEN [key] = 6 AND mode = 0 THEN 'F#/Gb Minor'
        WHEN [key] = 7 AND mode = 1 THEN 'G Major'
        WHEN [key] = 7 AND mode = 0 THEN 'G Minor'
        WHEN [key] = 8 AND mode = 1 THEN 'G#/Ab Major'
        WHEN [key] = 8 AND mode = 0 THEN 'G#/Ab Minor'
        WHEN [key] = 9 AND mode = 1 THEN 'A Major'
        WHEN [key] = 9 AND mode = 0 THEN 'A Minor'
        WHEN [key] = 10 AND mode = 1 THEN 'A#/Bb Major'
        WHEN [key] = 10 AND mode = 0 THEN 'A#/Bb Minor'
        WHEN [key] = 11 AND mode = 1 THEN 'B Major'
        WHEN [key] = 11 AND mode = 0 THEN 'B Minor'
    END AS [key]
FROM SPOTIFY_TOP50_2021
ORDER BY [key];

--Groping number of keys
SELECT
    COUNT([key]) AS NUM_OF_KEY,
    CASE
        WHEN [key] = 0 AND mode = 1 THEN 'C Major'
        WHEN [key] = 0 AND mode = 0 THEN 'C Minor'
        WHEN [key] = 1 AND mode = 1 THEN 'C#/Db Major'
        WHEN [key] = 1 AND mode = 0 THEN 'C#/Db Minor'
        WHEN [key] = 2 AND mode = 1 THEN 'D Major'
        WHEN [key] = 2 AND mode = 0 THEN 'D Minor'
        WHEN [key] = 3 AND mode = 1 THEN 'D#/Eb Major'
        WHEN [key] = 3 AND mode = 0 THEN 'D#/Eb Minor'
        WHEN [key] = 4 AND mode = 1 THEN 'E Major'
        WHEN [key] = 4 AND mode = 0 THEN 'E Minor'
        WHEN [key] = 5 AND mode = 1 THEN 'F Major'
        WHEN [key] = 5 AND mode = 0 THEN 'F Minor'
        WHEN [key] = 6 AND mode = 1 THEN 'F#/Gb Major'
        WHEN [key] = 6 AND mode = 0 THEN 'F#/Gb Minor'
        WHEN [key] = 7 AND mode = 1 THEN 'G Major'
        WHEN [key] = 7 AND mode = 0 THEN 'G Minor'
        WHEN [key] = 8 AND mode = 1 THEN 'G#/Ab Major'
        WHEN [key] = 8 AND mode = 0 THEN 'G#/Ab Minor'
        WHEN [key] = 9 AND mode = 1 THEN 'A Major'
        WHEN [key] = 9 AND mode = 0 THEN 'A Minor'
        WHEN [key] = 10 AND mode = 1 THEN 'A#/Bb Major'
        WHEN [key] = 10 AND mode = 0 THEN 'A#/Bb Minor'
        WHEN [key] = 11 AND mode = 1 THEN 'B Major'
        WHEN [key] = 11 AND mode = 0 THEN 'B Minor'
    END AS [key]
FROM SPOTIFY_TOP50_2021
GROUP BY [key], mode
ORDER BY [key]


