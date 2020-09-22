--create database clase02
go 
--use clase02
go
create table Libros
(
	ID bigint not null,
	Titulo varchar(150) not null,
	FechaPub date null
)
go
Alter table  Libros
add Paginas smallint null
go
Alter table Libros
Add constraint PK_Libros primary key (ID)
go
Alter table Libros
Add Constraint CHK_PagPositivos check (Paginas > 0)
go

create table Portadas
(
	ID bigint not null,
	Portada varchar(250),
	Contratapa varchar (250)
)
go
Alter table Portadas
Add Constraint PK_Portadas primary key(ID)
go
Alter table Portadas
Add Constraint FK_PortadasLibros foreign key(ID) References Libros(ID)

go
Alter table Libros
Drop Column FechaPub -- Para borrar columna

--carga de datos
Insert into Libros(ID,Titulo,Paginas) values(100,'Sherlock Homes',140)
