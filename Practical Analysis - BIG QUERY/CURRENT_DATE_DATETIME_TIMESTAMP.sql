# CURRENT_DATE, CURRENT_DATETIME, CURRENT_TIMESTAMP

SELECT
  CURRENT_DATE AS exemplo1,
  CURRENT_DATE() AS exemplo2,
  CURRENT_DATE("America/Recife") AS exemplo3,
  CURRENT_DATE("Asia/Tokyo") AS exemplo4,
  current_date('Australia/Adelaide'),
  CURRENT_DATETIME AS exemplo5,
  CURRENT_DATETIME() AS exemplo6,
  CURRENT_DATETIME("Asia/Tokyo") AS exemplo7,
  CURRENT_DATETIME("America/Recife") AS exemplo8,
  CURRENT_DATETIME('Australia/Adelaide'),
  CURRENT_TIMESTAMP AS exemplo9,
  CURRENT_TIMESTAMP() AS exemplo10;
  -- CURRENT_TIMESTAMP("America/Recife");

SELECT
  *
FROM `bigquery-public-data`.covid19_italy.data_by_region
WHERE DATE(date) = DATE("2021-11-17");

SELECT
  *
FROM `bigquery-public-data`.covid19_italy.data_by_region
WHERE DATE(date) = CURRENT_DATE;


SELECT
  *
FROM `bigquery-public-data`.covid19_italy.data_by_region
WHERE extract(year from date) = 2020;


SELECT
distinct extract(year from date) as years
FROM `bigquery-public-data`.covid19_italy.data_by_region;


