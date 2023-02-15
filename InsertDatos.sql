use coderar;

-- Puede que algunos datos no esten completos, simplemente porque en el registro de la plataforma no es necesario
-- insertar todos sus datos, en su perfil pueden añadir los que estan nulos y/o secundarios.

INSERT INTO  Alumnos (id_alumno, id_genero, id_pais, username, nombre, apellido, dni, nacimiento, email, edad, legajo)
VALUES
(1,1,1,'arcv1337','Agustin','Pelle','46551489','2000-07-31','agustinpelle@hotmail.com',22,'LINF01'),
(2,2,2,'Luisa44','Luisa','Guerrera','26641471','1998-02-12','luisaguerrera44@gmail.com',24,'MED01'),
(3,3,3,'Adrian112','Adrian','Parrafo','36648719','2002-04-28','adrian112@outlook.com',20,'DCH01'),
(4,4,4,'Josefa235','Josefina','Martinez','48756745','1984-10-03','josefinamartinez@gmail.com',38,NULL),
(5,NULL,NULL,'Martu221','Martina','Salva','47782446',NULL,'martusalva68@gmail.com',NULL,NULL),
(6,NULL,NULL,'Lorenzomarcheti1','Lorenzo','Marcheti','42554698',NULL,'marchetilorenzope@hotmail.com',NULL,NULL),
(7,NULL,NULL,'Martingoluw42','Martin','Goluw','48874517','1980-11-23','martingoluw@gmail.com',42,NULL),
(8,NULL,NULL,'EnzitoFerna11','Enzo','Fernandez','36889451',NULL,'enzofernandezcabj@hotmail.com',NULL,NULL),
(9,NULL,NULL,'Lautaromartinez478','Lautaro','Martinez','44554687',NULL,'lautamartinez23@outlook.com',NULL,NULL),
(10,NULL,NULL,'Rodrimolina32','Rodrigo','Molina','45488741','1986-05-21','rodrimolina@gmail.com',32,NULL);

INSERT INTO Comisiones (id_comision, id_matricula, id_alumno, id_periodo, activo, curso)
VALUES	(1, 1, 1, 1, Si, 'JavaScript'),
	(2, 2, 2, 2, No, 'Redes'),
	(3, 3, 3, 3, Si, 'Ciberseguridad I'),
	(4, 4, 4, 4, No, 'Python'),
	(5, 5, 5, 5, Si, 'Microsoft Excel Avanzado'),
	(6, 6, 6, 6, Si, 'Programacion.NET'),
	(7, 7, 7, 7, Si, 'Desarrollo Web'),
	(8, 8, 8, 8, Si, 'Data science'),
	(9, 9, 9, 9, Si, 'Dev Ops'),
	(10, 10, 10, 10, Si, 'Marketing');

INSERT INTO Inscripcion (id_matricula, id_alumno, curso, fecha_de_registro)
VALUES 
		(1, 1, 'JavaScript', '2019-02-10'),
		(2, 2, 'Redes', '2019-03-15'),
		(3, 3, 'Ciberseguridad I', '2019-05-11'),
		(4, 4, 'Python', '2020-04-11'),
		(5, 5, 'Microsoft Excel Avanzado', '2020-04-15'),
		(6, 6, 'Programacion.NET', '2020-04-22'),
		(7, 7, 'Desarrollo Web', '2020-05-01'),
		(8, 8, 'Data science', '2020-05-07'),
		(9, 9, 'Dev Ops', '2020-05-23'),
		(10, 10,'Marketing', '2020-05-28');

INSERT INTO  Genero (id_genero, sexo)
VALUES
	(1, 'Masculino'),
	(2, 'Femenino'),
	(3, 'Masculino'),
	(4, 'Femenino'),
	(5, 'Femenino'),
	(6, 'Masculino'),
	(7, 'Masculino'),
	(8, 'Masculino'),
	(9, 'Masculino'),
	(10, 'Masculino');

INSERT INTO Pais (id_pais, pais, provincia)
VALUES 
		(1, 'Argentina', 'Buenos Aires'),
		(2, 'Chile', 'Santiago de Chile'),
		(3, 'Argentina', 'Tierra del Fuego'),
		(4, 'Argentina', 'Mendoza'),
		(5, 'Argentina', 'Cordoba'),
        (6, 'Argentina', 'Santa cruz'),
        (7, 'Argentina', 'Tucuman'),
        (8, 'Argentina', 'San luis'),
        (9, 'Argentina', 'Rio negro'),
		(10, 'Argentina', 'Chubut');
        
INSERT INTO Periodo (id_periodo, año_academico)
VALUES
		(1, 2019),
        (2, 2019),
        (3, 2020),
        (4, 2020),
		(5, 2020),
		(6, 2020),
		(7, 2020),
		(8, 2020),
		(9, 2020),
		(10, 2020);
                
INSERT INTO Profesores (id_profesor, id_comision, nombre, apellido, legajo, carga_laboral)
VALUES 
	(1, 1, 'Jorge', 'Avalos', 'Javaloslu', 'Lunes y Martes 8a12'),
	(2, 2, 'Micaela', 'Verab', 'Miverab', 'Jueves y Viernes 15a20'),
	(3, 3, 'Alberto', 'Mansilla', 'Almansilla', 'Miercoles y Sabados 17a23'),
	(4, 4, 'Maria', 'Amparo', 'Mariamparo', 'Lunes y Jueves 14a18'),
	(5, 5, 'Fermin', 'Poveda', 'Ferminpove', 'Martes y Viernes 18a23'),
	(6, 6, 'Jose', 'Ocaña', 'Josefeocaña', 'Miercoles y Sabados 8a12'),
	(7, 7, 'Maria', 'Ponce', 'Mariaolgaponce', 'Jueves y Viernes 8a12'),
	(8, 8, 'Tamara', 'Moreira', 'Tamoreira', 'Lunes y Martes 15a20'),
	(9, 9, 'Sagrario', 'Peral', 'Sagraperal', 'Martes y Sabados 14a18'),
	(10, 10, 'Sandra', 'Leal', 'Sandrileal', 'Viernes y Sabados 15a20')    ;  
        