-- "where" que es opcional, con ella podemos especificar condiciones para la consulta "select". Es decir,
-- podemos recuperar algunos registros, sólo los que cumplan con ciertas condiciones indicadas con la cláusula "where". Por
-- ejemplo, queremos ver el usuario cuyo nombre es

DROP  TABLE  IF EXISTS  usuarios ; 

CREATE TABLE usuarios(
nombre VARCHAR(30),
clave VARCHAR(10)
);

INSERT INTO usuarios  (nombre,clave) VALUES ('Leonardo','payaso');
INSERT INTO usuarios (nombre,clave) VALUE ('MarioPerez','Marito');
INSERT INTO usuarios (nombre,clave )  VALUE ('Marcelo','bocajunior');
INSERT INTO usuarios (nombre,clave) VALUE('Gustavo','bocajunior');

SELECT  nombre,clave FROM usuarios;

SELECT  nombre  FROM usuarios WHERE nombre='Marcelo';

