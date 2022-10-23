
-- Los operadores relacionales vinculan un CAMPO con un VALOR para que MySQL compare cada registro (el campo especificado) con el valor dado.

/*

=		igual
<>  distinto
>     mayor
<     menor
>=   mayor o igual
<=  menor o igual

*/


--   ejecutamos los siguientes comandos SQL 
DROP  TABLE IF EXISTS libros;
 
CREATE TABLE libros  (
 
 titulo VARCHAR(20),
 autor VARCHAR(30),
 editorial VARCHAR(15) ,
 precio FLOAT
) ;

DESCRIBE libros;

INSERT INTO libros VALUE ('El aleph','Borges','Planeta',12.50);
INSERT INTO libros VALUE('Martin Fierro','Jose Hernandez','Emece',16.00);

INSERT INTO libros (titulo,autor,editorial,precio) VALUE ('Aprenda PHP','Mario Molina','Emece',35.40);
INSERT INTO libros  (titulo,autor,editorial,precio) VALUE ('Cervantes','Borges','Paidos',50.90);


SELECT * FROM libros;


SELECT  autor,editorial,precio FROM libros WHERE autor <> 'Borges';
SELECT  autor,editorial,precio FROM libros WHERE precio > 20;
SELECT autor,editorial,precio  FROM libros WHERE precio <= 30;
SELECT autor,editorial,precio FROM  libros WHERE precio >= 16;
SELECT  *  FROM libros  WHERE editorial <> 'Emece';






