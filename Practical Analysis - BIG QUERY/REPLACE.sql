# REPLACE

SELECT
  "Olá, tudo bem?",
  REPLACE("Olá, tudo bem?", "Olá", "Oi") AS frase;
  
SELECT
  *,
  REPLACE(name, " e ", " & ") AS name_diferente
FROM e_commerce.categories