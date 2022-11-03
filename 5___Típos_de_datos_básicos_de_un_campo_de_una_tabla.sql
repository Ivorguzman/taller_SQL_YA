-- ************************* Problema: 1 ****************************************************

-- Un videoclub que alquila películas en video almacena la información de sus películas en una tabla
-- llamada "peliculas"; para cada película necesita los siguientes datos:
-- -nombre, cadena de caracteres de 20 de longitud,
-- -actor, cadena de caracteres de 20 de longitud,
-- -duración, valor numérico entero.
-- -cantidad de copias: valor entero.
-- drop table if exists peliculas;



create database Problemas_para_resolver;



-- 1- Elimine la tabla, si existe:
drop table if exists peliculas;




-- 2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
create table peliculas(
nombre varchar(20),
actor varchar(20),
duracion integer,
cantidad_copias integer

);

-- 3- Vea la estructura de la tabla:
describe peliculas;

-- 4- Ingrese los siguientes registros:
insert into peliculas (nombre,actor,duracion,cantidad_copias) values ('Mision imposible','Tom Cruise',120,3);
insert into peliculas(nombre,actor,duracion,cantidad_copias) values ('Mision imposible 2','Tom Cruise',180,2);
insert into peliculas(nombre,actor,duracion,cantidad_copias) values ('Mujer bonita','Julia R.',90,3);
insert into peliculas(nombre,actor,duracion,cantidad_copias) values ('Elsa y Fred','China Zorrilla',90,2);

-- 5- Muestre todos los registros

select * from peliculas;



-- ************************* Problema: 2 ****************************************************


-- Una empresa almacena los datos de sus empleados en una tabla "empleados" que guarda los siguientes
-- datos: nombre, documento, sexo, domicilio, sueldobasico.



-- 1- Elimine la tabla, si existe:
drop table if exists empleados;


-- 2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
create table empleados(
nombre varchar(20),
documento varchar(11),
sexo varchar(1),
domicilio varchar(45),
sueldo_basico float
);

-- 3- Vea la estructura de la tabla:
describe empleados;

-- 4- Ingrese algunos registros:
insert into empleados(nombre,documento,sexo,domicilio,sueldo_basico) values ('Juan Perez','22345678','m','Sarmiento 123',300);
insert into empleados(nombre,documento,sexo,domicilio,sueldo_basico) values ('Ana Acosta','24345678','f','Colon 134',500);
insert into empleados(nombre,documento,sexo,domicilio,sueldo_basico) values ('Marcos Torres','27345678','m','Urquiza 479',800);

-- 5- Seleccione todos los registros:
select * from empleados;
























