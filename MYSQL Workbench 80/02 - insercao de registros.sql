USE dsa;

-- insere linhas a tabela
INSERT INTO pessoa (codigo, nome)
VALUES 
(1, 'Iván'),
(2, 'Alexsandra');

-- outra forma (nao é boa pratica!)
INSERT INTO pessoa VALUES (1, 'Lucas');
INSERT INTO pessoa VALUES (1, 'Caludio');

SELECT * FROM pessoa