SELECT
  s.name AS nome,
  COUNT(h.song_id) AS reproducoes
FROM song AS s
  INNER JOIN history AS h
    ON s.song_id = h.song_id
  INNER JOIN users AS u
    ON h.user_id = u.user_id
WHERE u.plans_id = 1 OR u.plans_id = 4
GROUP BY nome
ORDER BY nome;
