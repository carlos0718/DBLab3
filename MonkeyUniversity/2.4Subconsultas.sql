USE Monkey_University

--1)Listado con apellidos y nombres de los usuarios que no se hayan inscripto a cursos durante el año 2019.

SELECT DP.Nombres, DP.Apellidos, YEAR(I.Fecha) FROM Datos_Personales DP JOIN Inscripciones I
ON I.IDUsuario = DP.ID WHERE YEAR(I.Fecha) != 2019

SELECT DP.Nombres, DP.Apellidos FROM Datos_Personales DP 
WHERE DP.ID NOT IN( SELECT DISTINCT I.IDUsuario FROM Inscripciones I 
WHERE YEAR(I.Fecha) = 2019)

--2)Listado con apellidos y nombres de los usuarios que se hayan inscripto a cursos pero no hayan realizado ningún pago.

/*SELECT Inscripciones.IDUsuario, Pagos.Importe FROM Inscripciones JOIN Pagos ON Pagos.IDInscripcion=Inscripciones.ID
SELECT * FROM Inscripciones
SELECT*FROM Pagos*/
------------------------DUDAS
--A)
SELECT DP.Apellidos, DP.Nombres FROM Datos_Personales DP 
WHERE DP.ID IN ( SELECT I.IDUsuario FROM Inscripciones I WHERE I.Costo =0 )
--B)
SELECT DP.Apellidos, DP.Nombres FROM Datos_Personales DP 
WHERE DP.ID IN ( SELECT I.IDUsuario FROM Inscripciones I JOIN Curso C ON I.IDCurso=C.ID  WHERE I.Costo =0 )

--OTROS
Select Nombres, Apellidos From Datos_Personales where id not in (select idInscripcion From Pagos)

Select Nombres, Apellidos From Datos_Personales where id not in (Select I.ID From Inscripciones as I Inner Join Pagos as P On I.ID= P.IDInscripcion)

--3)Listado de países que no tengan usuarios relacionados.

SELECT Nombre FROM Pais WHERE ID NOT IN (SELECT IDPais FROM Datos_Personales) 

--4)Listado de clases cuya duración sea mayor a la duración promedio.

SELECT Nombre, Duracion FROM Clase WHERE Duracion > (SELECT AVG(Duracion) FROM Clase)

--5)Listado de contenidos cuyo tamaño sea mayor al tamaño de todos los contenidos de tipo 'Audio de alta calidad'.
--SELECT*FROM Tipos_de_Contenido

SELECT Tamaño FROM Contenidos WHERE Tamaño >
(SELECT MAX(C.Tamaño) FROM Contenidos C JOIN Tipos_de_Contenido TC ON C.IDTipo=TC.ID
WHERE TC.Nombre LIKE 'Audio de alta calidad')

--UPDATE Tipos_de_Contenido SET Nombre = 'Audio de alta calidad' WHERE ID = 1 

--6)Listado de contenidos cuyo tamaño sea menor al tamaño de algún contenido de tipo 'Audio de alta calidad'.

SELECT Tamaño FROM Contenidos WHERE Tamaño <
(SELECT MIN(C.Tamaño) FROM Contenidos C JOIN Tipos_de_Contenido TC ON C.IDTipo=TC.ID
WHERE TC.Nombre LIKE 'Audio de alta calidad')

--7)Listado con nombre de país y la cantidad de usuarios de género masculino y la cantidad de usuarios 
--de género femenino que haya registrado.

SELECT P.Nombre,
(
    SELECT COUNT(*) FROM Datos_Personales DP
    WHERE DP.Genero = 'F' AND P.ID = DP.IDPais
)[Cantidad Femenino],
(
    SELECT COUNT(*) FROM Datos_Personales DP
    WHERE DP.Genero = 'M' AND P.ID = DP.IDPais
)[Cantidad Masculino]
FROM Pais P                        

--8)Listado con apellidos y nombres de los usuarios y la cantidad de inscripciones realizadas en el 2019
-- y la cantidad de inscripciones realizadas en el 2020.

SELECT DP.Apellidos,DP.Nombres,
(
    SELECT COUNT(*) FROM Inscripciones I WHERE YEAR(I.Fecha) = 2019 AND I.IDUsuario = DP.ID   
)[Incripciones 2019],
(
    SELECT COUNT(*) FROM Inscripciones I WHERE YEAR(I.Fecha) = 2020 AND I.IDUsuario = DP.ID   
)[Incripciones 2020]
FROM Datos_Personales DP 

--9)Listado con nombres de los cursos y la cantidad de idiomas de cada tipo. Es decir, la cantidad de idiomas de audio, 
--la cantidad de subtítulos y la cantidad de texto de video.

SELECT *  FROM Tipos_Idiomas 

SELECT C.Nombre,
(
    SELECT COUNT(TI.ID) FROM Idiomas I JOIN Idioma_por_Cursos IxC 
    ON IxC.IDIdioma = I.ID JOIN Tipos_Idiomas TI 
    ON TI.ID = IxC.IDTipoIdioma
    WHERE TI.Nombre = 'audio' AND C.ID = IxC.IDCurso
)[Cantidad de Audio],
(
    SELECT COUNT(TI.ID) FROM Idiomas I JOIN Idioma_por_Cursos IxC 
    ON IxC.IDIdioma = I.ID JOIN Tipos_Idiomas TI 
    ON TI.ID = IxC.IDTipoIdioma
    WHERE TI.Nombre = 'subtitulo' AND C.ID = IxC.IDCurso
)[Cantidad de Subtitulo],
(
    SELECT COUNT(TI.ID) FROM Idiomas I JOIN Idioma_por_Cursos IxC 
    ON IxC.IDIdioma = I.ID JOIN Tipos_Idiomas TI 
    ON TI.ID = IxC.IDTipoIdioma
    WHERE TI.Nombre = 'texto de video' AND C.ID = IxC.IDCurso
)[Cantidad de Texto de video]
FROM Curso C

--10)Listado con apellidos y nombres de los usuarios, nombre de usuario y cantidad de cursos de nivel 'Principiante' que realizó 
--y cantidad de cursos de nivel 'Avanzado' que realizó.

SELECT DP.Apellidos,DP.Nombres, U.NombreUsuario ,
(
    SELECT COUNT(C.ID) FROM Curso C JOIN Nivel N ON N.ID = C.IDNivel 
    JOIN Inscripciones I ON I.IDCurso = C.ID 
    WHERE N.Nombre = 'Principiante' AND DP.ID = I.IDUsuario
)[Cant. Cursos nivel Principiante],
(
    SELECT COUNT(C.ID) FROM Curso C JOIN Nivel N ON N.ID = C.IDNivel 
    JOIN Inscripciones I ON I.IDCurso = C.ID 
    WHERE N.Nombre = 'Avanzado' AND DP.ID = I.IDUsuario
)[Cant. Cursos nivel Principiante]
FROM Datos_Personales DP JOIN Usuarios U  
ON U.ID = DP.ID

--11)Listado con nombre de los cursos y la recaudación de inscripciones de usuarios de género femenino que se inscribieron
-- y la recaudación de inscripciones de usuarios de género masculino.

SELECT C.Nombre,
(
    SELECT ISNULL(SUM(P.Importe),0) FROM Pagos P JOIN Inscripciones I 
    ON P.IDInscripcion = I.ID JOIN Datos_Personales DP 
    ON I.IDUsuario = DP.ID WHERE DP.Genero = 'F' AND C.ID = I.IDCurso	
)[Importe Total Femenino],
(
    SELECT ISNULL(SUM(P.Importe),0) FROM Pagos P JOIN Inscripciones I 
    ON P.IDInscripcion = I.ID JOIN Datos_Personales DP 
    ON I.IDUsuario = DP.ID WHERE DP.Genero = 'M' AND C.ID = I.IDCurso	
)[Importe Total Masculino]
FROM Curso C 

--12)Listado con nombre de país de aquellos que hayan registrado más usuarios de género masculino que de género femenino.

SELECT * FROM
(
    SELECT P.Nombre,
    (
        SELECT COUNT(*) FROM Datos_Personales 
        WHERE Genero = 'F' AND IDPais = P.ID
    ) CantF,
    (
        SELECT COUNT(*) FROM Datos_Personales 
        WHERE Genero = 'M' AND IDPais = P.ID
    )CantM
    FROM Pais P
)Aux
WHERE Aux.CantM>Aux.CantF
 
--13)Listado con nombre de país de aquellos que hayan registrado más usuarios de género masculino que de género femenino 
--pero que haya registrado al menos un usuario de género femenino.

SELECT * FROM
(
    SELECT P.Nombre,
    (
        SELECT COUNT(*) FROM Datos_Personales 
        WHERE Genero = 'F' AND IDPais = P.ID
    ) CantF,
    (
        SELECT COUNT(*) FROM Datos_Personales 
        WHERE Genero = 'M' AND IDPais = P.ID
    )CantM
    FROM Pais P
)Aux
WHERE Aux.CantM>Aux.CantF AND Aux.CantF >= 1

--14)Listado de cursos que hayan registrado la misma cantidad de idiomas de audio que de subtítulos.

SELECT * FROM
(
    SELECT C.Nombre,
    (
        SELECT COUNT(*) FROM  Tipos_Idiomas TI JOIN Idioma_por_Cursos IxC 
        ON IxC.IDTipoIdioma = TI.ID JOIN Idiomas I ON I.ID = IxC.IDIdioma
        WHERE TI.Nombre = 'audio' AND C.ID = IxC.IDCurso
    )[Total Audio],
    (
        SELECT COUNT(*) FROM  Tipos_Idiomas TI JOIN Idioma_por_Cursos IxC 
        ON IxC.IDTipoIdioma = TI.ID JOIN Idiomas I ON I.ID = IxC.IDIdioma
        WHERE TI.Nombre = 'subtitulo' AND C.ID = IxC.IDCurso
    )[Total Subtitulo]
FROM Curso C
) Aux  
WHERE Aux.[Total Audio] = Aux.[Total Subtitulo]

--15)Listado de usuarios que hayan realizado más cursos en el año 2018 que en el 2019 y a su vez más cursos en el año 2019 que en el 2020.
SELECT * FROM
(
    SELECT U.NombreUsuario,
    (
        SELECT COUNT(*) FROM Curso C JOIN Inscripciones I
        ON C.ID = I.IDCurso WHERE YEAR(I.Fecha) = 2018 AND U.ID = I.IDUsuario
    )[Total 2018],
    (
        SELECT COUNT(*) FROM Curso C JOIN Inscripciones I
        ON C.ID = I.IDCurso WHERE YEAR(I.Fecha) = 2019 AND U.ID = I.IDUsuario
    )[Total 2019],
    (
        SELECT COUNT(*) FROM Curso C JOIN Inscripciones I
        ON C.ID = I.IDCurso WHERE YEAR(I.Fecha) = 2020 AND U.ID = I.IDUsuario
    )[Total 2020]
    FROM Usuarios U
)Aux
WHERE Aux.[Total 2018]>Aux.[Total 2019] AND Aux.[Total 2019]>Aux.[Total 2020]

--16)Listado de apellido y nombres de usuarios que hayan realizado cursos pero nunca se hayan certificado.
--Aclaración: Listado con apellidos y nombres de usuarios que hayan realizado al menos un curso y no se hayan certificado nunca.




/* PRIMER PARCIAL DB*/

--1)Apellido y nombre de los pacientes y el costo de consulta más caro 
--que haya abonado. Si algún paciente nunca abonó un costo de consulta, indicarlo con un valor -1.
SELECT P.Apellido, P.Nombre, ISNULL(MAX(M.Costo_Consulta),-1) FROM Pacientes P 

LEFT JOIN Turnos T ON T.IDPaciente = P.IDPaciente JOIN Medicos M 

ON M.IDMedico = T.IDMedico GROUP BY P.Apellido, P.Nombre

--2)Los apellidos y nombres de los pacientes que no se hayan atendido nunca con un médico de sexo masculino y de especialidad 'Psiquiatria'

SELECT P.Apellido, P.Nombre FROM Pacientes P JOIN Turno T 

ON T.IDPaciente = P.IDPaciente JOIN Medicos M ON M.IDMedico = T.IDMedico

WHERE M.IDMedico NOT IN(
     SELECT * FROM Medicos M  JOIN Especialidad E 
     ON E.IDEspecialidad = M.IDEspecialidad 
     WHERE M.SEXO = 'M' AND E.Nombre = 'Psiquiatria'
)

--3)Por cada especialidad, la cantidad de médicos/as que cobren más de $750 la consulta y la cantidad 
--de médicos/as que cobren igual o menos de $750 la consulta

SELECT E.Nombre,
(
     SELECT COUNT(*) FROM Medicos M
     WHERE M.COSTO_CONSULTA > 750 AND E.IDEspecialidad = M.IDEspecialidad
) MayorA750,
(
     SELECT COUNT(*) FROM Medicos M
     WHERE M.COSTO_CONSULTA <= 750 AND E.IDEspecialidad = M.IDEspecialidad
) MenorIgualA750
FROM Especialidad E

--4) La cantidad de pacientes que se hayan atendido más veces en el primer semestre 
--que en el segundo semestre. Indistintamente del año.

SELECT COUNT(*) FROM 
(
      SELECT P.Nombre ,
      (
           SELECT COUNT(*) FROM Turnos T 
           WHERE MONTH(T.FechaHora) < 7 AND T.IDPaciente = P.IDPaciente
      ) PrimerSem,
       (
           SELECT COUNT(*) FROM Turnos T 
           WHERE MONTH(T.FechaHora) >= 7  AND T.IDPaciente = P.IDPaciente
      )SegundpSem
      FROM Pacientes P 

) AUX
WHERE AUX.PrimerSem>AUX.SegundpSem