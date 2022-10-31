
DROP TABLE libros;

CREATE TABLE libros(

codigo INTEGER AUTO_INCREMENT,
titulo VARCHAR(50),
autor VARCHAR(50),
editorial VARCHAR(25),
PRIMARY KEY(codigo)
);

SELECT * FROM libros;

INSERT INTO libros (titulo,autor,editorial)
VALUES('Martin Fierro','Jose Hernandez','Planeta');

INSERT INTO libros (titulo,autor,editorial)
VALUES('Aprenda PHP','Mario Molina','Emece');

INSERT INTO libros (titulo,autor,editorial)
VALUES('Cervantes y el quijote','Borges','Paidos');

INSERT INTO libros (titulo,autor,editorial)
VALUES('Matematica estas ahi', 'Paenza', 'Paidos');

INSERT INTO libros (titulo,autor,editorial)
VALUES('El aleph', 'Borges', 'Emece');

INSERT INTO libros (codigo,titulo,autor,editorial)
VALUES(5,'El aleph', 'Borges', 'Emece');




DELETE from libros;

DESC libros;

SELECT *  FROM libros;

DELETE  FROM libros WHERE codigo=6;

SET SQL_SAFE_UPDATES= 0; -- desactivando la variable 

-- Podemos saber el estado global de la variable 'SQL_SAFE_UPDATES' mediante la consulta:
SELECT @@SQL_SAFE_UPDATES;

DELETE from libros;
/*
La diferencia con "delete" es la velocidad, es más rápido "truncate table" que "delete" (se nota cuando la cantidad de registros
es muy grande) ya que éste borra los registros uno a uno.

Otra diferencia es la siguiente: cuando la tabla tiene un campo "auto_increment", si borramos todos los registros con "delete" y
luego ingresamos un registro, al cargarse el valor en el campo autoincrementable, continúa con la secuencia teniendo en
cuenta el valor mayor que se había guardado; si usamos "truncate table" para borrar todos los registros, al ingresar otra vez un
registro, la secuencia del campo autoincrementable vuelve a iniciarse en 1
*/

INSERT INTO libros (titulo,autor,editorial)
VALUES('Aprenda PHP','Mario Molina','Emece');

SELECT *  FROM libros;


TRUNCATE TABLE libros;



 










