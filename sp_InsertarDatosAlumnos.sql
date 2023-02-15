use plataforma;

DELIMITER $$
Create PROCEDURE insertarDatosAlumnos(IN a_username varchar(30), IN a_nombre varchar(30),IN a_apellido varchar(30), IN a_dni varchar(30),IN a_email varchar(30), IN a_nacimiento DATE, a_edad INT)
BEGIN
    insert into alumnos(username, nombre, apellido, dni, email, nacimiento, edad) values ( a_username, a_nombre,a_apellido, a_dni, a_email, a_nacimiento, a_edad);
 
END
$$ DELIMITER ;