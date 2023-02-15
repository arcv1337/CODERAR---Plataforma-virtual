use plataforma;

-- VISTAS

CREATE OR REPLACE VIEW verAlumnosLocalizacion AS
SELECT
	alu.nombre,
    alu.apellido,
    alu.edad,
    p.pais as Pais,
    p.provincia as Provincia
		
FROM alumnos alu
INNER JOIN pais p ON alu.id_pais = p.id_pais;



CREATE OR REPLACE VIEW verSexoAlumnos AS
SELECT
	alu.nombre,
    alu.apellido,
    ge.sexo as genero
		
FROM alumnos alu
INNER JOIN genero ge ON ge.id_alumno = alu.id_alumno;



CREATE OR REPLACE VIEW verFechaRegistro
AS 
SELECT 
		alu.nombre,
        alu.apellido,
        ins.fecha_de_registro

FROM alumnos alu
INNER JOIN inscripcion ins ON ins.id_alumno = alu.id_alumno;


CREATE OR REPLACE VIEW verAlumnoLogin
AS 
SELECT 
		alu.username,
        alu.email,
        alu.legajo as password
       

FROM alumnos as alu;


CREATE OR REPLACE VIEW verDatosComisiones
AS 
SELECT 
		alu.id_alumno as alumno,
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

-- FUNCIONES

DELIMITER $$
CREATE FUNCTION  regporaño ( periodo int)
RETURNS INT DETERMINISTIC 
BEGIN
    DECLARE cant INT;
    select count(id_alumno) into cant from verfecharegistro where Year(fecha_de_registro) = periodo;
    return cant;
END$$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION  verSiEstaActivo ( id_alum int)
RETURNS VARCHAR(50) DETERMINISTIC 
BEGIN
    DECLARE respuesta varchar(50);
    select activo into respuesta from comisiones where id_alum = id_alumno;
    return respuesta;
END$$
DELIMITER ;


-- STORED PROCEDURES

DELIMITER $$
Create PROCEDURE insertarDatosAlumnos(IN a_username varchar(30), IN a_nombre varchar(30),IN a_apellido varchar(30), IN a_dni varchar(30),IN a_email varchar(30), IN a_nacimiento DATE, a_edad INT)
BEGIN
    insert into alumnos(username, nombre, apellido, dni, email, nacimiento, edad) values ( a_username, a_nombre,a_apellido, a_dni, a_email, a_nacimiento, a_edad);
 
END
$$ DELIMITER ;

DELIMITER $$
Create PROCEDURE alumnoInscripcion(IN id_matricula INT, in id_alumno INT, in id_periodo INT, in carrera VARCHAR(30),in curso VARCHAR(30), in fecha_de_registro DATETIME)
BEGIN
    insert into inscripcion(id_matricula, id_alumno, id_periodo, carrera, curso, fecha_de_registro) values (id_matricula, id_alumno, id_periodo, carrera, curso, fecha_de_registro);
    
 
END
$$ DELIMITER ;

DELIMITER $$
Create PROCEDURE alumnosComisiones(IN id_comision INT, in id_matricula INT, in id_alumno INT, in carrera VARCHAR(30),in curso VARCHAR(30))
BEGIN
    insert into comisiones (id_comision, id_matricula, id_alumno, activo, carrera, curso) values (id_comision, id_matricula, id_alumno, activo, carrera, curso);
    
 
END
$$ DELIMITER ;

-- TRIGGERS

CREATE TRIGGER ALU_INS_alumnos_logs
BEFORE INSERT ON alumnos
FOR EACH ROW
INSERT INTO logs VALUES (NULL, "Alumnos", "Insert", NOW(), USER(), DATABASE(), VERSION());

CREATE TRIGGER COM_INS_comisiones_logs
BEFORE INSERT ON comisiones
FOR EACH ROW
INSERT INTO logs VALUES (NULL, "Comisiones", "Insert", NOW(), USER(), DATABASE(), VERSION());

CREATE TRIGGER PROF_INS_profesores_logs
BEFORE INSERT ON profesores
FOR EACH ROW
INSERT INTO logs VALUES (NULL, "Profesores", "Insert", NOW(), USER(), DATABASE(), VERSION());


CREATE TRIGGER ALU_DEL_alumnos_logs
BEFORE DELETE ON alumnos
FOR EACH ROW
INSERT INTO logs VALUES (NULL, "Alumnos", "Delete", NOW(), USER(), DATABASE(), VERSION());

CREATE TRIGGER COM_DEL_comisiones_logs
BEFORE DELETE ON comisiones
FOR EACH ROW
INSERT INTO logs VALUES (NULL, "Comisiones", "Delete", NOW(), USER(), DATABASE(), VERSION());

CREATE TRIGGER PROF_DEL_profesores_logs
BEFORE DELETE ON profesores
FOR EACH ROW
INSERT INTO logs VALUES (NULL, "Profesores", "Delete", NOW(), USER(), DATABASE(), VERSION());
