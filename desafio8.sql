SELECT
  a.artist AS artista,
  b.album AS album
FROM artist AS a
  INNER JOIN album AS b
    ON a.artist_id = b.artist_id
WHERE a.artist LIKE 'Walter Phoenix';