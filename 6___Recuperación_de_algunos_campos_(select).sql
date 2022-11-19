/*
Problema: 1

Un videoclub que alquila películas en video almacena la información de sus películas en alquiler en una tabla llamada "peliculas".

1- Elimine la tabla, si existe:
drop table if exists peliculas;

2- Cree la tabla:
create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

3- Vea la estructura de la tabla:
describe peliculas;

4- Ingrese los siguientes registros:

peliculas (titulo, actor, duracion, cantidad)
('Mision imposible','Tom Cruise',120,3);
 peliculas (titulo, actor, duracion, cantidad)
 ('Mision imposible 2','Tom Cruise',180,2);
peliculas (titulo, actor, duracion, cantidad)
('Mujer bonita','Julia R.',90,3);
peliculas (titulo, actor, duracion, cantidad)
 ('Elsa y Fred','China Zorrilla',90,2);
 
 
5- Realice un "select" mostrando solamente el título y actor de todas las películas:
select titulo,actor from peliculas;

6- Muestre el título y duración de todas las peliculas.

7- Muestre el título y la cantidad de copias.

*/
DROP TABLE IF EXISTS  peliculas;

CREATE TABLE peliculas(
titulo VARCHAR(20),
actor VARCHAR(20),
duracion INTEGER (3),
cantidad INTEGER(2)
);
DESCRIBE peliculas;

INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible','Tom Cruise',120,3);
INSERT INTO peliculas VALUES  ('Mision imposible 2','Tom Cruise',180,2);
INSERT INTO peliculas VALUES ('Mujer bonita','Julia R.',90,3);
INSERT INTO peliculas VALUES  ('Elsa y Fred','China Zorrilla',90,2);

SELECT  titulo, actor FROM peliculas;

SELECT titulo, duracion from peliculas;

SELECT titulo , cantidad  FROM peliculas;



/*
Poblemas 2
 A) Una empresa almacena los datos de sus empleados en una tabla llamada "empleados".
1- Elimine la tabla, si existe:

drop table if exists empleados;2- Cree la tabla:

nombre 20 ,
documento 8,
sexo varchar 1,
domicilio varchar 30,
sueldobasico 

3- Vea la estructura de la tabla:


4- Ingrese algunos registros:

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Juan Perez','22345678','m','Sarmiento 123',300);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Ana Acosta','24345678','f','Colon 134',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Marcos Torres','27345678','m','Urquiza 479',800);

5- Muestre todos los datos de los empleados.

6- Muestre el nombre y documento de los empleados.

7- Realice un "select" mostrando el nombre, documento y sueldo básico de todos los empleados.



B) Un comercio que vende artículos de computación registra la información de sus
productos en la tabla llamada "articulos

1- Elimine la tabla si existe:
drop table if exists articulos;

2- Cree la tabla "articulos" con los campos necesarios para almacenar los siguientes datos:
- código del artículo: entero,
- nombre del artículo: 20 caracteres de longitud,
- descripción: 30 caracteres de longitud,
- precio: float.

3- Vea la estructura de la tabla (describe).

4- Ingrese algunos registros:
insert into articulos (codigo, nombre, descripcion, precio)
values (1,'impresora','Epson Stylus C45',400.80);
insert into articulos (codigo, nombre, descripcion, precio)
values (2,'impresora','Epson Stylus C85',500);
insert into articulos (codigo, nombre, descripcion, precio)
values (3,'monitor','Samsung 14',800);

5- Muestre todos los campos de todos los registros.

6- Muestre sólo el nombre, descripción y precio
*/

-- ****** A *******

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados(
nombre VARCHAR(20),
documento VARCHAR(8),
sexo VARCHAR(19),
domicilio VARCHAR(30),
sueldobasico FLOAT(6)
);
DESCRIBE empleados;

INSERT INTO empleados  (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Juan Perez','22345678','m','Sarmiento 123',300);
INSERT INTO empleados VALUES ('Ana Acosta','24345678','f','Colon 134',500);
INSERT INTO empleados VALUES ('Marcos Torres','27345678','m','Urquiza 479',800);

SELECT * FROM empleados;

SELECT  nombre,  documento  FROM empleados;


DESC empleados;

SELECT nombre, documento, sueldobasico FROM empleados;


-- ****** B *******

DROP TABLE IF EXISTS articulos;

CREATE TABLE articulos(
 codigo  INTEGER,
 nombre VARCHAR(30),
 descripcion VARCHAR(40),
 precio FLOAT

);


INSERT INTO articulos   (codigo, nombre, descripcion, precio) VALUES  (1,'impresora','Epson Stylus C45',400.80);
INSERT INTO articulos VALUES (2,'impresora','Epson Stylus C85',500);
INSERT  INTO articulos VALUES(3,'monitor','Samsung 14',800);

DESCRIBE articulos;

SELECT * FROM articulos;

SELECT nombre, descripcion, precio  FROM articulos;










