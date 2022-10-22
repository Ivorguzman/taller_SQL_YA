
-- El comando "SELECT" recupera los registros de una tabla. Detallando los nombres de los campos separados por comas,
-- indicamos que seleccione todos los campos de la tabla que nombramos

-- "where" que es opcional, con ella podemos especificar condiciones para la consulta "SELECT". Es decir,
-- podemos recuperar algunos registros, sólo los que cumplan con ciertas condiciones indicadas con la cláusula "WHERE". Por
-- ejemplo, queremos ver el usuario cuyo nombre es

DROP  TABLE  IF EXISTS  usuarios ; 

CREATE TABLE usuarios(
nombre VARCHAR(30),
clave VARCHAR(10)
);

INSERT INTO usuarios  (nombre,clave) VALUES ('Leonardo','payaso');
INSERT INTO usuarios (nombre,clave) VALUE ('MarioPerez','Marito');
INSERT INTO usuarios (nombre,clave )  VALUE ('Marcelo','bocajunior');
INSERT INTO usuarios (nombre,clave) VALUE('Gustavo','bocajunior');

SELECT  nombre,clave FROM usuarios;

SELECT  nombre  FROM usuarios WHERE nombre='Marcelo';





--                                      ********************************** Ejercico  *************************************


-- 1- Eliminamos "agenda", si existe:
DROP TABLE   IF EXISTS agenda;
 
 -- 1- Eliminamos  la tabla "libros", si existe:
 DROP TABLE  IF EXISTS libros;

-- 2- Cree la tabla "libros". Debe tener la siguiente estructura:
create TABLE libros(
titulo VARCHAR(20),
autor VARCHAR(30),
editorial VARCHAR(15)
);

-- 3- Visualice la estructura de la tabla "libros".
describe libros;
/*
4- Ingrese los siguientes registros:
'El aleph','Borges','Planeta';
'Martin Fierro','Jose Hernandez','Emece';
'Aprenda PHP','Mario Molina','Emece';
'Cervantes','Borges','Paidos';
*/

INSERT   INTO libros VALUE ('El aleph','Borges','Planeta') ;


SELECT * FROM libros;































