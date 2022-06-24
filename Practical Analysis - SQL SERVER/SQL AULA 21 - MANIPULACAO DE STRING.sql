-- concatena duas string
SELECT CONCAT('Iván', ' ', 'Moreno');

-- junta duas colunas de string
SELECT CONCAT(FirstName, ' ', LastName) as fullName
FROM Person.Person;

-- converte a maiusculo a tring
SELECT UPPER(FirstName) as upperFirstName
FROM Person.Person;

-- converte a minusculo a tring
SELECT LOWER(FirstName) as lowerFirstName
FROM Person.Person;

-- calcula quantos carateres tem a string
SELECT FirstName, LEN(FirstName) as lengthFirstName
FROM Person.Person;

-- extrai os primeiros 3 carateres de uma string
SELECT FirstName, SUBSTRING(FirstName, 1, 3) as firstThreeCharacteres
FROM Person.Person;

-- substitui um conj. de carateres por outro
SELECT ProductNumber, REPLACE(ProductNumber, '-', '***') as stringReplacement
FROM Production.Product;

/*** PRACTICE ***/

-- CONCAT / UPPER / LOWER
select top 3 *
from HumanResources.Employee;

select top 3 *
from Person.Person;

select top 3 *
from Person.EmailAddress;

select CONCAT(b.FirstName, ' ', b.LastName, ' - ', UPPER(a.JobTitle)) as fullNameAndJobPosition,
	   LOWER(c.EmailAddress) as emailEmployee
from HumanResources.Employee as a
inner join Person.Person as b ON a.BusinessEntityID = b.BusinessEntityID
inner join Person.EmailAddress as c ON a.BusinessEntityID = c.BusinessEntityID;

-- LEN / SUBSTRING / REPLACE / charindex
select	EmailAddress, 
		--LEFT(EmailAddress, CHARINDEX('@', EmailAddress) - 1),
		REPLACE(EmailAddress, 
		        LEFT(EmailAddress, CHARINDEX('@', EmailAddress) - 1),
				UPPER(LEFT(EmailAddress, CHARINDEX('@', EmailAddress) - 1))),
		--CHARINDEX('@', EmailAddress), CHARINDEX('.', EmailAddress),
		SUBSTRING(EmailAddress, 
		          CHARINDEX('@', EmailAddress)+1,
				  CHARINDEX('.', EmailAddress) - CHARINDEX('@', EmailAddress) - 1)
from Person.EmailAddress;
