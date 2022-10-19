-- CREA TABLA Y SUS CAMPOS
create table usuarios(
nombre varchar(20),
clave varchar(10)

);

-- CARGA DE REGISTROS --
insert into usuarios (nombre, clave) value('Mario Perez','marito');

-- RECUPERA LOS REGISTROS --
select nombre, clave from usuarios;


-- ELIMINA  LA TABLA
drop table if exists agenda;

-- CREA TABLA Y SUS CAMPOS
create table agenda(
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

-- MUESTRA LA ESTRUCTURA DE LA TABLA
describe agenda; 

-- CARGA DE REGISTROS --
insert into agenda (nombre,domicilio,telefono) value('Alberto','colon 123','44578798');
insert into agenda (nombre,domicilio,telefono) value('Juan','Avallanada 135','44576789');

-- MUESTRAS DE LAS TABLAS
show tables;


-- MUESTRA LA ESTRUCTURA DE LA TABLA
describe agenda;
describe libros;
describe usuarios;


-- RECUPERA LOS REGISTROS --
select nombre,domicilio,telefono from agenda;
select nombre,telefono from agenda;


select titulo,autor,editorial from libros;

select nombre from usuarios;
select clave from usuarios;


-- VERIFICAR SI EXISTE LA TABLA Y LA ELIMINA 
drop table if exists agenda;

-- ELIMINA  LA TABLA
drop table agenda;












