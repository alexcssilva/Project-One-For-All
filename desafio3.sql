SELECT
  u.name AS usuario,
  COUNT(h.user_id) AS 'qtde_musicas_ouvidas',
  ROUND((SUM(s.song_seconds) / 60), 2) AS 'total_minutos'
FROM users AS u
    INNER JOIN history AS h
      ON u.user_id = h.user_id
    INNER JOIN song AS s
      ON s.song_id = h.song_id

GROUP BY u.user_id
ORDER BY u.name;
