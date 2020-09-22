--create database Actividad01
use Actividad01


create table Carreras
(
	ID smallint not null primary key check ( ID <= 9999),
	Nombre varchar(30) not null,
	Mail varchar(30) not null,
	Nivel varchar(15) not null check(Nivel = Diplomatura or Nivel = Pregrado or Nivel = Grado or Nivel = Posgrado),-- Diplomatura, Pregrado, Grado, Posgrado      
	Fecha date not null check ( Fecha <= CAST(GETDATE() AS DATE))
)

create table Materias
(
	ID smallint not null primary key identity (1,1),
	IDCarrera smallint not null foreign key references Carreras,
	Nombre varchar(30) not null,
	CargaHoraria int not null check ( CargaHoraria > 0),
)

create table Alumnos
(
	Legajo smallint not null primary key identity (1000, 1),
	IDCarrera smallint not null foreign key references Carreras,
	Apellidos varchar(30) not null,
	Nombres varchar(30) not null,
	Mail varchar(30) not null unique,
	Telefono varchar(20) null,
	FechaNac date not null check (FechaNac<=CAST(GETDATE() AS DATE))
)


