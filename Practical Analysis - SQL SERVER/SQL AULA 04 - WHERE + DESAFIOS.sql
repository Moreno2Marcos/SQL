-- seleciona todos os registro onde o sobrenome da pessoa seja igual a Miller
SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna';

-- seleciona todos os produtos cujo color é vermelho ou azul
SELECT *
FROM Production.Product
WHERE Color = 'red' or Color = 'blue';

-- seleciona todos os produtos que custam mais de 1500 dólares
SELECT *
FROM Production.Product
WHERE ListPrice > 1500;

-- seleciona todos os produtos que custam mais de 1500 dólares emenos de 3000
SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 3000;

-- selecionas todos os produto cujo color não é vermelha
SELECT *
FROM Production.Product
WHERE Color <> 'red';

/* A equipe de PRODUÇÃO precisa do nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção */
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

/* Foi pedido pelo Marketing uma relação de todos os empregados que são casados e são asalariados */
SELECT *
FROM HumanResources.Employee
WHERE SalariedFlag = 1 and MaritalStatus = 'm';

/* Um usuário chamado Peter Krebs está devendo um pagamento, consiga o e-mail dele para que possamos enviar uma
cobrança */
SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 
	(SELECT BusinessEntityID
	FROM Person.Person
	WHERE FirstName = 'Peter' and LastName = 'Krebs');