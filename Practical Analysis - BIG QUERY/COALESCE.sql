# Comandos condicionais: COALESCE

# Exemplo 1
SELECT
  id,
  first_name,
  email,
  state,
  COALESCE (state, 'Opa, estado nulo') AS state_modified,
  if(state is NULL, 'Opa, estado nulo', state) as if_column
FROM e_commerce.customers;

# Exemplo 2
SELECT
  id,
  first_name,
  email,
  state,
  COALESCE (state, null) AS state_modified
FROM e_commerce.customers;

# Associação do COALESCE com outras colunas
SELECT
  -- id,
  -- first_name,
  -- email,
  -- state,
  number,
  additionals,
  COALESCE (CAST (number AS STRING), additionals) AS primeiro_nulo,
  COALESCE (CAST (number AS STRING), additionals, 'Não encontrado') AS primeiro_nulo_2
FROM e_commerce.customers;
