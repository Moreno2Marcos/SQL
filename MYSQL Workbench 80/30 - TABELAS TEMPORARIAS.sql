CREATE TEMPORARY TABLE Produtos
(
	nome varchar(100) not null,
    preco decimal(8,2) not null default 0.0,
    estoque int not null
);

SELECT * FROM produtos;

INSERT INTO produtos ( nome, preco, estoque )
VALUES
	( 'DVD', 15, 100 ),
    ( 'Notebook', 3500, 30) ;
    
DROP TABLE produtos;