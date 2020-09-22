USE Monkey_University
SELECT * FROM Nivel
--datos de NIVEL
INSERT INTO Nivel (Nombre) VALUES ('Principiante')
INSERT INTO Nivel (Nombre) VALUES ('Medio')
INSERT INTO Nivel (Nombre) VALUES ('Avanzado')
INSERT INTO Nivel (Nombre) VALUES ('Aficionado')

SELECT * FROM Idiomas
--datos de IDIOMAS
INSERT INTO Idiomas (ID,Nombre) VALUES (1,'Castellano')
INSERT INTO Idiomas (ID,Nombre) VALUES (2,'Ingles')
INSERT INTO Idiomas (ID,Nombre) VALUES (3,'Italiano')
INSERT INTO Idiomas (ID,Nombre) VALUES (4,'Frances')
INSERT INTO Idiomas (ID,Nombre) VALUES (5,'Portugues')

SELECT * FROM Tipos_Idiomas
--Datos de TIPOS_IDIOMAS
INSERT INTO Tipos_Idiomas (Nombre) VALUES ('Audio')
INSERT INTO Tipos_Idiomas (Nombre) VALUES ('Subtitulo')
INSERT INTO Tipos_Idiomas (Nombre) VALUES ('Texto del video')

SELECT * FROM Tipos_de_Contenido
--Datos de Tipos_de_Contenidos
INSERT INTO Tipos_de_Contenido (ID,Nombre) VALUES (1,'Audio de alta claidad')
INSERT INTO Tipos_de_Contenido (ID,Nombre) VALUES (2,'Examen')
INSERT INTO Tipos_de_Contenido (ID,Nombre) VALUES (3,'Texto')
INSERT INTO Tipos_de_Contenido (ID,Nombre) VALUES (4,'Video')

SELECT *FROM Categoria
--Datos de Categorias
INSERT INTO Categoria (Nombre) VALUES ('Argentina')
INSERT INTO Categoria (Nombre) VALUES ('Arte')
INSERT INTO Categoria (Nombre) VALUES ('Belico')
INSERT INTO Categoria (Nombre) VALUES ('Bordado')
INSERT INTO Categoria (Nombre) VALUES ('Cocina')--5
INSERT INTO Categoria (Nombre) VALUES ('Deportes individuales')
INSERT INTO Categoria (Nombre) VALUES ('Diseño')
INSERT INTO Categoria (Nombre) VALUES ('Edad medio')
INSERT INTO Categoria (Nombre) VALUES ('Historia')
INSERT INTO Categoria (Nombre) VALUES ('Informática')--10
INSERT INTO Categoria (Nombre) VALUES ('Internet')
INSERT INTO Categoria (Nombre) VALUES ('Italia')
INSERT INTO Categoria (Nombre) VALUES ('Juegos de tablero')
INSERT INTO Categoria (Nombre) VALUES ('Manualidades')
INSERT INTO Categoria (Nombre) VALUES ('Musica')--15
INSERT INTO Categoria (Nombre) VALUES ('Negocio')
INSERT INTO Categoria (Nombre) VALUES ('Pesca')
INSERT INTO Categoria (Nombre) VALUES ('Programación')--18

SELECT * FROM Cursos_por_Categorias
--datos de CURSOS PO CATEGORIAS
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (1,10)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (1,18)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (2,5)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (2,12)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (3,2)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (3,4)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (3,14)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (4,10)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (4,18)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (5,10)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (5,18)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (6,6)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (6,17)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (7,5)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (7,16)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (8,2)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (8,7)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (8,10)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (9,2)--20
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (9,9)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (9,15)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (10,3)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (10,8)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (10,9)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (11,1)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (11,9)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (11,15)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (12,6)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (12,9)--30
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (12,13)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (13,6)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (13,9)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (13,13)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (14,9)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (14,13)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (15,10)
INSERT INTO Cursos_por_Categorias (IDCurso,IDCategoria) VALUES (15,11)




SELECT * FROM Curso
--datos de CURSO
SET DATEFORMAT 'DMY'
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Lenguaje C','10/10/2015',14000,7000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (NULL,'Cocina Italiana','9/9/2019',20000,8500)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (3,'Bordado:Técnicas avanzadas','3/7/2018',5000,1000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Python 101','7/7/2017',13000,4000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Javascript 101','7/7/2017',10000,5000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (4,'Introduccion a la pesca con mosca','21/9/2020',17000,7000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (2,'Preparación de mermeladas','10/8/2020',10000,1000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Pixel art','11/10/2019',0,15000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Guitarra','6/5/2015',0,1500)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (NULL,'Edad Media: Armas y tecnias belicas','20/8/2020',50000,35000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (NULL,'Historia del Rock Argentino','20/8/2020',20000,2000)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Ajedrez','11/4/2008',7000,700)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Go','11/4/2008',7000,700)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (1,'Damas','11/4/2008',7000,700)
INSERT INTO Curso (IDNivel,Nombre,FechaEstreno,CostoCurso,CostoCertificacion) VALUES (NULL,'Internet para dummies','19/8/2010',5000,50)

SELECT * FROM Idioma_por_Cursos
--datos de IDIOMAS_POR_CURSOS
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,2,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,3,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,4,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (1,5,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,2,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,3,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,3,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,4,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (2,5,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (3,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (4,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (4,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (4,2,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (4,3,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (4,4,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (4,5,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (5,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (5,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (5,2,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (5,3,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (5,4,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (5,5,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (6,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (6,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (6,2,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (6,3,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (6,4,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (6,5,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (7,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (7,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (8,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (8,2,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (9,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (10,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (10,2,1)--40
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (10,2,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (11,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (11,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (12,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (12,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (13,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (13,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (14,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (14,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (15,1,1)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (15,1,2)
INSERT INTO Idioma_por_Cursos (IDCurso, IDIdioma, IDTipoIdioma) VALUES (15,2,1)


SELECT * FROM Clase
--Datos de Clase

INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (1,'Tipos de datos y variables',1,45)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (1,'Estructura de decisión',2,45)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (1,'Estructura de repetición',3,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (1,'Arrays',4,60)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (1,'Funxiones',5,70)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (2,'Pastas',1,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (2,'Pizzas',2,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (2,'Pescados',3,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (2,'Dulces',4,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (3,'Elementos basicos para comenzar',1,45)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (3,'Tipos de tela',2,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (3,'Tipos de puntos',3,60)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (4,'Tipos de datos y variables',1,30)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (4,'Estructura de decisiones',2,40)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (4,'Estructura de repeticion',3,20)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (4,'Arrays',4,40)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (4,'Funciones',5,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (4,'Clases',6,100)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (5,'Tipos de datos y variables',1,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (5,'Estructura de desicion',2,60)--20
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (5,'Estructura de repeticion',3,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (5,'Arrays',4,70)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (5,'Funciones',5,60)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (5,'Clases',6,70)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (6,'Elementos basicos para comenzar',1,90)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (6,'Los peces',2,120)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (6,'Las moscas',3,90)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (7,'Frutas de estacion',1,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (7,'Coccion y almacenamiento',2,50)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (7,'Herramientas para venta online',3,90)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (7,'Poniendose al dia con la AFIP',4,110)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (8,'Empezando: Ejemplos',1,60)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (8,'Practica',2,70)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (8,'Abandonando por que no me sale',3,5)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (9,'Historia de la Guitarra',1,60)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (9,'Historia de las cuerdas de la guitarra',2,40)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (9,'Historia de las clavijas de la guitarra',3,70)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (9,'Brian May',4,80)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (10,'La caballeria',1,150)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (10,'La Infanteria',2,200)--40
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (10,'Tropas lanzaproyectiles',3,240)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (10,'Armas de asedio',4,330)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (11,'Virus',1,120)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (11,'Soda Stereo',2,120)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (11,'Las demas bandas',3,30)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (12,'Reglas de juego',1,80)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (13,'Reglas de juego',1,80)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (14,'Reglas de juego',1,40)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (15,'La Historia de Internet',1,90)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (15,'Memes',2,70)
INSERT INTO Clase (IDCurso,Nombre,Numero,Duracion) VALUES (15,'¿Como mandar spam?',3,50)--51

SELECT * FROM Contenidos
--datos de CONTENIDOS
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (1,3,3)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (1,4,42129)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (2,3,9)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (2,4,42479)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (3,3,8)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (3,4,31123)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (4,3,8)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (4,4,52558)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (5,3,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (5,4,27233)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (6,4,7565)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (7,4,11748)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (8,4,12277)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (9,4,41865)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (10,3,10)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (10,4,55689)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (11,3,10)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (11,4,13564)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (12,3,8)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (12,4,45610)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (1,3,4)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (1,4,23281)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (2,3,8)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (2,4,27679)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (3,3,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (3,4,6054)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (4,3,1)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (4,4,33472)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (5,3,4)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (5,4,27925)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (5,2,1)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (18,3,7)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (18,4,21568)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (18,2,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (1,4,1093)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (2,4,57116)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (3,4,22670)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (4,4,40725)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (5,4,1772)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (18,4,50823)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (10,4,8836)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (26,4,23943)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (27,4,50476)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (28,3,1)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (28,4,54331)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (28,2,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (29,3,6)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (29,4,17761)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño)VALUES (29,2,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (30,3,5)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (30,4,56704)--51
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (30,2,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño)VALUES (31,3,1)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (31,4,13237)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (31,2,1)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (32,4,15684)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (33,4,24366)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (34,4,7753)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño)VALUES (35,1,34)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (36,1,807)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (37,1,459)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño)VALUES (38,1,745)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (35,4,6799)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (36,4,2868)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (37,4,18715)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (38,4,31962)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (39,3,9)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (40,3,9)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (41,3,7)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (42,3,8)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (39,4,27851)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (40,4,48400)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (41,4,46921)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (42,4,29492)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (43,1,741)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (44,1,143)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (45,1,123)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (43,4,59839)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (44,4,16470)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (45,4,44445)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (46,3,1)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (46,3,3)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (46,3,2)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (49,4,21649)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (50,4,18306)
INSERT INTO Contenidos (IDClases,IDTipo,tamaño) VALUES (51,4,21680)
--1.3
Set dateformat 'YMD'
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (1, N'Argentina')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (2, N'Brasil')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (3, N'Chile')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (4, N'España')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (5, N'Estados Unidos')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (6, N'Italia')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (7, N'Uruguay')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (8, N'Inglaterra')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (9, N'Paraguay')
GO
INSERT [dbo].[Pais] ([ID], [Nombre]) VALUES (10, N'Colombia')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (1, N'aalberti')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (6, N'acacchione')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (7, N'achaparro')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (10, N'adiaz')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (29, N'aolivera')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (28, N'bmolteni')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (14, N'cferreira')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (20, N'ciglesias')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (21, N'cjesus')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (30, N'corellana')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (33, N'cpaolini')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (12, N'dfernandez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (5, N'ebreyaue')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (37, N'esalcedo')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (17, N'ggonzalez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (24, N'glopez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (27, N'gmolinos')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (38, N'hvillalba')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (9, N'icordoba')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (23, N'ikeegan')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (8, N'jcontreras')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (22, N'jjuarez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (25, N'jmajdalani')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (26, N'lmendoza')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (31, N'lorihuela')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (36, N'lrodriguez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (39, N'lvillalva')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (2, N'mantezana')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (11, N'mdominguez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (13, N'mferrari')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (16, N'mgonzalez')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (32, N'mpais')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (4, N'nblanco')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (15, N'nflori')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (34, N'npieruzzini')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (3, N'obianchi')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (19, N'pibazeta')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (18, N'rhuarcaya')
GO
INSERT [dbo].[Usuarios] ([ID], [NombreUsuario]) VALUES (35, N'wrepolledo')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (1, N'Alberti', N'Alan Fernando', CAST(N'1991-03-11' AS Date), N'M', N'1511190842', N'aalberti@mail.com', N'Batalla de Alberti 33365', 1625, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (2, N'Antezana Velazque', N'Marcos Daniel', CAST(N'1991-01-28' AS Date), N'M', N'1511658411', N'mantezana@utn.edu.ar', N'Virrey Antezana Velazque 34751', 1642, 7)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (3, N'Bianchi Di Rocco', N'Oscar Alberto', CAST(N'1984-04-27' AS Date), N'M', N'1511478142', N'obianchi@gmail.com', N'Virrey Bianchi Di Rocco 20001', 1633, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (4, N'Blanco', N'Nazareno Tomas', CAST(N'1986-08-27' AS Date), N'M', N'1511770422', N'nblanco@gmail.com', N'Santa Blanco 14811', 1629, 7)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (5, N'Breyaue', N'Emmanuel David', CAST(N'1984-04-29' AS Date), N'M', N'1511731160', N'ebreyaue@utn.edu.ar', N'Cardenal Breyaue 28501', 1612, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (6, N'Cacchione', N'Andres Omar', CAST(N'1978-01-07' AS Date), N'M', N'1511284177', null, N'Virrey Cacchione 2120', 1619, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (7, N'Chaparro', N'Agustin', CAST(N'2001-11-07' AS Date), N'M', N'1511782647', null, N'Obispo Chaparro 4627', 1601, 5)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (8, N'Contreras', N'Juan Ignacio', CAST(N'1972-07-20' AS Date), N'M', null, null, N'Virrey Contreras 32614', 1607, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (9, N'Cordoba', N'Ignacio David', CAST(N'1993-06-10' AS Date), N'M', N'1511268095', N'icordoba@hotmail.com.ar', N'Santa Cordoba 22474', 1624, 4)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (10, N'Diaz', N'Ailen Estefania', CAST(N'1984-06-24' AS Date), N'F', null, N'adiaz@hotmail.com.ar', N'Obispo Diaz 4132', 1626, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (11, N'Dominguez', N'Maximiliano Fernando Luis', CAST(N'1975-12-03' AS Date), N'M', N'1511381440', N'mdominguez@hotmail.com', N'Obispo Dominguez 22949', 1623, 6)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (12, N'Fernandez', N'Daniel David', CAST(N'1978-12-24' AS Date), N'M', N'1511574306', N'dfernandez@hotmail.com', N'San Fernandez 39871', 1647, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (13, N'Ferrari', N'Maria Silvana', CAST(N'1987-11-24' AS Date), N'F', null, N'mferrari@mail.com', N'Obispo Ferrari 6021', 1618, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (14, N'Ferreira', N'Cristian Nicolas', CAST(N'1990-04-18' AS Date), N'M', N'1511654956', N'cferreira@utn.edu.ar', N'General Ferreira 31627', 1602, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (15, N'Flori', N'Nicolas Ezequiel', CAST(N'1978-09-07' AS Date), N'M', N'1511449859', N'nflori@mail.com', N'Obispo Flori 33457', 1637, 2)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (16, N'Gonzalez Samperi', N'Matias Ezequiel', CAST(N'1977-09-06' AS Date), N'M', null, N'mgonzalez@mail.com', N'Presidente Gonzalez Samperi 10936', 1637, 3)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (17, N'Gonzalez', N'Guillermo Adrian', CAST(N'1990-12-20' AS Date), N'M', N'1511181907', N'ggonzalez@utn.edu.ar', N'Virrey Gonzalez 18066', 1610, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (18, N'Huarcaya Sánchez', N'Ricardo Alonso', CAST(N'1997-11-26' AS Date), N'M', N'1511170568', null, N'Comandante Huarcaya Sánchez 33580', 1603, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (19, N'Ibazeta', N'Pablo Agustín', CAST(N'1985-10-24' AS Date), N'M', N'1511135879', N'pibazeta@hotmail.com.ar', N'Santa Ibazeta 20958', 1641, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (20, N'Iglesias', N'Cristian', CAST(N'1986-09-26' AS Date), N'M', null, N'ciglesias@gmail.com', N'Virrey Iglesias 6558', 1638, 6)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (21, N'Jesus Sipiran', N'Carlos Alfredo', CAST(N'1983-01-13' AS Date), N'M', null, N'cjesus@hotmail.com.ar', N'Santa Jesus Sipiran 10071', 1648, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (22, N'Juarez', N'Juan Manuel', CAST(N'1976-06-23' AS Date), N'M', null, N'jjuarez@utn.edu.ar', N'San Juarez 16524', 1625, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (23, N'Keegan', N'Ignacio Nicolas', CAST(N'1999-10-17' AS Date), N'M', null, N'ikeegan@utn.edu.ar', N'Virrey Keegan 31264', 1628, 6)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (24, N'Lopez', N'Gonzalo Ezequiel', CAST(N'1993-05-04' AS Date), N'M', null, N'glopez@mail.com', N'Virrey Lopez 34815', 1600, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (25, N'Majdalani', N'Jeronimo', CAST(N'1988-02-07' AS Date), N'M', null, null, N'San Majdalani 27491', 1633, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (26, N'Mendoza', N'Leonardo Oscar', CAST(N'1986-11-01' AS Date), N'M', null, N'lmendoza@utn.edu.ar', N'Virrey Mendoza 16565', 1633, 5)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (27, N'Molinos Zola', N'Gabriel', CAST(N'1980-05-21' AS Date), N'M', null, N'gmolinos@hotmail.com', N'San Molinos Zola 32111', 1627, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (28, N'Molteni', N'Bruno Mauricio', CAST(N'1988-11-16' AS Date), N'M', null, null, N'Santa Molteni 20053', 1646, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (29, N'Olivera', N'Alejandro Alberto', CAST(N'1993-03-14' AS Date), N'M', null, N'aolivera@mail.com', N'Batalla de Olivera 39116', 1604, 2)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (30, N'Orellana', N'Carlos Alberto', CAST(N'1996-10-10' AS Date), N'M', null, N'corellana@hotmail.com', N'Obispo Orellana 7304', 1627, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (31, N'Orihuela', N'Lucas Franco', CAST(N'1998-03-15' AS Date), N'M', null, N'lorihuela@hotmail.com.ar', N'Santa Orihuela 36108', 1641, 6)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (32, N'Pais', N'Manuel Agustin', CAST(N'1991-11-27' AS Date), N'M', null, N'mpais@hotmail.com', N'Comandante Pais 8097', 1635, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (33, N'Paolini Vattuone', N'Cristian Andres', CAST(N'1980-08-22' AS Date), N'M', null, N'cpaolini@utn.edu.ar', N'General Paolini Vattuone 35066', 1614, 6)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (34, N'Pieruzzini Pla', N'Nestor Tomas', CAST(N'1976-12-05' AS Date), N'M', N'1511627856', N'npieruzzini@hotmail.com.ar', N'Comandante Pieruzzini Pla 16921', 1618, 5)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (35, N'Repolledo Rodas', N'Wendy Maite', CAST(N'1972-02-24' AS Date), N'F', N'1511749540', N'wrepolledo@hotmail.com', N'Comandante Repolledo Rodas 11490', 1637, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (36, N'Rodriguez', N'Leandro Hernan', CAST(N'1990-12-05' AS Date), N'M', N'1511554236', N'lrodriguez@gmail.com', N'General Rodriguez 26037', 1647, 1)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (37, N'Salcedo Paucar', N'Edwin Mishaell', CAST(N'1986-05-07' AS Date), N'M', N'1511321809', null, N'Virrey Salcedo Paucar 24247', 1606, 3)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (38, N'Villalba', N'Hernan Gabriel', CAST(N'1972-11-26' AS Date), N'M', N'1511193441', N'hvillalba@gmail.com', N'Cardenal Villalba 17719', 1648, 4)
GO
INSERT [dbo].[Datos_Personales] ([ID], [Apellidos], [Nombres], [Nacimiento], [Genero], [Celular], [Email], [Domicilio], [CP], [IDPais]) VALUES (39, N'Villalva', N'Lautaro Javier', CAST(N'1972-11-27' AS Date), N'M', N'1511375998', N'lvillalva@gmail.com', N'San Villalva 36458', 1615, 1)
GO
SET IDENTITY_INSERT [dbo].[Inscripciones] ON 
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (1, 26, 1, CAST(N'2018-04-22' AS Date), 14000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (2, 39, 1, CAST(N'2018-03-02' AS Date), 14000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (3, 34, 1, CAST(N'2019-06-18' AS Date), 14000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (4, 21, 1, CAST(N'2018-10-05' AS Date), 14000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (5, 7, 1, CAST(N'2019-02-06' AS Date), 14000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (6, 31, 2, CAST(N'2019-05-26' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (7, 27, 2, CAST(N'2019-06-20' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (8, 25, 2, CAST(N'2018-10-29' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (9, 16, 2, CAST(N'2019-01-13' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (10, 4, 3, CAST(N'2019-08-02' AS Date), 5000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (11, 26, 3, CAST(N'2019-02-11' AS Date), 5000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (12, 20, 3, CAST(N'2018-02-07' AS Date), 5000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (13, 27, 4, CAST(N'2018-08-22' AS Date), 13000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (14, 35, 4, CAST(N'2019-03-15' AS Date), 13000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (15, 29, 4, CAST(N'2018-04-19' AS Date), 13000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (16, 17, 4, CAST(N'2020-02-22' AS Date), 13000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (17, 33, 4, CAST(N'2019-04-10' AS Date), 13000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (18, 24, 4, CAST(N'2019-01-17' AS Date), 13000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (19, 38, 5, CAST(N'2019-05-03' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (20, 1, 5, CAST(N'2018-06-08' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (21, 9, 5, CAST(N'2019-11-11' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (22, 25, 5, CAST(N'2019-02-23' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (23, 13, 5, CAST(N'2019-11-08' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (24, 23, 5, CAST(N'2019-08-19' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (25, 39, 6, CAST(N'2019-09-12' AS Date), 17000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (26, 23, 6, CAST(N'2019-07-04' AS Date), 17000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (27, 19, 6, CAST(N'2019-07-29' AS Date), 17000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (28, 12, 7, CAST(N'2019-08-13' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (29, 21, 7, CAST(N'2019-11-22' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (30, 12, 7, CAST(N'2019-10-09' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (31, 14, 7, CAST(N'2018-03-02' AS Date), 10000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (32, 6, 8, CAST(N'2018-02-26' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (33, 32, 8, CAST(N'2019-11-23' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (34, 14, 8, CAST(N'2018-07-15' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (35, 25, 9, CAST(N'2018-06-28' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (36, 3, 9, CAST(N'2019-09-02' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (37, 39, 9, CAST(N'2019-06-21' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (38, 7, 9, CAST(N'2018-09-04' AS Date), 0.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (39, 22, 10, CAST(N'2018-12-30' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (40, 2, 10, CAST(N'2018-11-06' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (41, 4, 10, CAST(N'2018-12-20' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (42, 12, 10, CAST(N'2019-10-04' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (43, 22, 10, CAST(N'2019-09-15' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (44, 4, 10, CAST(N'2020-01-18' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (45, 35, 10, CAST(N'2018-11-28' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (46, 4, 10, CAST(N'2018-12-14' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (47, 22, 10, CAST(N'2020-01-07' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (48, 37, 10, CAST(N'2019-01-23' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (49, 6, 10, CAST(N'2018-05-19' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (50, 13, 10, CAST(N'2018-04-29' AS Date), 50000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (51, 1, 11, CAST(N'2019-08-22' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (52, 21, 11, CAST(N'2019-11-05' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (53, 24, 11, CAST(N'2018-05-05' AS Date), 20000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (54, 38, 12, CAST(N'2019-04-09' AS Date), 7000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (55, 20, 12, CAST(N'2020-01-27' AS Date), 7000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (56, 20, 13, CAST(N'2018-06-09' AS Date), 7000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (57, 14, 14, CAST(N'2019-10-28' AS Date), 7000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (58, 3, 15, CAST(N'2018-01-01' AS Date), 5000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (59, 36, 15, CAST(N'2019-12-06' AS Date), 5000.0000)
GO
INSERT [dbo].[Inscripciones] ([ID], [IDUsuario], [IDCurso], [Fecha], [Costo]) VALUES (60, 39, 15, CAST(N'2018-11-17' AS Date), 5000.0000)
GO
SET IDENTITY_INSERT [dbo].[Inscripciones] OFF
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (1, 11)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (7, 9)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (8, 1)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (11, 3)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (12, 12)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (13, 8)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (15, 8)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (15, 10)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (19, 11)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (23, 6)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (25, 7)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (27, 4)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (30, 4)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (31, 9)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (32, 1)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (32, 2)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (33, 11)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (33, 14)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (35, 5)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (38, 15)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (39, 2)
GO
INSERT [dbo].[Instructures_x_Curso] ([IDUsuario], [IDCurso]) VALUES (39, 13)
GO
SET IDENTITY_INSERT [dbo].[Pagos] ON 
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (1, 1, CAST(N'2018-04-22' AS Date), 14000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (2, 2, CAST(N'2018-03-02' AS Date), 14000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (3, 3, CAST(N'2019-06-18' AS Date), 14000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (4, 4, CAST(N'2018-10-05' AS Date), 14000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (5, 5, CAST(N'2019-02-06' AS Date), 14000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (6, 6, CAST(N'2019-05-26' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (7, 7, CAST(N'2019-06-20' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (8, 8, CAST(N'2018-10-29' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (9, 9, CAST(N'2019-01-13' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (10, 10, CAST(N'2019-08-02' AS Date), 5000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (11, 11, CAST(N'2019-02-11' AS Date), 5000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (12, 12, CAST(N'2018-02-07' AS Date), 5000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (13, 13, CAST(N'2018-08-22' AS Date), 13000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (14, 14, CAST(N'2019-03-15' AS Date), 13000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (15, 15, CAST(N'2018-04-19' AS Date), 13000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (16, 16, CAST(N'2020-02-22' AS Date), 13000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (17, 17, CAST(N'2019-04-10' AS Date), 13000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (18, 18, CAST(N'2019-01-17' AS Date), 13000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (19, 19, CAST(N'2019-05-03' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (20, 20, CAST(N'2018-06-08' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (21, 21, CAST(N'2019-11-11' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (22, 22, CAST(N'2019-02-23' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (23, 23, CAST(N'2019-11-08' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (24, 24, CAST(N'2019-08-19' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (25, 25, CAST(N'2019-09-12' AS Date), 17000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (26, 26, CAST(N'2019-07-04' AS Date), 17000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (27, 27, CAST(N'2019-07-29' AS Date), 17000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (28, 28, CAST(N'2019-08-13' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (29, 29, CAST(N'2019-11-22' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (30, 30, CAST(N'2019-10-09' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (31, 31, CAST(N'2018-03-02' AS Date), 10000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (32, 39, CAST(N'2018-12-30' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (33, 40, CAST(N'2018-11-06' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (34, 41, CAST(N'2018-12-20' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (35, 42, CAST(N'2019-10-04' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (36, 43, CAST(N'2019-09-15' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (37, 44, CAST(N'2020-01-18' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (38, 45, CAST(N'2018-11-28' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (39, 46, CAST(N'2018-12-14' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (40, 47, CAST(N'2020-01-07' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (41, 48, CAST(N'2019-01-23' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (42, 49, CAST(N'2018-05-19' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (43, 50, CAST(N'2018-04-29' AS Date), 50000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (44, 51, CAST(N'2019-08-22' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (45, 52, CAST(N'2019-11-05' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (46, 53, CAST(N'2018-05-05' AS Date), 20000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (47, 54, CAST(N'2019-04-09' AS Date), 7000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (48, 55, CAST(N'2020-01-27' AS Date), 7000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (49, 56, CAST(N'2018-06-09' AS Date), 7000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (50, 57, CAST(N'2019-10-28' AS Date), 7000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (51, 58, CAST(N'2018-01-01' AS Date), 5000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (52, 59, CAST(N'2019-12-06' AS Date), 5000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (53, 60, CAST(N'2018-11-17' AS Date), 5000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (54, 1, CAST(N'2018-06-11' AS Date), 250.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (55, 2, CAST(N'2018-04-21' AS Date), 500.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (56, 3, CAST(N'2019-08-07' AS Date), 500.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (57, 24, CAST(N'2019-10-08' AS Date), 900.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (58, 25, CAST(N'2019-11-01' AS Date), 900.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (59, 26, CAST(N'2019-08-23' AS Date), 1000.0000)
GO
INSERT [dbo].[Pagos] ([ID], [IDInscripcion], [Fecha], [Importe]) VALUES (60, 1, CAST(N'2018-09-09' AS Date), 300.0000)
GO
SET IDENTITY_INSERT [dbo].[Pagos] OFF
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (1, CAST(N'2018-08-08' AS Date), 5000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (2, CAST(N'2018-05-31' AS Date), 5000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (3, CAST(N'2019-08-19' AS Date), 7000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (4, CAST(N'2018-12-05' AS Date), 5000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (5, CAST(N'2019-04-14' AS Date), 7000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (6, CAST(N'2019-06-22' AS Date), 8000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (7, CAST(N'2019-08-02' AS Date), 8000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (8, CAST(N'2019-02-04' AS Date), 8000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (9, CAST(N'2019-03-15' AS Date), 8000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (10, CAST(N'2019-10-26' AS Date), 1000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (11, CAST(N'2019-02-27' AS Date), 1000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (12, CAST(N'2018-05-15' AS Date), 1000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (13, CAST(N'2018-08-26' AS Date), 3000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (14, CAST(N'2019-03-17' AS Date), 3500.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (15, CAST(N'2018-08-10' AS Date), 3500.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (16, CAST(N'2020-05-22' AS Date), 4000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (17, CAST(N'2019-06-01' AS Date), 3500.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (18, CAST(N'2019-03-18' AS Date), 3500.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (19, CAST(N'2019-08-16' AS Date), 4000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (20, CAST(N'2018-10-04' AS Date), 3000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (21, CAST(N'2019-12-29' AS Date), 5000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (22, CAST(N'2019-06-03' AS Date), 4000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (23, CAST(N'2020-02-14' AS Date), 5000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (24, CAST(N'2019-09-27' AS Date), 4000.0000)
GO
INSERT [dbo].[Certificaciones] ([IDInscripciones], [Fecha], [Costo]) VALUES (25, CAST(N'2019-11-17' AS Date), 7000.0000)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (5, CAST(N'2019-04-29' AS Date), N'No me compiló ningún ejemplo', CAST(2.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (24, CAST(N'2019-09-06' AS Date), N'Excelente, recomiendo!', CAST(10.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (25, CAST(N'2019-12-23' AS Date), N'Muy bueno', CAST(10.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (26, CAST(N'2019-10-01' AS Date), N'No explicó como cocinar los pescados', CAST(5.0 AS Decimal(3, 1)), 1)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (27, CAST(N'2019-08-05' AS Date), N'Estoy muy enojado con el instructor', CAST(2.0 AS Decimal(3, 1)), 1)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (28, CAST(N'2019-10-20' AS Date), N'Cuál es el mail para comprar mermeladas?', CAST(10.0 AS Decimal(3, 1)), 1)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (29, CAST(N'2020-01-21' AS Date), N'Hacés envíos?', CAST(10.0 AS Decimal(3, 1)), 1)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (30, CAST(N'2019-11-30' AS Date), N'No me gustan las mermeladas', CAST(2.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (31, CAST(N'2018-04-14' AS Date), N'No podés hacer uno de escabeches?', CAST(10.0 AS Decimal(3, 1)), 1)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (32, CAST(N'2018-03-31' AS Date), N'No me salió ningún dibujo', CAST(4.0 AS Decimal(3, 1)), 1)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (34, CAST(N'2018-09-12' AS Date), N'Hay que practicar mucho', CAST(5.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (38, CAST(N'2018-10-29' AS Date), N'Hay que practicar mucho', CAST(6.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (39, CAST(N'2019-01-03' AS Date), N'Aguante la Edad Media <3', CAST(10.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (54, CAST(N'2019-06-29' AS Date), N'No enseñó la apertura italiana', CAST(8.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (56, CAST(N'2018-09-01' AS Date), N'Pensé que era un curso de programación y era de un juego de mesa. Igual estuvo bueno.', CAST(9.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (57, CAST(N'2020-01-28' AS Date), N'Genial 100% recomendable', CAST(2.0 AS Decimal(3, 1)), 0)
GO
INSERT [dbo].[Reseñas] ([IDInscripciones], [Fecha], [Observaciones], [Puntaje], [Inapropiada]) VALUES (58, CAST(N'2018-04-21' AS Date), N'Sólo enseñó a dejar reseñas en internet. Acá va una negativa.', CAST(1.0 AS Decimal(3, 1)), 0)
GO

--DROP TABLE Tipos_de_Contenido
--drop table Tipos_Idiomas
--DROP TABLE Idioma_por_Cursos
--DROP TABLE Idiomas
--DROP TABLE Cursos_por_Categorias
--DROP TABLE Categoria
--DROP TABLE Clase
--DROP TABLE Contenidos
--DROP TABLE Nivel
--DROP TABLE Curso
--DROP TABLE Paises







