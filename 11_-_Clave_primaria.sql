-- Una clave primaria es un campo (o varios) que identifica 1 solo registro (fila) en una tabla.
-- Para un valor del campo clave existe solamente 1 registro. Los valores no se repiten ni pueden ser nulos
DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
nombre VARCHAR(20),
clave VARCHAR(10),
PRIMARY KEY(nombre)
);

SELECT * FROM usuarios;

-- Inserciones metodo  convencional ( largo)
INSERT INTO usuarios (nombre, clave) VALUES ('Leo','payaso');
INSERT INTO usuarios (nombre, clave) VALUES ('MariaPerez','Marito');
INSERT INTO usuarios (nombre, clave) VALUES ('Marcel','River');
INSERT INTO usuarios (nombre, clave) VALUES ('Gustavito','River');

-- inserciones metodo abreviado sei relacionar los campos
INSERT INTO usuarios VALUE ('Leonardo','payaso');
INSERT INTO usuarios VALUE ('MarioPerez','Marito');
INSERT INTO usuarios VALUE ('Marcelo','River');
INSERT INTO usuarios VALUES ('Gustavo','River');

INSERT INTO usuarios VALUES ('Gustavo','River');-- registr repetido
DESC usuarios;

