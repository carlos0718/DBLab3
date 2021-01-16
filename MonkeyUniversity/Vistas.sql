
--vista para consultar las personas que son instructores y los cursos que están asignados.
ALTER VIEW Usuarios_por_pais AS
SELECT Dat.ID, Dat.Apellidos +', '+ Dat.Nombres Instructores, P.Nombre Pais, C.Nombre Materia
FROM Datos_Personales Dat JOIN Instructures_X_Curso IxC 
ON IxC.IDUsuario = Dat.ID LEFT JOIN Pais P ON Dat.IDPais = P.ID 
JOIN Curso C ON C.ID = IxC.IDCurso  

SELECT * FROM Usuarios_por_pais  

-- vista para consultar la cantidad de personas que pagaron  inscripcióon y certificación
CREATE VIEW Alumnos_certificados AS
SELECT dat.Apellidos +','+ dat.Nombres Alumnos, I.Costo Inscripcion, C.Costo Certifiacion FROM Datos_Personales Dat 
JOIN Inscripciones I ON I.IDUsuario = Dat.ID JOIN Certificaciones C 
ON C.IDInscripciones = I.ID  

SELECT top 1 with ties A.Alumnos, A.Inscripcion , A.Certifiacion FROM Alumnos_certificados A
ORDER by A.Inscripcion DESC
