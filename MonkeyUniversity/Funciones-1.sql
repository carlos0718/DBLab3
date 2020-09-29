USE Monkey_University

--1)Listado con la cantidad de cursos.

SELECT COUNT(*) [Cantidad de Cursos] FROM Curso 

--2)Listado con la cantidad de usuarios.

SELECT COUNT(*) [Cantidad de Usuarios] FROM Usuarios

--3)Listado con el promedio de costo de certificación de los cursos.

SELECT AVG(CostoCertificacion) [Promedio Costo Certifiaccion] FROM Curso

--4)Listado con el promedio general de calificación de reseñas.

SELECT AVG(Puntaje) [Promedio Calificacion] FROM Reseñas

--5)Listado con la fecha de estreno de curso más antigua.

SELECT MIN(FechaEstreno) [Fecha Estreno mas Antigua]FROM Curso

--6)Listado con el costo de certificación menos costoso.

SELECT MIN(CostoCertificacion) [Menos Costoso] FROM Curso

--7)Listado con el costo total de todos los cursos.

SELECT SUM(CostoCurso) [Costo Total] FROM Curso

--8)Listado con la suma total de todos los pagos.

SELECT SUM(Importe) [Importe Total] FROM Pagos

--9)Listado con la cantidad de cursos de nivel principiante.

SELECT COUNT(*) Cantidad FROM Curso INNER JOIN Nivel ON Nivel.ID = Curso.IDNivel
WHERE Nivel.Nombre LIKE 'Principiante'

--10)Listado con la suma total de todos los pagos realizados en 2019.

SELECT Importe, Fecha FROM Pagos WHERE YEAR(Fecha) = 2019--listado de todos lo pagos del 2019
SELECT SUM(Importe) [Total Importe] FROM Pagos WHERE YEAR(Fecha) = 2019--lo que pide la consigna

--11)Listado con la cantidad de usuarios que son instructores.

SELECT DISTINCT U.NombreUsuario FROM Usuarios U JOIN Instructures_X_Curso IxC
ON U.ID = IxC.IDUsuario--Todos los usuarios que son Instructores

SELECT COUNT(DISTINCT U.NombreUsuario)[Instructores] FROM Usuarios U JOIN Instructures_X_Curso IxC
ON U.ID = IxC.IDUsuario--La cantidad de usurios distintos que son instructores

SELECT COUNT(DISTINCT IDUsuario)[Instructores] FROM Instructures_X_Curso -- forma resumida de hallar el total de usuario que son instructores

--12)Listado con la cantidad de usuarios distintos que se hayan certificado.

SELECT COUNT(DISTINCT IDInscripciones) [Total Usuarios Certificados] FROM Certificaciones

--13)Listado con el nombre del país y la cantidad de usuarios de cada país.

SELECT P.Nombre,COUNT(DP.ID) Cantidad FROM Pais P JOIN Datos_Personales DP
ON DP.IDPais =P.ID GROUP BY P.Nombre

--14)Listado con el apellido y nombres del usuario y el importe más costoso abonado como pago. Sólo listar aquellos que hayan abonado más de $7500.

SELECT DP.Apellidos, DP.Nombres, MAX(P.Importe) FROM Datos_Personales DP 
JOIN Inscripciones I ON I.IDUsuario = DP.ID JOIN Pagos P 
ON P.IDInscripcion = I.ID --WHERE P.Importe > 7500
GROUP BY DP.Apellidos, DP.Nombres
HAVING MAX(P.Importe) > 7500

--15)Listado con el apellido y nombres de usuario y el importe más costoso de curso al cual se haya inscripto.

SELECT DP.Apellidos, DP.Nombres, MAX(I.Costo) [Importe mas Costoso] FROM Datos_Personales DP JOIN Inscripciones I
ON DP.ID = I.IDUsuario GROUP by DP.Apellidos, DP.Nombres ORDER BY DP.Apellidos ASC

--16)Listado con el nombre del curso, nombre del nivel, cantidad total de clases y duración total del curso en minutos.

/*SELECT * FROM Clase
SELECT Nombre FROM Curso
*/
SELECT C.Nombre, N.Nombre, SUM(Cl.Numero)[Total Clases],SUM(Cl.Duracion)[Duracion] FROM Nivel N JOIN Curso C ON N.ID = C.IDNivel
JOIN Clase Cl ON Cl.IDCurso = C.ID GROUP BY C.Nombre, N.Nombre

--17)Listado con el nombre del curso y cantidad de contenidos registrados. Sólo listar aquellos cursos que tengan más de 10 contenidos registrados.

SELECT C.Nombre, COUNT(Cont.ID)[Total Contenidos] FROM CUrso C JOIN Clase Cs ON C.ID = Cs.IDCurso
JOIN Contenidos Cont ON Cs.ID = Cont.IDClases GROUP BY C.Nombre HAVING COUNT(Cont.ID)>10

--18)Listado con nombre del curso, nombre del idioma y cantidad de tipos de idiomas.

SELECT C.Nombre, I.Nombre,COUNT(TxI.ID)[Cantidad Tipos_Idiomas] FROM Curso C JOIN Idioma_por_Cursos IxC ON C.ID = IxC.IDCurso
JOIN Idiomas I ON I.ID = IxC.IDIdioma JOIN Tipos_Idiomas TxI ON IxC.IDTipoIdioma = TxI.ID GROUP BY C.Nombre, I.Nombre

--19)Listado con el nombre del curso y cantidad de idiomas distintos disponibles.

SELECT C.Nombre, COUNT(DISTINCT I.ID)[Cantidad Idiomas] FROM Curso C JOIN Idioma_por_Cursos IxC ON C.ID = IxC.IDCurso
JOIN Idiomas I ON IxC.IDIdioma = I.ID GROUP BY C.Nombre

--20)Listado de categorías de curso y cantidad de cursos asociadas a cada categoría. Sólo mostrar las categorías con más de 5 cursos.

/*SELECT * FROM Categoria*/

SELECT Ctg.Nombre, COUNT(C.ID) Cantidad FROM Categoria Ctg JOIN Cursos_por_Categorias CxC ON Ctg.ID = CxC.IDCategoria
JOIN Curso C ON CxC.IDCurso = C.ID GROUP BY Ctg.Nombre HAVING COUNT(C.ID) > 5

--21)Listado con tipos de contenido y la cantidad de contenidos asociados a cada tipo. Mostrar también aquellos tipos que no hayan registrado contenidos con cantidad 0.

SELECT TdC.Nombre,COUNT(C.ID)[Cantidad Contenido] FROM Tipos_de_Contenido TdC JOIN Contenidos C 
ON TdC.ID = C.IDTipo GROUP BY TdC.Nombre

--22)Listado con Nombre del curso, nivel, año de estreno y el total recaudado en concepto de inscripciones. Listar también aquellos cursos sin inscripciones con total igual a $0.

SELECT C.Nombre, N.Nombre Nivel, YEAR(C.FechaEstreno) Año,ISNULL(SUM(I.Costo),0) Total FROM Curso C LEFT JOIN Nivel N ON C.IDNivel = N.ID
LEFT JOIN Inscripciones I ON C.ID = I.IDCurso GROUP BY C.Nombre, YEAR(C.FechaEstreno),N.Nombre

--23)Listado con Nombre del curso, costo de cursado y certificación y cantidad de usuarios distintos inscriptos cuyo costo de cursado sea menor a $10000 y
-- cuya cantidad de usuarios inscriptos sea menor a 5. Listar también aquellos cursos sin inscripciones con cantidad 0.

SELECT C.Nombre, C.CostoCurso, C.CostoCertificacion, COUNT(DISTINCT I.IDUsuario ) Total FROM Curso C LEFT JOIN Inscripciones I ON C.ID = I.IDCurso
LEFT JOIN Usuarios U ON U.ID = I.IDUsuario WHERE C.CostoCurso < 10000
GROUP BY C.Nombre, C.CostoCurso, C.CostoCertificacion HAVING COUNT(DISTINCT I.IDUsuario ) < 5

--24)Listado con Nombre del curso, fecha de estreno y nombre del nivel del curso que más recaudó en concepto de certificaciones.

SELECT TOP 1 C.Nombre, C.FechaEstreno, N.Nombre, SUM(Ce.Costo) Total FROM Curso C LEFT JOIN Nivel N ON C.IDNivel = N.ID
JOIN Inscripciones I ON I.IDCurso = C.ID JOIN Certificaciones Ce ON Ce.IDInscripciones = I.ID
GROUP BY C.Nombre, C.FechaEstreno, N.Nombre ORDER BY Total DESC

--25)Listado con Nombre del idioma del idioma más utilizado como subtítulo.

--26)Listado con Nombre del curso y promedio de puntaje de reseñas apropiadas.

--27)Listado con Nombre de usuario y la cantidad de reseñas inapropiadas que registró.

--28)Listado con Nombre del curso, nombre y apellidos de usuarios y la cantidad de veces que dicho usuario realizó dicho curso. No mostrar cursos y usuarios que contabilicen cero.

--29)Listado con Apellidos y nombres, mail y duración total en concepto de clases de cursos a los que se haya inscripto. Sólo listar información de aquellos registros cuya duración total supere los 400 minutos.

--30)Listado con nombre del curso y recaudación total. La recaudación total consiste en la sumatoria de costos de inscripción y de certificación. Listarlos ordenados de mayor a menor por recaudación.
 
 /*MODELO PARCIAL*/

 --1)Por cada año, la cantidad de cursos que se estrenaron en dicho año y el promedio de costo de cursada

 --2)El idioma que se haya utilizada más veces como subtitulado Si hay varios idiomas en esa condición, mostrarlos a todos

 --3)Apellidos y nombres de usuarios que cursaron algún curso y nunca fueron instructores de cursos

 --4)Para cada usuario mostrar los apellidos y nombres y el costo más caro de un curso al que se haya inscripto. En caso de
 --no haberse inscripto a ningun curso debe figurar igual pero con importe igual a -1

 --5) La cantidad de usuarios que hayan realizado reseñas positivos(puntaje >=7) pero nunca una reseña negativa(puntaje<7)