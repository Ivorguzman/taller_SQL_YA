
--  procedamos a crear una tabla, insertar algunas filas y mostrar solo algunas columnas de dicha tabla:
DROP TABLE IF EXISTS  libros; -- borramos la tabla si existe

 create table libros(
 titulo VARCHAR(100),
 autor VARCHAR(30),
 editorial VARCHAR(15),
 precio FLOAT,
 cantidad INTEGER
 );
 
 insert into libros (titulo,autor,editorial,precio,cantidad) values ('El aleph','Borges','Emece',45.50,100);
 insert into  libros(titulo,autor,editorial,precio,cantidad) value ('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',25,200);
 insert into libros (titulo,autor,editorial,precio,cantidad)  value('Matematica estas ahi','Paenza','Planeta',15.8,200);
 
 -- El comando "select" recupera los registros de una tabla. Con el asterisco (*) indicamos que seleccione todos los campos de la  tabla que nombramos.
  select  titulo,autor,editorial  from libros;


