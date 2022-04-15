SELECT 
  COUNT(s.song_id) AS cancoes,
  COUNT(DISTINCT(b.artist_id)) AS artistas,
  COUNT(DISTINCT(b.album_id)) AS albuns
FROM song AS s
  INNER JOIN album AS b
    ON s.album_id = b.album_id;

  
  
 