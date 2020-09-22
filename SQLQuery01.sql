--create database clase01
--use clase01 

create table Areas
(
	ID smallint not null primary key identity(1000, 1), -- identity significa que sea autonumerico y lo del parentesis en numero con el cual quiero iniciar y el otro es el aumentador
	Nombre varchar(50) not null,
	Presupuesto money not null check(Presupuesto > 0),
	Mail varchar(100) not null,
)

create table Empleados
(
	Legajo bigint not null primary key,
	IDArea smallint not null foreign key references Areas(ID), 
	Apellido varchar(100) not null,
	Nombres varchar(100) not null,
	FechaNac date not null,
	Mail varchar(100) not null unique,
	Telefono varchar (20) null,
	Sueldo money not null check (Sueldo>0),
)
