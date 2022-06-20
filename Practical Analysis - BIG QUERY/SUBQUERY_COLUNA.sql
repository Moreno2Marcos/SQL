# SUBQUERY as COLUMN

#1- Retornar, somente da tabela de USUARIOS, numero de acessos de cada usuario como COLUNA (sem fazer um JOIN)
SELECT
  u.id AS user_id,
  u.user_name,
  (SELECT
    COUNT(a.id)
   FROM banco_teste.acessos AS a
   WHERE a.user_id = u.id) AS num_acessos
FROM banco_teste.usuarios AS u
GROUP BY user_id, user_name