use plataforma;

CREATE OR REPLACE VIEW verDatosComisiones
AS 
SELECT 
		alu.id_alumno as id_alumno,
        alu.nombre as nombre,
        alu.apellido as apellido,
        alu.legajo as legajo,
        com.carrera as carrera,
        com.curso as curso,
        com.activo as activo,
        prof.nombre as Profesor,
        prof.carga_laboral as Horarios
        

FROM comisiones com
LEFT JOIN alumnos alu ON com.id_alumno = alu.id_alumno
LEFT JOIN profesores prof ON prof.id_comision = com.id_comision;