# RAND
SELECT
  RAND() AS zero_um,
  10 * RAND() AS zero_dez,
  1000000 * RAND() AS zero_milhao;

# Selecionar uma amostra aleatoria do 50% dos clientes da tabela customers
SELECT
  *
FROM e_commerce.customers
ORDER BY RAND() LIMIT 50;