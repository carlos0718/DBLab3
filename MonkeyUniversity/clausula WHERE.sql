
USE Monkey_University
--ACTIVIDAD 2.1
----CONSULTAS DE SELECCION - CLAUSALA WHERE

--1) Listado de todos los idiomas
SELECT * FROM Idiomas
--2) Listado de todos los cursos
SELECT *FROM Curso

--3) Listado con nombre, costo de inscripcion, costo de certificacion
-- y fecha de estreno de todos los cursos
SELECT Nombre, CostoCurso, CostoCertificacion, FechaEstreno FROM Curso

--4) Lista con ID, NOMBRE, COSTO DE INSCRIPCION E ID DE NIVEL de todos los
-- cursos cuyo costo de certificacion sea menor a $5000
SELECT ID, CostoCurso,IDNivel FROM Curso  WHERE CostoCertificacion < 5000

--5) Listado con ID, NOMBRE, COSTO DE INSCRIPCION E ID NIVEL de todos los cursos
-- cuyo costo de certificacion sea mayor a $1200
SELECT ID,Nombre, CostoCurso, IDNivel FROM Curso WHERE CostoCertificacion > 1200

--6) Listado con Nombre, Numero y duracion detodas las clases del curso con ID numero 6
SELECT Nombre, Numero, Duracion FROM Clase WHERE ID = 6

--7) Listado con nombre, numero y duracion de todas las clases del curso con ID numero 10
SELECT Nombre, Numero, Duracion FROM Clase WHERE IDCurso = 10

--8) Listado con nombre y dracion de todas las clases con ID numero 4 Ordenado
-- por duracion de mayor a menor
SELECT Nombre, Duracion FROM Clase WHERE ID = 4 ORDER BY Duracion DESC

--9) Listado con Nombre, Fecha de estreno, costo del curso, costo de certificacion
--ordenados por fecha de estreno de manera creciente
SELECT Nombre, FechaEstreno, CostoCurso, CostoCertificacion FROM Curso ORDER BY FechaEstreno ASC

--10)Listado con Nombre, fecha de estreno y costo de cursado de todos aquellos cuyo ID de nivel sea 1,5,6 o 7
SELECT Nombre, FechaEstreno, CostoCurso FROM Curso WHERE IDNivel IN (1,5,6,7)

--11)Listado con nombre, fecha de estreno y costo de cursada de los tres cursos más caros
--de certificar
SELECT TOP 3 Nombre, FechaEstreno, CostoCurso, CostoCertificacion FROM Curso ORDER BY CostoCertificacion DESC

--12)Listado con nombre, duracion y numero de todas las clases de los cursos con ID 2,5 y 7
--Ordenados por ID de Curso ascendente y luego por numero de clases ascendetes
SELECT Nombre, Duracion, Numero FROM Clase WHERE ID IN (2,5,7) ORDER BY IDCurso ASC 
SELECT Nombre, Duracion, Numero FROM Clase WHERE ID IN (2,5,7) ORDER BY Numero ASC 

--13) Listado con nombre y fecha de estreno de todos los cursos cuya fecha de estreno haya
--sido en el primer semestre del año 2019
SELECT Nombre, FechaEstreno FROM Curso WHERE YEAR(FechaEstreno) =2019 --and MONTH(FechaEstreno) < 7

--14) Listado de cursos cuya fecha de estreno haya sido en el año 2020
--set dateformat 'DMY'
--SELECT * FROM Curso WHERE FechaEstreno >= '1/1/2020 and FechaEstreno <= '31/12/200'
SELECT * FROM Curso WHERE YEAR(FechaEstreno) = 2020 

--15) Listado de cursos cuyo mes de estreno haya sido entre el 1 y el 4
SELECT * FROM Curso WHERE MONTH(FechaEstreno) < 5

--16) Listado de clases cuya duracion se encuentre entre 15 y 90 min
SELECT * FROM Clase WHERE Duracion >=15 AND Duracion <=90 

--17) Listado de contenido cuyo tamaño supere los 5000 MB y sean de tipo 4 o sean menores a 400MB y sean de tipo 1
SELECT * FROM Contenidos WHERE Tamaño > 5000 AND IDTipo = 4 OR Tamaño < 400

--18) Listado de cursos que no posean ID de nivel
SELECT * FROM Curso WHERE IDNivel IS NULL

--19) Listado de cursos cuyo costo de certificacion corresponda al 20% o  más del costo del curso
SELECT * FROM Curso WHERE CostoCertificacion >= CostoCurso /5 

--20) Listado de costos de cursado de todos los cursos sin repetir y ordenados de mayor a menor
SELECT DISTINCT  CostoCurso FROM Curso ORDER BY CostoCurso DESC