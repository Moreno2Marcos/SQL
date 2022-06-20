-- seleciona todas as colunas
SELECT *
FROM Person.Person;

SELECT *
FROM Person.EmailAddress;

-- seleciona uma coluna
SELECT Firstname
FROM Person.Person;

/* A equipe de Marketing precisa fazer uma pesquisa sobre nomes mais comuns de seus clientes e precisa do nome e
sobre nome de todos os clientes que estão cadastrados no sistem */

SELECT FirstName, LastName
FROM Person.Person