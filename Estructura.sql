CREATE DATABASE IF NOT EXISTS coderar;

USE coderar;

CREATE TABLE IF NOT EXISTS Genero (
    id_genero INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
	sexo VARCHAR(30)
    
);


CREATE TABLE IF NOT EXISTS Pais (
    id_pais INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(30) NOT NULL,
    provincia VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Alumnos (
    id_alumno INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_genero INT NOT NULL,
    id_pais INT NOT NULL,
    username VARCHAR(30) ,	
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    dni VARCHAR(30),
    nacimiento DATE,
    email VARCHAR(30),
    edad INT,
    legajo VARCHAR(30),
    foreign key (id_genero) references Genero(id_genero)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (id_pais) references Pais(id_pais)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Periodo (
    id_periodo INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    año_academico VARCHAR(30)
    
    
);


CREATE TABLE IF NOT EXISTS Inscripcion (
    id_matricula INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT NOT NULL,
    id_periodo INT,
    carrera VARCHAR (30),
    curso VARCHAR(30),
    fecha_de_registro DATE,
	foreign key (id_alumno) references Alumnos(id_alumno)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (id_periodo) references Periodo(id_periodo)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    
    
);

CREATE TABLE IF NOT EXISTS Comisiones (
	id_comision INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT NOT NULL UNIQUE,
    id_alumno INT NOT NULL UNIQUE,
    id_periodo INT NOT NULL UNIQUE,
    activo INT,
    carrera VARCHAR (30),
    curso VARCHAR(30),
    foreign key (id_alumno) references Alumnos(id_alumno)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (id_periodo) references Periodo(id_periodo)
	ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (id_matricula) references Inscripcion(id_matricula)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);



CREATE TABLE IF NOT EXISTS Profesores (
	id_profesor INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_comision INT NOT NULL UNIQUE,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    legajo VARCHAR(30) NOT NULL,
    carga_laboral VARCHAR(30) NOT NULL,
	foreign key (id_comision) references Comisiones(id_comision)
    ON DELETE CASCADE
    ON UPDATE CASCADE

);







