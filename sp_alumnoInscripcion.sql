use plataforma;

DELIMITER $$
Create PROCEDURE alumnoInscripcion(IN id_matricula INT, in id_alumno INT, in id_periodo INT, in carrera VARCHAR(30),in curso VARCHAR(30), in fecha_de_registro DATETIME)
BEGIN
    insert into inscripcion(id_matricula, id_alumno, id_periodo, carrera, curso, fecha_de_registro) values (id_matricula, id_alumno, id_periodo, carrera, curso, fecha_de_registro);
    
 
END
$$ DELIMITER ;