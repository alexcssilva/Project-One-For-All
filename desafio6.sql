SELECT
  MIN(p.plans_price) AS 'faturamento_minimo',
  MAX(p.plans_price) AS 'faturamento_maximo',
  ROUND(AVG(p.plans_price), 2) AS 'faturamento_medio',
  ROUND(SUM(p.plans_price), 2) AS 'faturamento_total'
FROM plans AS p
 INNER JOIN users AS u
  ON p.plans_id = u.plans_id;