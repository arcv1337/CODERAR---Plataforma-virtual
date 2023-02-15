use plataforma;

DELIMITER $$
Create PROCEDURE alumnosComisiones(IN id_comision INT, in id_matricula INT, in id_alumno INT, in carrera VARCHAR(30),in curso VARCHAR(30))
BEGIN
    insert into comisiones (id_comision, id_matricula, id_alumno, activo, carrera, curso) values (id_comision, id_matricula, id_alumno, activo, carrera, curso);
    
 
END
$$ DELIMITER ;