# AVG
SELECT
  AVG(total_confirmed_cases) AS media_casos_confirmados_totais
FROM `bigquery-public-data`.covid19_italy.data_by_region;

# Media de casos confirmados por region
SELECT
  ROUND(AVG(total_confirmed_cases), 2) AS media_casos_confirmados,
  region_name
FROM `bigquery-public-data`.covid19_italy.data_by_region
GROUP BY region_name
ORDER BY media_casos_confirmados DESC;