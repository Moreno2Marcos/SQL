CREATE DATABASE AdventureWorks2023;

USE AdventureWorks2023;

CREATE TABLE Vendas (
	CodigoProduto INT,
    NomeProduto VARCHAR(150),
    DataPedido DATETIME,
    PrecoProduto FLOAT
);

INSERT INTO Vendas ( CodigoProduto, NomeProduto, DataPedido, PrecoProduto )
VALUES
( 1, 'Computador', '1982-01-12', 5750.75 ),
( 2, 'TV Smart', '2005-11-01', 3500.20 ),
( 3, 'PS4', '2022-05-17', 2650 );


SELECT *  FROM Vendas;

DROP DATABASE AdventureWorks2023