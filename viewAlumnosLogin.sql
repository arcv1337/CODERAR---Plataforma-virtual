CREATE OR REPLACE VIEW verAlumnoLogin
AS 
SELECT 
		alu.username,
        alu.email,
        alu.legajo as password
       

FROM alumnos as alu
