
/*
La sentencia UPDATE se utiliza para modificar valores en una tabla.

La sintaxis de SQL UPDATE es:

UPDATE nombre_tabla
SET columna1 = valor1, columna2 = valor2
WHERE columna3 = valor3

La cláusula SET establece los nuevos valores para las columnas indicadas.

La cláusula WHERE sirve para seleccionar las filas que queremos modificar.

Ojo: Si omitimos la cláusula WHERE, por defecto, modificará los valores en todas las filas de la tabla.




**********************************************************************************************************************
***********************************************************************************************************************
Para modificar uno o varios datos de uno o varios registros utilizamos "update" (actualizar).

Por ejemplo, en nuestra tabla "usuarios", queremos cambiar los valores de todas las claves, por "RealMadrid":

update usuarios set clave='RealMadrid';

Utilizamos "update" junto al nombre de la tabla y "set" junto con el campo a modificar y su nuevo valor.

El cambio afectará a todos los registros.

Podemos modificar algunos registros, para ello debemos establecer condiciones de selección con "where".

Por ejemplo, queremos cambiar el valor correspondiente a la clave de nuestro usuario llamado 'MarioPerez', queremos como

nueva clave 'Boca', necesitamos una condición "where" que afecte solamente a este registro:

update usuarios set clave='Boca'

where nombre='MarioPerez';

Si no encuentra registros que cumplan con la condición del "where", ningún registro es afectado.

Las condiciones no son obligatorias, pero si omitimos la cláusula "where", la actualización afectará a todos los registros.

También se puede actualizar varios campos en una sola instrucción:

update usuarios set nombre='MarceloDuarte', clave='Marce'

where nombre='Marcelo';

Para ello colocamos "update", el nombre de la tabla, "set" junto al nombre del campo y el nuevo valor y separado por coma, el

otro nombre del campo con su nuevo valor.



NOTA:

Igual al concepto anterior cuando utilizamos el comando 'update' si la varible 'SQL_SAFE_UPDATES' se encuentra con un 1

(activa) luego solo se pueden ejecutar actualizaciones de una única fila disponiendo en el where la clave primaria (tema que no hemos visto)

Por el momento es aconsejable cambiar 'SQL_SAFE_UPDATES' al valor cero si no lo hizo en el concepto anterior.

Luego de cambiar 'SQL_SAFE_UPDATES' a cero puede ejecutar este conjunto de sentencias SQL en el "Workbench":


*/


DROP TABLE IF EXISTS usuarios;

CREATE TABLE  usuarios(
    nombre VARCHAR(30),
    clave VARCHAR(10)
);

INSERT INTO usuarios VALUE ('Leonardo','payaso');
INSERT INTO usuarios VALUE('MarioPerez','Marito');
INSERT INTO usuarios VALUES('Marcelo','River');
INSERT INTO usuarios VALUES('Gustavo','River');

SELECT * FROM usuarios;

UPDATE  usuarios SET clave='Real Madrid'; -- no se puede remplazar

SET SQL_SAFE_UPDATES=0; -- permite realizar cambio de actualizacion
SELECT @@SQL_SAFE_UPDATES;-- se verifica el estado de   SQL_SAFE_UPDATES

DESCRIBE  usuarios; -- uso de la forma clasica
DESC usuarios; -- uso de la forma abreviada


UPDATE usuarios SET clave='Real Madrid' WHERE clave='Marito';

SELECT nombre,clave  FROM usuarios;

UPDATE  usuarios  SET nombre='Ivor' WHERE nombre='Marcelo';

UPDATE usuarios SET nombre='Alexander', clave='qsl ' WHERE nombre='Leonardo';
 
















