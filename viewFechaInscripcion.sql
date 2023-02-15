

CREATE OR REPLACE VIEW verFechaRegistro
AS 
SELECT 
		alu.nombre,
        alu.apellido,
        ins.fecha_de_registro

FROM alumnos alu
INNER JOIN inscripcion ins ON ins.id_alumno = alu.id_alumno;