drop table if exists agenda;

create table agenda (
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)

);

show tables;

describe agenda;

insert into agenda( nombre, domicilio, telefono)  values('Alberto Mores','Colon 123','4234567');
insert into agenda(nombre, domicilio, telefono) values('Juan Torres','Avellaneda 135','4458787');

select nombre,domicilio,telefono from agenda;

drop table if exists agenda;

drop table agenda;





drop table if exists libros;

create table libros(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

show tables;

describe libros;

insert into libros (titulo,autor,editorial) values ('El aleph','Borges','Planeta');
insert into libros (titulo,autor,editorial) values('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial) values ('Aprenda PHP','Mario Molina','Emece');

select titulo,autor,editorial from libros;

select titulo,autor from libros;














