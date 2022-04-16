SELECT 
  u.name AS usuario,
  IF (MAX(h.date_listened) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM users AS u
  INNER JOIN history AS h
    ON u.user_id = h.user_id
GROUP BY name;
  