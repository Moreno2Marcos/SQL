# SPLIT

SELECT
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ") AS palavras;

SELECT
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ")[ORDINAL(1)] AS parte_1,
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ")[ORDINAL(2)] AS parte_2,
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ")[ORDINAL(3)] AS parte_3,
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ")[ORDINAL(4)] AS parte_4,
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ")[ORDINAL(5)] AS parte_5,
  SPLIT("VOCÊ JÁ ESTÁ FERA EM SQL", " ")[ORDINAL(6)] AS parte_6;

SELECT DISTINCT
  SPLIT(email, "@")[ORDINAL(2)] AS dominios_distintos
FROM e_commerce.customers
WHERE email IS NOT NULL