-- unindo colunas de 2 tabelas

SELECT pp.BusinessEntityID, pp.FirstName, pp.LastName, pe.EmailAddress
FROM Person.Person as pp
INNER JOIN Person.EmailAddress as pe ON pp.BusinessEntityID = pe.BusinessEntityID;

-- queremos os nomes dos produtos e as informacoes de suas subcategorias e tambem o preco de cada um das tabelas
-- production.product e production.productsubcategory

SELECT p.Name as NomeCategoria, p.ListPrice, ps.Name as NomeSubcategoria
FROM Production.Product as p
INNER JOIN Production.ProductSubcategory as ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID;

-- juntar duas tabelas com todas as colunas (produto cartesiano)
SELECT *
FROM Person.BusinessEntityAddress as ba
INNER JOIN Person.Address as a ON ba.AddressID = a.AddressID;

/* juntas as colunas businessentityid, name, phonenumbertypeid, phonenumer das tabelas person.phoneNumberType e
person.personPhone */

SELECT pp.BusinessEntityID, pt.Name, pt.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PhoneNumberType as pt
INNER JOIN Person.PersonPhone as pp ON pt.PhoneNumberTypeID = pp.PhoneNumberTypeID;

/* juntar as colunas AddressID, city, stateProvinceId, nome do estado */
SELECT a.AddressID, a.City, sp.StateProvinceID, sp.Name
FROM Person.StateProvince as sp
INNER JOIN Person.Address as a ON sp.StateProvinceID = a.StateProvinceID

