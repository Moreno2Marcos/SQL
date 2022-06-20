-- seleciona todos os registro onde o sobrenome da pessoa seja igual a Miller
SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna';

-- seleciona todos os produtos cujo color � vermelho ou azul
SELECT *
FROM Production.Product
WHERE Color = 'red' or Color = 'blue';

-- seleciona todos os produtos que custam mais de 1500 d�lares
SELECT *
FROM Production.Product
WHERE ListPrice > 1500;

-- seleciona todos os produtos que custam mais de 1500 d�lares emenos de 3000
SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 3000;

-- selecionas todos os produto cujo color n�o � vermelha
SELECT *
FROM Production.Product
WHERE Color <> 'red';

/* A equipe de PRODU��O precisa do nome de todas as pe�as que pesam mais que 500kg mas n�o mais que 700kg para inspe��o */
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

/* Foi pedido pelo Marketing uma rela��o de todos os empregados que s�o casados e s�o asalariados */
SELECT *
FROM HumanResources.Employee
WHERE SalariedFlag = 1 and MaritalStatus = 'm';

/* Um usu�rio chamado Peter Krebs est� devendo um pagamento, consiga o e-mail dele para que possamos enviar uma
cobran�a */
SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 
	(SELECT BusinessEntityID
	FROM Person.Person
	WHERE FirstName = 'Peter' and LastName = 'Krebs');