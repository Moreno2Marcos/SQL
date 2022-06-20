SELECT 
  unique_key,
  latitude,
  longitude,
  location,
  ST_GEOGPOINT(longitude, latitude) AS ponto_no_espaco,
  ST_GEOGPOINT(-97.7620887, 30.451503) AS ponto_parque,
  ST_DISTANCE(ST_GEOGPOINT(longitude, latitude), ST_GEOGPOINT(-97.7620887, 30.451503)) AS distancia_entre_solicitacao_parque,
  ST_X(ST_GEOGPOINT(-97.7620887, 30.451503)) AS longitude_parque,
  ST_y(ST_GEOGPOINT(-97.7620887, 30.451503)) AS latitude_parque
FROM `bigquery-public-data.austin_311.311_service_requests`
WHERE location IS NOT NULL
LIMIT 100