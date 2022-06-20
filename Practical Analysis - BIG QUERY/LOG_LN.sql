# LOG
SELECT
  LOG(49, 7),
  LOG(10, 10),
  LOG(1, 10),
  #LOG(0, 10),
  #LOG(-1, 10),
  #LOG(100, 1),
  #LOG(100, 0),
  LOG(10, 0.1);
  #ln(0);
  
SELECT
  IF(deaths = 0, 0, LN(deaths)) AS ln_deaths
FROM `bigquery-public-data`.covid19_italy.data_by_region;