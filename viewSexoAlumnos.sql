CREATE OR REPLACE VIEW verSexoAlumnos AS
SELECT
	alu.nombre,
    alu.apellido,
    ge.sexo as genero
		
FROM alumnos alu
INNER JOIN genero ge ON ge.id_alumno = alu.id_alumno 