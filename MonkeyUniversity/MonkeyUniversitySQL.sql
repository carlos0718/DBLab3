--create database Monkey_University
go
use Monkey_University
go
--1.2
CREATE TABLE Nivel
(
	ID SMALLINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL
)
GO
create table Curso
(
	ID bigint not null PRIMARY KEY IDENTITY(1,1),	
	IDNivel SMALLINT NULL FOREIGN KEY REFERENCES Nivel(ID),
	Nombre varchar(100) not null,
	FechaEstreno date null,
	CostoCurso MONEY NOT NULL CHECK (CostoCurso>=0),
	CostoCertificacion MONEY NOT NULL CHECK (CostoCertificacion>=0)
)
GO
create table Idiomas
(
	ID bigint not null primary key,
	Nombre varchar(30) not null unique,
)
go
CREATE TABLE Tipos_Idiomas
(
	ID SMALLINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(30) NOT NULL
)
create table Idioma_por_Cursos
(
	IDCurso bigint not null foreign key references Curso(ID),
	IDIdioma bigint not null foreign key references Idiomas(ID),
	IDTipoIdioma SMALLINT NOT NULL FOREIGN key REFERENCES Tipos_Idiomas(ID),
	PRIMARY KEY (IDCurso,IDIdioma,IDTipoIdioma)

)
go
create table Categoria
(
	ID bigint not null primary key IDENTITY(1,1) ,
	Nombre varchar(100) unique
)
go
create table Cursos_por_Categorias
(
	IDCurso bigint not null foreign key references Curso(ID),
	IDCategoria bigint not null foreign key references Categoria(ID),
	PRIMARY KEY (IDCurso,IDCategoria)
)
go
create table Clase
(
	ID bigint not null primary key IDENTITY(1,1),
	IDCurso bigint not null foreign key references Curso(ID),
	Nombre varchar(100) not null, 
	Duracion int not null CHECK(Duracion>=0),
	Numero SMALLINT NULL CHECK(Numero >= 0)
)
go
create table Tipos_de_Contenido
(
	ID bigint not null primary key,
	Nombre varchar(30) not null unique, 
)
go
create table Contenidos
(
	ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	IDClases bigint not null foreign key references Clase(ID),
	IDTipo bigint not null foreign key references Tipos_de_Contenido(ID),
	Tamaño int not null CHECK (Tamaño>0) 
)
--1.3
GO
CREATE TABLE Pais
(
	ID SMALLINT NOT NULL PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)
GO
CREATE TABLE Usuarios
(
	ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	NombreUsuario VARCHAR(50) NOT NULL UNIQUE 
)
GO
CREATE TABLE Datos_Personales
(
	ID BIGINT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Usuarios(ID),
	Apellidos VARCHAR(100) NOT NULL,
	Nombres VARCHAR(100) NOT NULL,
	Nacimiento DATE NOT NULL,
	Genero CHAR NOT NULL,
	Celular VARCHAR(15) NULL,
	Email VARCHAR(200) NOT NULL,
	Domicilio VARCHAR(200) NOT NULL,
	CP SMALLINT NOT NULL,
	IDPais SMALLINT NOT NULL FOREIGN key REFERENCES Pais(ID)
)
ALTER TABLE Datos_Personales
ALTER COLUMN Email VARCHAR(200) NULL
GO
CREATE TABLE Inscripciones
(
	ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	IDUsuario BIGINT NOT NULL FOREIGN KEY REFERENCES Usuarios(ID),
	IDCurso BIGINT NOT NULL FOREIGN KEY REFERENCES Curso(ID),
	Fecha DATE NOT NULL DEFAULT(GETDATE()),
	Costo MONEY NOT NULL CHECK (Costo>=0)
)
GO
CREATE TABLE Pagos
(
	ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	IDInscripcion BIGINT NOT NULL FOREIGN KEY REFERENCES Inscripciones(ID),
	Fecha DATE NOT NULL DEFAULT(GETDATE()),
	Importe MONEY NOT NULL CHECK(Importe > 0)
)
GO
CREATE TABLE Certificaciones
(
	IDInscripciones BIGINT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Inscripciones(ID),
	Fecha DATE NOT NULL DEFAULT(GETDATE()),
	Costo MONEY NOT NULL CHECK (Costo >=0)
)
GO
CREATE TABLE Reseñas
(
	IDInscripciones BIGINT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Inscripciones(ID),
	Fecha DATE NOT NULL DEFAULT(GETDATE()),
	Observaciones VARCHAR(MAX) NOT NULL,
	Puntaje DECIMAL(3,1) NOT NULL,
	Inapropiada BIT NOT NULL DEFAULT(0),
)
GO
CREATE TABLE Instructures_X_Curso
(
	IDUsuario BIGINT NOT NULL FOREIGN KEY REFERENCES Usuarios(ID),
	IDCurso BIGINT NOT NULL FOREIGN KEY REFERENCES Curso(ID),
	PRIMARY KEY(IDUsuario,IDCurso)
)