# TRIM

SELECT
  TRIM("CPF: 123.456.789-00", "CPF: "),
  TRIM("***(81) 9 84421377***", "*"),
  TRIM("   São Paulo ")