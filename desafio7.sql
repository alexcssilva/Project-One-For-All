SELECT
  a.artist AS artista,
  b.album AS album,
  COUNT(f.artist_id) AS seguidores
FROM artist AS a
  INNER JOIN album AS b
    ON a.artist_id = b.artist_id
  INNER JOIN followers AS f
    ON a.artist_id = f.artist_id
  GROUP BY artista, album
  ORDER BY seguidores DESC, artista ASC, album ASC;