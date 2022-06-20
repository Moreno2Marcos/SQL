-- cria BD
create database ivan2;

-- deleta BD
drop database ivan2;

-- fazer backup do arquivo: AdventureWorks2017.bak
-- (1) pegar arquivo na pasta: C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA
-- (2) click direito na pasta "banco de dados" -> restaurar...

-- seleciona os nomes de pessoas que começam com a palavra "ki"
SELECT FirstName
FROM AdventureWorks2017.Person.Person
WHERE FirstName LIKE 'ki%';