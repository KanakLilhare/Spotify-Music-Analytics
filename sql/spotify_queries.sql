"track_genre","avg_acousticness"
"classical",0.92
"romance",0.87
"tango",0.85
"new-age",0.82
"opera",0.79
"ambient",0.78
"guitar",0.77
"disney",0.74
"comedy",0.73
"jazz",0.72
"honky-tonk",0.71
"piano",0.70
"sleep",0.66
"show-tunes",0.64
"acoustic",0.57
"bluegrass",0.56
"rock-n-roll",0.55
"songwriter",0.55
"singer-songwriter",0.55
"cantopop",0.54
"pagode",0.54
"chill",0.53
"study",0.53
"children",0.50
"samba",0.49
"indian",0.48
"folk",0.48
"mandopop",0.48
"salsa",0.47
"sad",0.47
"rockabilly",0.45
"pop-film",0.44
"sertanejo",0.44
"british",0.43
"mpb",0.42
"iranian",0.41
"malay",0.40
"forro",0.40
"blues",0.40
"soul",0.40
"indie",0.38
"german",0.38
"idm",0.38
"gospel",0.38
"r-n-b",0.37
"indie-pop",0.37
"french",0.35
"pop",0.34
"brazil",0.33
"swedish",0.32
"turkish",0.32
"psych-rock",0.32
"country",0.32
"funk",0.30
"world-music",0.30
"k-pop",0.29
"j-pop",0.28
"afrobeat",0.27
"spanish",0.27
"anime",0.27
"kids",0.24
"j-dance",0.23
"trip-hop",0.23
"electro",0.23
"dancehall",0.22
"rock",0.21
"emo",0.20
"hip-hop",0.19
"electronic",0.18
"reggae",0.18
"latin",0.18
"j-rock",0.17
"garage",0.17
"latino",0.17
"disco",0.17
"club",0.16
"goth",0.16
"reggaeton",0.16
"j-idol",0.15
"synth-pop",0.15
"alternative",0.15
"groove",0.13
"dance",0.13
"ska",0.12
"dub",0.12
"alt-rock",0.12
"dubstep",0.11
"house",0.11
"edm",0.11
"deep-house",0.10
"party",0.09
"hard-rock",0.09
"punk",0.09
"power-pop",0.09
"techno",0.08
"punk-rock",0.08
"detroit-techno",0.07
"minimal-techno",0.07
"progressive-house",0.06
"hardcore",0.06
"happy",0.06
"grunge",0.05
"hardstyle",0.05
"industrial",0.04
"chicago-house",0.04
"trance",0.04
"metal",0.04
"black-metal",0.03
"breakbeat",0.03
"drum-and-bass",0.03
"heavy-metal",0.01
"metalcore",0.01
"grindcore",0.01
"death-metal",0.01

1. Total Songs
SELECT COUNT(*) AS total_tracks
FROM spotify_tracks;

2. Top 10 Genres
SELECT track_genre,
COUNT(*) AS total_tracks
FROM spotify_tracks
GROUP BY track_genre
ORDER BY total_tracks DESC
LIMIT 10;

3. Top 10 Artists
SELECT artists,
COUNT(*) AS total_tracks
FROM spotify_tracks
GROUP BY artists
ORDER BY total_tracks DESC
LIMIT 10;

4. Average Popularity by Genre
SELECT track_genre,
ROUND(AVG(popularity),2) AS avg_popularity
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_popularity DESC;

5. Explicit vs Non-Explicit Songs
SELECT explicit,
COUNT(*) AS total_tracks
FROM spotify_tracks
GROUP BY explicit;

6. Average Duration by Genre
SELECT track_genre,
ROUND(AVG(duration_min),2) AS avg_duration
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_duration DESC;

7. Energy Level Distribution
SELECT energy_level,
COUNT(*)
FROM spotify_tracks
GROUP BY energy_level;

8. Danceability Category Distribution
SELECT danceability_category,
COUNT(*)
FROM spotify_tracks
GROUP BY danceability_category;

9. Most Energetic Genres
SELECT track_genre,
ROUND(AVG(energy),2) AS avg_energy
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_energy DESC;

10. Genres with Highest Danceability
SELECT track_genre,
ROUND(AVG(danceability),2) AS avg_danceability
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_danceability DESC;

11. Loudest Genres
SELECT track_genre,
ROUND(AVG(loudness),2) AS avg_loudness
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_loudness DESC;

12. Acoustic Genres
SELECT track_genre,
ROUND(AVG(acousticness),2) AS avg_acousticness
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_acousticness DESC;