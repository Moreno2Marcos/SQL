# TIMESTAMP

SELECT
  TIMESTAMP("2008-12-25 15:30:00") AS exemplo_1,
  TIMESTAMP("2008-12-25 15:30:00 America/Recife") AS exemplo_2,
  TIMESTAMP("2008-12-25 15:30:00", "America/Recife") AS exemplo_3,
  TIMESTAMP(CURRENT_DATETIME) AS exemplo_4,
  TIMESTAMP(CURRENT_DATE) AS exemplo_5,
  CURRENT_TIMESTAMP,
  TIMESTAMP(CURRENT_DATETIME("America/Recife")) AS exemplo_6,
  TIMESTAMP(CURRENT_DATE("America/Recife")) AS exemplo_7;

-- Na tabela orders, formatar a coluna crated_at, no horario locas (fuso horario de Recife)
select 
id,
datetime(created_at, 'America/Recife') as created_at,
customer_id,
status
from e_commerce.orders;






