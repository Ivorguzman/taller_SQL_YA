/*
Para eliminar los registros de una tabla usamos el comando "delete": ==> delete from usuarios;

La ejecución del comando indicado en la línea anterior borra TODOS los registros de la tabla.

Si queremos eliminar uno o varios registros debemos indicar cuál o cuáles, para ello utilizamos el comando "delete" junto con
la clausula "where" con la cual establecemos la condición que deben cumplir los registros a borrar. Por ejemplo, queremos
eliminar aquel registro cuyo nombre de usuario es 'Leonardo' ==>  delete from usuarios where nombre='Leonardo';

Si solicitamos el borrado de un registro que no existe, es decir, ningún registro cumple con la condición especificada, no se
borrarán registros, pues no encontró registros con ese dato

En  *** MySQL ***  hay una variable de configuración llamada ==> SQL_SAFE_UPDATES  que puede almacenar los valores 
1 (activa) y 0 (desactiva). Cuando tiene el valor 1 no permite ejecutar comandos delete sin indicar un where


Tenemos dos soluciones para resolver el problema de los 'delete:

1. El primer método es cambiar el estado de la variable SQL_SAFE_UPDATES en forma temporal: ==>  set SQL_SAFE_UPDATES=0;

2. El segundo método es cambiar el estado de la variable SQL_SAFE_UPDATES a nivel general, para ello desde el
programa "Workbench" ingresamos a la opción Edit -> Preferences...:

En en la pestaña "SQL Editor" debemos desmarcar la opción "Safe Updates (eject Updates and Deletes with not
restrictions)"

*/

-- verificando si SQL_SAFE_UPDATES esta activa
DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
	nombre VARCHAR(30),
    clave VARCHAR(10)
);


INSERT INTO usuarios VALUE  ('Leonardo','payaso'); -- metodo abreviado de insertar registros (sin  relacionar los campos)
INSERT INTO usuarios VALUE ('MarioPerez','Marito') ;-- metodo abreviado de insertar registros
INSERT INTO usuarios VALUE ('Marcelo','River'); -- metodo abreviado de insertar registros

INSERT INTO usuarios  (nombre,clave) VALUE('Gustavo','River'); -- metodo tradicionañ de insertar los registros ( relacionando los campos)

SELECT  * FROM usuarios;


--  no permite borrar los registros : Presenta error por estar la variable  SQL_SAFE_UPDATES=1  con valor true (1)
DELETE FROM usuarios;  -- Borrado masivos
DELETE  FROM usuarios WHERE clave='River'; -- Borrado selectivo


SET SQL_SAFE_UPDATES= 0; -- desactivando la variable 

DELETE FROM usuarios; -- permite borrar en forma masiva los registros ; se desactivo la variable SQL_SAFE_UPDATES=0


SET SQL_SAFE_UPDATES=1;

DELETE FROM usuarios; -- presenta error



-- Podemos saber el estado global de la variable 'SQL_SAFE_UPDATES' mediante la consulta:
SELECT @@SQL_SAFE_UPDATES;


SET   SQL_SAFE_UPDATES=0;

SELECT @@SQL_SAFE_UPDATES;

DELETE FROM usuarios WHERE  nombre='MarioPerez';

SET  SQL_SAFE_UPDATES=1;

SELECT @@SQL_SAFE_UPDATES
























