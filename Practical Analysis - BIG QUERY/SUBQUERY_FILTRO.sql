# SUBQUERY as COLUMN and FILTER as well

#1- Retornar, somente da tabela de USUARIOS, numero de acessos de cada usuario como COLUNA (sem fazer um JOIN) e tambem FILTRAR os usiarios que SO TIVERAM ACESSO.
SELECT
  u.id AS user_id,
  u.user_name,
  (SELECT
    COUNT(a.id)
   FROM banco_teste.acessos AS a
   WHERE a.user_id = u.id) AS num_acessos
FROM banco_teste.usuarios AS u
WHERE 
  (SELECT
    COUNT(a.id)
    FROM banco_teste.acessos AS a
   WHERE a.user_id = u.id) > 0
GROUP BY user_id, user_name;

# OBTER TODOS OS registros onde o numero de acessos é zero.
SELECT
  u.id AS user_id,
  u.user_name,
  (SELECT
    COUNT(a.id)
   FROM banco_teste.acessos AS a
   WHERE a.user_id = u.id) AS num_acessos
FROM banco_teste.usuarios AS u
WHERE 
  (SELECT
    COUNT(a.id)
    FROM banco_teste.acessos AS a
   WHERE a.user_id = u.id) = 0
GROUP BY user_id, user_name