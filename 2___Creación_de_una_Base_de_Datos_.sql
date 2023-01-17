-- ********************************* Ejercicio 1 ************************************************

-- creacion de base de datos
create database agenda;

-- para visualizar estructura de una tabla ==> show tables
show databases ;

-- eliminar tabla si existe con la clausula  ==>  if existe
 drop table if exists agenda;
 
-- crear tabla ==> create table 
create table agenda (
nombre varchar(50),
domicilio varchar(50),
telefono varchar(11)
); -- si no se colaca, el siguinte comando de error por no indicar el fin de la sentencia actual;

-- muestra los registros de la  tablas que tiene una base de datos.
describe agenda;

-- para mostrar las tablas de la base de datos
show tables;




-- ********************************* Ejercicio 2 ************************************************


drop table if exists libros;

create table libros(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

-- muestra los registros de la  tablas que tiene una base de datos.
describe libros;


-- eliminar tabla espesificada
drop table libros;














