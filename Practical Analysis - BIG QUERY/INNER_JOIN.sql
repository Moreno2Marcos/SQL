# INNER JOIN or JOIN

SELECT DISTINCT
  a.user_id AS user_id_tabela_a,
  c.user_id AS user_id_tabela_c,
  a.user_name
FROM banco_teste.acessos AS a
INNER JOIN banco_teste.compras AS c ON a.user_id = c.user_id