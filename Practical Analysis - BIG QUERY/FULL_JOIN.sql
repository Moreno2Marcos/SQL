# FULL JOIN

SELECT DISTINCT
  a.user_id AS user_id_tabela_a,
  c.user_id AS user_id_tabela_c,
  c.user_name AS user_name_tabela_c,
  a.user_name AS user_name_tabela_a,
  c.price,
  a.type
FROM banco_teste.acessos AS a
FULL JOIN banco_teste.compras AS c ON a.user_id = c.user_id;

# FULL JOIN (SEM INTERSECTION)

SELECT DISTINCT
  a.user_id AS user_id_tabela_a,
  c.user_id AS user_id_tabela_c,
  c.user_name AS user_name_tabela_c,
  a.user_name AS user_name_tabela_a,
  c.price,
  a.type
FROM banco_teste.acessos AS a
FULL JOIN banco_teste.compras AS c ON a.user_id = c.user_id
WHERE a.user_id IS NULL OR c.user_id IS NULL;

# FULL JOIN exemplo 2 (mais de 2 tabelas)

SELECT DISTINCT
  a.user_id AS user_id_tabela_a,
  c.user_id AS user_id_tabela_c,
  u.id AS user_id_tabela_u,
  c.user_name AS user_name_tabela_c,
  a.user_name AS user_name_tabela_a,
  c.price,
  a.type,
  u.user_name AS user_name_table_u
FROM banco_teste.acessos AS a
FULL JOIN banco_teste.compras AS c ON a.user_id = c.user_id
FULL JOIN banco_teste.usuarios AS u ON COALESCE(a.user_id, c.user_id) = u.id;
