
-- "null' significa "dato desconocido" o "valor inexistente". No es lo mismo que un valor 0, una cadena vacía o una cadena literal  "null".
-- Por defecto, es decir, si no lo aclaramos en la creación de la tabla, los campos permiten valores nulos. 

DROP TABLE IF EXISTS libros;

CREATE TABLE libros(

codigo  INTEGER AUTO_INCREMENT,
titulo VARCHAR(50) NOT NULL,
autor VARCHAR(50),
editorial VARCHAR(25)  DEFAULT 'Valor desconocido', 
precio FLOAT,
PRIMARY KEY(codigo)
);

DESC libros;

INSERT INTO libros (titulo,autor,editorial,precio)
VALUES('El aleph','Borges',DEFAULT, NULL);

INSERT INTO libros (titulo,autor,editorial,precio)
VALUES ('Matematica estas ahi','Paenza','Paidos',0);

INSERT INTO libros (titulo,autor,editorial,precio)
VALUES ('Martin Fierro','Jose Hernandez','',22.50);

INSERT INTO libros (titulo,autor,editorial,precio)
VALUES ('Harry Potter y la piedra filosofal', 'J.K. Rowling',NULL,30.00);

SELECT * FROM libros;

-- Entonces, para que un campo no permita valores nulos debemos especificarlo luego de definir el campo, agregando "not null".
-- Por defecto, los campos permiten valores nulos, pero podemos especificarlo igualmente agregando "null".

/*
Para recuperar los registros que contengan el valor "null" en el campo "precio" no podemos utilizar los operadores relacionales

vistos anteriormente: = (igual) y <> (distinto); debemos utilizar los operadores "is null" (es igual a null) y "is not null" (no es null):

*/
SELECT * FROM libros WHERE precio=0 ;
SELECT * FROM libros WHERE precio IS NULL;
SELECT * FROM libros WHERE precio=30;


SELECT * FROM libros WHERE editorial=' ';
SELECT * FROM libros WHERE editorial IS NULL;

SELECT* FROM libros ;
SELECT  * FROM libros WHERE autor='Borges';

