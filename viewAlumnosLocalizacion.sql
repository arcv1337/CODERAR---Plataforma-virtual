CREATE OR REPLACE VIEW verAlumnosLocalizacion AS
SELECT
	alu.nombre,
    alu.apellido,
    alu.edad,
    p.pais as Pais,
    p.provincia as Provincia
		
FROM alumnos alu
INNER JOIN pais p ON alu.id_pais = p.id_pais 