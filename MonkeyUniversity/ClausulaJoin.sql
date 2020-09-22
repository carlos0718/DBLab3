USE Monkey_University

SELECT * FROM Usuarios

--1) Listado con nombre de usuario de todos los usuarios y sus respectivos nombres y apellidos.

SELECT Usuarios.NombreUsuario, Datos_Personales.Nombres,Datos_Personales.Apellidos, Datos_Personales.Celular FROM Usuarios 
INNER JOIN Datos_Personales ON Datos_Personales.ID = Usuarios.ID
WHERE Datos_Personales.Celular IS  NULL

--2) Listado con apellidos, nombres, fecha de nacimiento y nombre del país de nacimiento.

SELECT Datos_Personales.Apellidos,Datos_Personales.Nombres,Datos_Personales.Nacimiento, Pais.Nombre
FROM Datos_Personales INNER JOIN Pais ON Datos_Personales.IDPais = Pais.ID

--3)Listado con nombre de usuario, apellidos, nombres, email o celular de todos los usuarios que 
--vivan en una domicilio cuyo nombre contenga el término 'Presidente' o 'General'.
--NOTA: Si no tiene email, obtener el celular.

SELECT Usuarios.NombreUsuario, Datos_Personales.Apellidos,Datos_Personales.Nombres,
ISNULL(Datos_Personales.Email,Datos_Personales.Celular) AS Contacto, 
Datos_Personales.Domicilio FROM Usuarios INNER JOIN Datos_Personales ON Usuarios.ID = Datos_Personales.ID 
WHERE Datos_Personales.Domicilio LIKE '%Presidente%' OR Datos_Personales.Domicilio LIKE '%General%' 

--4)Listado con nombre de usuario, apellidos, nombres, email o celular o domicilio como 
--'Información de contacto'.
--NOTA: Si no tiene email, obtener el celular y si no posee celular obtener el domicilio.

SELECT Usuarios.NombreUsuario, Datos_Personales.Apellidos, Datos_Personales.Nombres,
ISNULL(ISNULL(Datos_Personales.Email,Datos_Personales.Celular),Datos_Personales.Domicilio) AS Contacto
FROM Usuarios INNER JOIN Datos_Personales ON Usuarios.ID = Datos_Personales.ID

--5)Listado con apellido y nombres, nombre del curso y costo de la inscripción de todos 
-- los usuarios inscriptos a cursos.
-- NOTA: No deben figurar los usuarios que no se inscribieron a ningún curso.

SELECT Datos_Personales.Apellidos, Datos_Personales.Nombres,Curso.Nombre,Inscripciones.Costo 
FROM Datos_Personales INNER JOIN Inscripciones ON Inscripciones.IDUsuario=Datos_Personales.ID 
INNER JOIN Curso ON Curso.ID = Inscripciones.IDCurso

--6)Listado con nombre de curso, nombre de usuario y mail de todos los inscriptos a cursos
-- que se hayan estrenado en el año 2020.

SELECT Curso.Nombre, Usuarios.NombreUsuario, Datos_Personales.Email FROM Curso
INNER JOIN Inscripciones ON Curso.ID = Inscripciones.IDCurso 
INNER JOIN Datos_Personales ON Datos_Personales.ID = Inscripciones.IDUsuario
INNER JOIN Usuarios ON Inscripciones.IDUsuario = Usuarios.ID
WHERE YEAR(Curso.FechaEstreno) = 2020

--7)Listado con nombre de curso, nombre de usuario, apellidos y nombres, fecha de inscripción, 
-- costo de inscripción, fecha de pago e importe de pago. 
-- Sólo listar información de aquellos que hayan pagado.

SELECT Curso.Nombre, Usuarios.NombreUsuario, Datos_Personales.Apellidos, Datos_Personales.Nombres,
Inscripciones.Costo, Inscripciones.Fecha, Pagos.Importe FROM Curso INNER JOIN Inscripciones 
ON Curso.ID = Inscripciones.IDCurso INNER JOIN Usuarios ON Usuarios.ID = Inscripciones.IDUsuario
INNER JOIN Datos_Personales ON Datos_Personales.ID = Usuarios.ID INNER JOIN Pagos ON 
Pagos.IDInscripcion = Inscripciones.ID

--8)Listado con nombre y apellidos, genero, fecha de nacimiento, mail, nombre del curso y 
--fecha de certificación de todos aquellos usuarios que se hayan certificado.

SELECT Datos_Personales.Nombres, Datos_Personales.Apellidos, Datos_Personales.Genero,
Datos_Personales.Nacimiento,Datos_Personales.Email, Curso.Nombre, Certificaciones.Fecha 
FROM Datos_Personales INNER JOIN Inscripciones on Inscripciones.IDUsuario = Datos_Personales.ID
INNER JOIN Certificaciones ON Certificaciones.IDInscripciones = Inscripciones.ID
INNER JOIN Curso ON Curso.ID = Inscripciones.IDCurso


--9)Listado de cursos con nombre, costo de cursado y certificación, costo total (cursado + certificación) 
-- con 10% de todos los cursos de nivel Principiante.

SELECT Curso.Nombre, Curso.CostoCurso, Curso.CostoCertificacion,  
(Curso.CostoCurso + Curso.CostoCertificacion) AS CostoTotal FROM Curso
INNER JOIN Nivel ON Curso.IDNivel = Nivel.ID WHERE Nivel.Nombre  LIKE 'Principiante'

--10)Listado con nombre y apellido y mail de todos los instructores. Sin repetir.

SELECT DISTINCT Datos_Personales.Nombres, Datos_Personales.Apellidos, Datos_Personales.Email 
FROM Datos_Personales INNER JOIN Instructures_X_Curso ON Datos_Personales.ID = Instructures_X_Curso.IDUsuario

--11)Listado con nombre y apellido de todos los usuarios que hayan cursado algún curso cuya categoría sea 'Historia'.

SELECT DISTINCT Datos_Personales.Apellidos, Datos_Personales.Nombres, Categoria.Nombre FROM Datos_Personales
INNER JOIN Inscripciones ON Datos_Personales.ID = Inscripciones.IDUsuario 
INNER JOIN Curso ON Inscripciones.IDCurso = Curso.ID
INNER JOIN Cursos_por_Categorias ON Curso.ID = Cursos_por_Categorias.IDCurso
INNER JOIN Categoria ON Categoria.ID = Cursos_por_Categorias.IDCategoria WHERE Categoria.Nombre LIKE 'Historia'
 
 --codigo hecho por profesor
Select distinct DAT.Apellidos, DAT.Nombres, CAT.Nombre From Datos_Personales as DAT
Inner Join Usuarios as U ON U.ID = DAT.ID
Inner Join Inscripciones as I ON U.ID = I.IDUsuario
Inner Join Curso as C ON C.ID = I.IDCurso
Inner Join Cursos_por_Categorias as CxC on C.ID = CxC.IDCurso
Inner Join Categoria as CAT ON CAT.ID = CxC.IDCategoria
Where CAT.Nombre = 'Historia'

--12)Listado con nombre de idioma, código de curso y código de tipo de idioma. Listar todos los idiomas
--  indistintamente si no tiene cursos relacionados.

SELECT * FROM Idioma_por_Cursos

SELECT Idiomas.Nombre, Idioma_por_Cursos.IDTipoIdioma ,Curso.ID FROM Curso
INNER JOIN Idioma_por_Cursos ON Idioma_por_Cursos.IDCurso = Curso.ID
RIGHT JOIN Idiomas ON Idiomas.ID = Idioma_por_Cursos.IDIdioma

--codigo del profe
SELECT Idiomas.Nombre, Idioma_por_Cursos.IDTipoIdioma, Idioma_por_Cursos.IDCurso FROM Idiomas
LEFT JOIN Idioma_por_Cursos ON Idiomas.ID = Idioma_por_Cursos.IDIdioma

--13)Listado con nombre de idioma de todos los idiomas que NO tienen cursos relacionados.
--DUDA???
SELECT * FROM Idioma_por_Cursos

SELECT Idiomas.Nombre FROM Idiomas 
LEFT JOIN Idioma_por_Cursos ON Idiomas.ID = Idioma_por_Cursos.IDIdioma


--14)Listado con nombres de idioma que figuren como audio de algún curso. Sin repeticiones.
SELECT * FROM Tipos_Idiomas
SELECT DISTINCT I.Nombre, TxI.Nombre FROM Idiomas I INNER JOIN Idioma_por_Cursos IxC ON  I.ID = IxC.IDIdioma
LEFT JOIN Tipos_Idiomas TxI ON IxC.IDTipoIdioma = TxI.ID WHERE TxI.Nombre LIKE 'Audio'

--15)Listado con nombres y apellidos de todos los usuarios y el nombre del país en el que nacieron.
-- Listar todos los países indistintamente si no tiene usuarios relacionados.

SELECT DP.Nombres, DP.Apellidos, P.Nombre FROM Datos_Personales DP 
RIGHT JOIN Pais P ON DP.IDPais = P.ID 

--16)Listado con nombre de curso, fecha de estreno y nombres de usuario de todos los inscriptos. 
-- Listar todos los nombres de usuario indistintamente si no se inscribieron a ningún curso.

SELECT C.Nombre, C.FechaEstreno, U.NombreUsuario FROM Inscripciones I RIGHT JOIN Usuarios U
ON I.IDUsuario = U.ID LEFT JOIN Curso C ON I.IDCurso = C.ID ORDER BY U.NombreUsuario ASC

--17)Listado con nombre de usuario, apellido, nombres, género, fecha de nacimiento y mail de
-- todos los usuarios que no cursaron ningún curso.

SELECT U.NombreUsuario, DP.Apellidos,DP.Nombres, DP.Genero, DP.Nacimiento, DP.Email 
FROM Usuarios U INNER JOIN Datos_Personales DP ON U.ID = DP.ID LEFT JOIN Inscripciones I
ON I.IDUsuario = U.ID LEFT JOIN Curso C ON I.IDCurso = C.ID WHERE I.ID IS NULL

--18)Listado con nombre y apellido, nombre del curso, puntaje otorgado y texto de la reseña. 
--Sólo de aquellos usuarios que hayan realizado una reseña inapropiada.
SELECT * FROM Reseñas

SELECT DP.Nombres, DP.Apellidos, C.Nombre, R.Puntaje, R.Observaciones 
FROM Datos_Personales DP JOIN Inscripciones I ON I.IDUsuario = DP.ID
JOIN Curso C ON I.IDCurso=C.ID
LEFT JOIN Reseñas R ON R.IDInscripciones = I.ID WHERE R.Inapropiada = 1

--19)Listado con nombre del curso, costo de cursado, costo de certificación, nombre del idioma y 
--nombre del tipo de idioma de todos los cursos cuya fecha de estreno haya sido antes del año actual. 
--Ordenado por nombre del curso y luego por nombre de tipo de idioma. Ambos ascendentemente.
SELECT C.Nombre,C.CostoCurso, C.CostoCertificacion, I.Nombre, TI.Nombre FROM Curso C
INNER JOIN Idioma_por_Cursos IxC ON C.ID = IxC.IDCurso INNER JOIN Tipos_Idiomas TI ON IxC.IDTipoIdioma = TI.ID
INNER JOIN Idiomas I ON IxC.IDIdioma = I.ID WHERE YEAR(C.FechaEstreno ) < 2020


--20)Listado con nombre del curso y todos los importes de los pagos relacionados.


--21)Listado con nombre de curso, costo de cursado y una leyenda que indique "Costoso" si el costo 
--de cursado es mayor a $ 15000, "Accesible" si el costo de cursado está entre $2500 y $15000, 
--"Barato" si el costo está entre $1 y $2499 y "Gratis" si el costo es $0.

SELECT Nombre, CostoCurso, 
CASE
    WHEN CostoCurso > 15000 then 'Costoso'
    WHEN CostoCurso >=2500 then 'Accesible'
    WHEN CostoCurso > 1 then 'Barato'
    WHEN CostoCurso = 0 Then 'Gratis'
END AS Leyenda
FROM Curso