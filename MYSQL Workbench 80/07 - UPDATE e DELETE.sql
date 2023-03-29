SELECT 
    *
FROM
    staff;

INSERT INTO staff ( staff_id, first_name, last_name ) 
VALUES
( 1, 'Iván', 'Moreno' ) ;

UPDATE staff
SET 
	first_name = 'Iván',
    last_name = 'Moreno',
    username = 'imoreno';

DELETE FROM staff;

UPDATE staff
SET
	email = null;
