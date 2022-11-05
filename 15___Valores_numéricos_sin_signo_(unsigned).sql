


-- Problema 1

CREATE TABLE  peliculas(
codigo INTEGER AUTO_INCREMENT,
titulo VARCHAR(40) NOT NULL,
actor VARCHAR(20),
duracion  INT UNSIGNED,
PRIMARY KEY(codigo)
);

DESC peliculas;


-- Problema2

DROP TABLE IF EXISTS visitantes;

CREATE TABLE visitantes(

nombre VARCHAR(30),
edad INTEGER UNSIGNED,
sexo VARCHAR(1),
domicilio VARCHAR(30),
ciudad VARCHAR(30),
teléfono VARCHAR(11),
monto_compra DOUBLE UNSIGNED

);

DESC visitantes;















