# RIGHT JOIN

SELECT DISTINCT
  a.user_id AS user_id_tabela_a,
  c.user_id AS user_id_tabela_c,
  a.user_name,
  c.price
FROM banco_teste.acessos AS a
LEFT JOIN banco_teste.compras AS c ON a.user_id = c.user_id;

# RIGHT JOIN (somente RIGHT)

SELECT DISTINCT
  a.user_id AS user_id_tabela_a,
  a.user_name
FROM banco_teste.acessos AS a
LEFT JOIN banco_teste.compras AS c ON a.user_id = c.user_id
WHERE c.user_id IS NULL