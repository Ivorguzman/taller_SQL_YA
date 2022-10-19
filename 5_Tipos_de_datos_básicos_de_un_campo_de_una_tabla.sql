
-- ******************** PROBLEMA 1 **********************************
drop table if exists libros;

create table libros (

titulo varchar(40),
autor varchar(20),
editorial varchar(15),
precio float, -- coma flotante
cantidad integer -- entero si decimales

);

-- CARGAR REGISTROS --
insert into libros (titulo,autor,editorial,precio,cantidad) values('El aleph','Borges','Emece',45.50,100);
insert into libros(titulo,autor,editorial,precio,cantidad) values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',25,200);
insert into libros(titulo,autor,editorial,precio,cantidad) values ('Matematica estas ahi','Paenza','Planeta',15.8,200);

-- RECUPERAR REGISTROS --
select* from libros;






-- ******************** PROBLEMA 2 **********************************

 -- CREAR BASE DE DATOS
  create database empresaCamioneros;
  
  -- ELIMINAR TABLA SI EXISTE
  drop table if exists empleados;
  
  -- CREAR TABLA Y SUS CAMPOS
  create table empleados(
  nombre varchar(20),
  documento int(10),
  sexo varchar(1),
  domicilio varchar(30),
  sueldo_basico float
  );
  
  
  -- VER ESTRUCTURA DE LA TABLA
  describe empleados;
  
  
  -- RECUPERAR REGISTROS
  insert into empleados(nombre,documento,sexo,domicilio,sueldo_basico) values('Ivor',6213060,'M','Tachira',2000);
  insert into empleados(nombre,documento,sexo,domicilio,sueldo_basico) values('Alex',8213060,'M','Queretaro',2500);
  insert into empleados(nombre,documento,sexo,domicilio,sueldo_basico) values('Guzman',9213060,'M','Portugal',35000.77);
  
 -- VER ESTRUCTURA DE LA TABLA
  describe empleados;
  
  -- SELECCIONA TODOS (*) LOS CAMPOS DE LA TABLA (COULUMNAS)
  select* from empleados;
  
  -- SELECCIONA CAMPOS ESPESIFICOS  DE LA TABLA (COULUMNAS)
  select nombre,sueldo_basico from empleados;
  





