CREATE DATABASE contosoDW;

USE contosoDW;

CREATE TABLE vendas (
	codigo int,
    nomeProduto varchar(200),
    dataVenda datetime,
    nomeClientes varchar(200),
    precoProduto decimal,
    quatindadeVendida integer,
    estaNaPromocao bool
)

-- DROP DATABASE contosoDW