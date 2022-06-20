# DATE_ADD, DATETIME_ADD, TIMESTAMP_ADD

SELECT
  CURRENT_DATE AS data_atual,
  DATE_ADD(CURRENT_DATE, INTERVAL 2 DAY) AS data_atual_add_2days,
  DATE_ADD(CURRENT_DATE, INTERVAL 1 MONTH) AS data_atual_add_1month,
  DATE_ADD(CURRENT_DATE, INTERVAL 1 YEAR) AS data_atual_add_1year,
  CURRENT_TIMESTAMP AS data_horario_atual,
  TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL 3 HOUR) AS data_horario_atual_add_3hours,
  DATETIME_ADD(CURRENT_DATETIME, INTERVAL 3 HOUR) AS data_horario_atual_add_3hours_,
  DATE_ADD(DATE(2020, 01, 01), INTERVAL 3 DAY) AS example,
  DATE_ADD(DATE "2020-01-01", INTERVAL 3 DAY) AS example_;


SELECT
  CURRENT_TIMESTAMP AS data_horario_atual,
  TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL 3 HOUR) AS data_horario_atual_add_3hours,
  timestamp_add(current_datetime('America/Recife'), interval 3 hour);

SELECT
  DATETIME_ADD(CURRENT_DATETIME, INTERVAL 3 HOUR) AS data_horario_atual_add_3hours_,
  DATE_ADD(DATE(2020, 01, 01), INTERVAL 3 DAY) AS example,
  DATE_ADD(DATE "2020-01-01", INTERVAL 3 DAY) AS example_;

-- Retornar os registros dos dias 5, 6, 7 e 8 a partir do 5 de Julho do 2020
select 
*
from `bigquery-public-data`.covid19_italy.data_by_region
where date(date) between date(2020, 07, 5) and date_add(date(2020, 07, 5), interval 4 day)
order by date(date);


-- solucao profe.,
SELECT
  *
FROM `bigquery-public-data`.covid19_italy.data_by_region
WHERE DATE(date) BETWEEN DATE(2020, 07, 05) AND DATE_ADD(DATE(2020, 07, 05), INTERVAL 3 DAY)
order by DATE(date);

--



-- Extrair os registro de casos de covid no periodo de janeiro e fevereiro as 18h 
SELECT
  *
FROM `bigquery-public-data`.covid19_italy.data_by_region
WHERE (datetime(date) BETWEEN '2020-01-01' and '2020-03-01') and extract(hour from date) = 18
order by datetime(date);

-- Apenas extrai a hora de cada registro
SELECT
extract(hour from date)
FROM `bigquery-public-data`.covid19_italy.data_by_region;
  