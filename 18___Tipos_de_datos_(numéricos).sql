/**
Un comercio que envía pizzas y empanadas a domicilio registra los pedidos diariamente en una tabla
llamada "pedidos" con los siguientes datos:
- numero de pedido, autoincrementable, entero positivo comienza en 1 y menor a 200 aprox.
- nombre: piza o empanada,
- tipo: por ejemplo, si es pizza: especial, muzarela, etc., si son empanadas: salteñas, picantes,
arabes, etc.
- precio: precio por unidad, valor con decimales que no supera los $99.99 y será siempre mayor a 0,
- cantidad: cantidad de articulos, entero positivo desde 1 e inferior a 200 aprox.
- domicilio del cliente.
1- Elimine la tabla "pedidos" si existe.
2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo
*/


-- Problema 1

DROP  TABLE IF EXISTS pedidos;

CREATE TABLE pedidos(
Numero_orden  TINYINT (3) UNSIGNED AUTO_INCREMENT NOT NULL,
nombre VARCHAR(10),
tipo  VARCHAR (20),
precio DECIMAL ( 4, 2),
cantidad TINYINT UNSIGNED,
domicilio VARCHAR (50),
PRIMARY KEY(Numero_orden)
);

DESC pedidos;
SELECT * FROM  pedidos;




/* 
-- Problema 2

 El departamento de Meteorología de una ciudad tiene almacenados en una tabla las estadísticas de
temperatura y precipitaciones de varias ciudades del mundo. 

1- Elimine la tabla  antigua"estadisticas".
2- Cree la tabla  nueva estadisticas eligiendo el tipo de dato adecuado para almacenar los datos descriptos arriba:
- ciudad y país: cadena de caracteres,
- temperaturas (máxima y mínima): entero desde -20 hasta 40 aprox.
- precipitaciones media anual: desde 0 a 2000 aprox.

*/

DROP TABLE IF EXISTS estadisticas;



CREATE TABLE estadisticas (
Ciudad VARCHAR(20),
Pais VARCHAR(20),
Temperatura_max   TINYINT(2),
Temperatura_min   TINYINT(2),
Precipitacon_anual SMALLINT  UNSIGNED
 );
 
DESC estadisticas;

INSERT INTO estadisticas  VALUES ('Canberra', ' Australia', 40,-2,1900);
INSERT INTO estadisticas  VALUES ('Brasilia', ' Brasil', 27,13,900); 
INSERT INTO estadisticas  VALUES ('Moscu', ' Rusia', 24,-13,2000);

SELECT * FROM estadisticas;

/*
Problema 2

Un instituto de física que realiza investigaciones acerca de los gases guarda en una tabla  (gases) las
temperaturas críticas y la presión crítica de los mismos. 

1- Elimine la tabla "gases" si existe.
2- Cree la tabla eligiendo el tipo de dato adecuado para almacenar los datos descriptos arriba:
- Gas: cadena,
- Temperatura Crítica: valores decimales desde -300 hasta 400 aprox.,
- Presión Crítica: valores decimales positivos hasta 300 aprox.

*/

DROP  TABLE IF EXISTS gases;

CREATE TABLE gases  (

Gas VARCHAR(15),
Temperatura_Critica  DECIMAL(5,2),
Presion_critica DECIMAL(5,2)  UNSIGNED

);

DESC gases;

INSERT INTO gases (Gas,Temperatura_Critica,Presion_critica) VALUES ( 'Helio ',-269.7,2.26);
INSERT INTO gases (Gas,Temperatura_Critica,Presion_critica) VALUES ( 'Hidrógeno ',-239.7,12.8);
INSERT INTO gases (Gas,Temperatura_Critica,Presion_critica) VALUES ( 'Dióx. de carb. ',31.3,72.09);


SELECT * FROM gases;

/*

Un banco tiene registrados las cuentas corrientes de sus clientes en una tabla llamada "cuentas".

1- Elimine la tabla "cuentas" si existe. 
2- Cree la tabla eligiendo el tipo de dato adecuado.
- Número de cuenta: entero positivo, no nulo,
- Documento del propietario de la cuenta: cadena de caracteres de 8 de longitud (siempre 8), no nulo 
- Nombre del propietario de la cuenta: cadena de caracteres, 
- Saldo de la cuenta: valores positivos y negativos altos.

*/


DROP TABLE IF EXISTS cuentas;



 










