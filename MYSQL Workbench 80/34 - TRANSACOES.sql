/*
	Tópico : TRANSAÇÕES
    
    - Fazer "várias operações" como se fossem uma "única operação";
    - Ou realiza com sucesso essas várias operações ou desfaz todas elas; 
*/

-- Realizar 2 operações na tabela language
START TRANSACTION; 

INSERT INTO language ( language_id, name )
VALUES
	( 7, 'Portuguese' ),
    ( 8, 'Spanish' );

ROLLBACK;  -- desfaz todas as operações desde quando a transacao foi aberta

START TRANSACTION; 

INSERT INTO language ( language_id, name )
VALUES
	( 7, 'Portuguese' ),
    ( 8, 'Spanish' );

COMMIT;  -- efetivas todas as operações que foram realizadas com sucesso desde abertura da transacao