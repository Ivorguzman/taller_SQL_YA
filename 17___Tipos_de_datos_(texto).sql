-- Problema 1

DROP TABLE IF EXISTS autos;

CREATE TABLE autos(
patente CHAR(6) NOT NULL,
marca VARCHAR(20),
modelo CHAR(15),
precio FLOAT UNSIGNED,
PRIMARY KEY(patente)
);

INSERT INTO  autos (patente,marca,modelo,precio) VALUE ('ACD123','Fiat 128','1970',15000);
INSERT INTO autos (patente,marca,modelo,precio) VALUE ('ACG234','Renault 11','1990',40000);
INSERT INTO autos (patente,marca,modelo,precio) VALUE  ('BCD333','Peugeot 505','1990',80000);
INSERT INTO autos (patente,marca,modelo,precio) VALUE('GCD123','Renault Clio','1990',70000);
INSERT INTO autos  (patente,marca,modelo,precio) VALUE('BCC333','Renault Megane','1998',95000);
INSERT INTO autos (patente,marca,modelo,precio) VALUE ('BVF543','Fiat 128','1975',20000);
/*
Hemos definido el campo "patente" de tipo "char" y no "varchar" porque la cadena de caracteres
siempre tendrá la misma longitud (6 caracteres), con esta definición ocupamos 6 bytes, si lo
hubiésemos definido como "varchar(6)" ocuparía 7 bytes. Lo mismo sucede con el campo "modelo", en
el cual almacenaremos el año, necesitamos 4 caracteres fijos. Para el campo "precio" definimos un
float sin signo porque los valores nunca serán negativos
*/

-- 4- Seleccione todos los autos del año 1990:

SELECT * FROM autos WHERE modelo = '1990';

SELECT *  FROM autos WHERE precio > 5000;

SELECT * FROM autos WHERE modelo = '1990' UNION SELECT *  FROM autos WHERE precio > 5000 ORDER BY precio DESC;

