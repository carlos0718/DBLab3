cretate database MuchosAMuchos
go
use MuchosAMuchos
go
create table Empleados
(
	Mail varchar(60) not null primery key,
	Apellidos varchar(100) not null,
	Nombres varchar(100) not null,
	Fnac
)
go
create table Lenguajes
(
	ID int not null primary key identity(1,1),
	Nombre varchar(50)
)
go
create table Lenguajes_x_Empleados
(
	Mail varchar(60) not null,
	IDLenguaje int not null,
	Nivel tinyint not null check(Nivel >= 1 and Nivel <= 10)
)
go
Alter Table