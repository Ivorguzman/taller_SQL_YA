
-- Problema: 1

DROP TABLE IF EXISTS agenda;

CREATE TABLE agenda(
nombre VARCHAR(20),
domicilio VARCHAR(30),
telefono VARCHAR(11)
);

DESCRIBE agenda;



INSERT INTO  agenda (nombre,domicilio,telefono)  VALUES   ('Alberto Mores','Colon 123','4234567');
INSERT INTO agenda VALUES ('Juan Torres','Avellaneda 135','4458787');
INSERT INTO agenda VALUES ('Mariana Lopez','Urquiza 333','4545454');
INSERT INTO agenda VALUES ('Fernando Lopez','Urquiza 333','4545454');

SELECT * FROM agenda;

SELECT  nombre, telefono FROM agenda WHERE nombre='Juan Torres';

SELECT nombre,domicilio FROM agenda WHERE domicilio='Colon 123';

SELECT nombre, telefono FROM agenda WHERE telefono='4545454';

DROP TABLE agenda;


SELECT * FROM agenda;


-- PROBLEMA 2

DROP TABLE  IF EXISTS libros;

CREATE TABLE libros (

titulo VARCHAR(20),
autor VARCHAR(30),
editorial VARCHAR(15)
);

DESCRIBE libros;

INSERT INTO libros (titulo,autor,editorial) VALUES ('El aleph','Borges','Planeta');
INSERT INTO  libros VALUES ( 'Martin Fierro','Jose Hernandez','Emece');
INSERT INTO libros VALUES ('Aprenda PHP','Mario Molina','Emece');
INSERT INTO libros VALUES ('Cervantes','Borges','Paidos');

SELECT * FROM libros;

SELECT titulo, autor FROM libros WHERE autor='Borges';

SELECT titulo, autor FROM libros WHERE titulo='Martin Fierro';

DROP TABLE libros;




-- PROBLEMA 3


DROP TABLE IF EXISTS articulos;

CREATE TABLE articulos( 

codigo INTEGER,
nombre VARCHAR(20),
descripcion VARCHAR(30),
precio FLOAT
 );

DESCRIBE articulos;

INSERT INTO articulos (codigo, nombre, descripcion, precio) VALUES (1,'impresora','Epson Stylus C45',400.80);
INSERT INTO articulos VALUES (2,'impresora','Epson Stylus C85',500);
INSERT INTO articulos VALUES (3,'monitor','Samsung 14',800);
INSERT INTO articulos VALUES (4,'teclado','ingles Biswal',100);
INSERT INTO articulos VALUES (5,'teclado','español Biswal',90);

SELECT * FROM articulos;

SELECT * FROM articulos WHERE nombre='impresora';

SELECT codigo,descripcion,precio FROM articulos WHERE nombre='teclado';


 

 
 
 



