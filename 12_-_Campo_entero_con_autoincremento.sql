
/*  

Se utiliza generalmente en campos correspondientes a códigos de identificación para generar valores únicos para cada nuevo
registro que se inserta.

Sólo puede haber un campo "auto_increment" y debe ser clave primaria (o estar indexado).

Para establecer que un campo autoincremente sus valores automáticamente, éste debe ser entero (integer) y debe ser clave primaria:

*/
DROP TABLE IF EXISTS libros;

-- Para definir un campo autoincrementable colocamos "auto_increment" luego de la definición del campo al crear la tabla.
-- Cuando un campo tiene el atributo "auto_increment" no es necesario ingresar valor para él, porque se inserta automáticamente
-- tomando el último valor como referencia, o 1 si es el primero.

CREATE TABLE libros (
 codigo INTEGER AUTO_INCREMENT , -- transforma el campo en un campo auto incrementado
 titulo VARCHAR(50),
 autor VARCHAR(50),
 editorial VARCHAR(25),
 PRIMARY KEY (codigo)
 
 );
 
DESCRIBE libros;


-- Para ingresar registros omitimos el campo definido como "auto_increment", por ejemplo:

INSERT INTO libros VALUE ('Martin Fierro','Jose Hernandez','Paidos'); -- con llave primaria  la forma abreviada de INSERT no fuinciona.

INSERT INTO libros (titulo,autor,editorial) VALUES('Martin Fierro','Jose Hernandez','Emece');
INSERT INTO libros (titulo,autor,editorial) VALUES('Aprenda PHP','Mario Molina','Emece');
INSERT INTO libros (titulo,autor,editorial) VALUES('Cervantes y el quijote','Borges','Paidos');
INSERT INTO libros (titulo,autor,editorial) VALUES('Matematica estas ahi', 'Paenza', 'Paidos');



/*
Pero debemos tener cuidado con la inserción de un dato en campos "auto_increment". Debemos tener en cuenta que:

- si el valor está repetido aparecerá un mensaje de error y el registro no se ingresará.
- si el valor dado saltea la secuencia, lo toma igualmente y en las siguientes inserciones, continuará la secuencia tomando el valor más alto.
- si el valor ingresado es 0, no lo toma y guarda el registro continuando la secuencia.
- si el valor ingresado es negativo (y el campo no está definido para aceptar sólo valores positivos), lo ingresa.
Para que este atributo funcione correctamente, el campo debe contener solamente valores positivos; más adelante trataremos este tema.

*/

INSERT INTO libros (codigo,titulo,autor,editorial) VALUES(6,'Martin Fierro','Jose Hernandez','Paidos');
INSERT INTO libros (codigo,titulo,autor,editorial) VALUES(2,'Martin Fierro','Jose Hernandez','Planeta');

SELECT * FROM libros;

DELETE FROM libros;


SET SQL_SAFE_UPDATES= 0; -- desactivando la variable 


-- Podemos saber el estado global de la variable 'SQL_SAFE_UPDATES' mediante la consulta:
SELECT @@SQL_SAFE_UPDATES;


DROP TABLE IF EXISTS libros;















