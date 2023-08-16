.headers on
.mode table

-- [Artist_instance].songs.first
SELECT songs.* FROM songs
INNER JOIN artists
  ON songs.artist_id = artists.id
WHERE artists.id = 2;
-- => Thriller

-- [Artist_instance].get_genre_of_first_song
-- [Artist_instance].songs.first.genre
SELECT genres.* FROM genres 
INNER JOIN songs 
  ON genres.id = songs.genre_id
INNER JOIN artists
  ON songs.artist_id = artists.id
WHERE artists.id = 1;
-- => Pop

-- [Artist_instance].song_count
-- [Artist_instance].song.count
SELECT COUNT(*) FROM songs
INNER JOIN artists
  ON songs.artist_id = artists.id
WHERE artists.id =1;

-- [Genre_instance].artist_count
-- [Genre_instance].artist.count
SELECT COUNT(artists.id) FROM artists
INNER JOIN songs
  ON artists.id = songs.artist_id
INNER JOIN genres
  ON songs.genre_id = genres.id
WHERE genres.id = 1;

-- SQL Queries from Active Record => Active Record does it in 2 queries
-- SELECT "songs".* FROM "songs" WHERE "songs"."artist_id" = 1 ORDER BY "songs"."id" ASC LIMIT 1;

-- SELECT "genres".* FROM "genres" WHERE "genres"."id" = 1 LIMIT 1;