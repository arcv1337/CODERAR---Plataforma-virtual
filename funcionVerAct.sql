use plataforma;

DELIMITER $$
CREATE FUNCTION  verSiEstaActivo ( id_alum int)
RETURNS VARCHAR(50) DETERMINISTIC 
BEGIN
    DECLARE respuesta varchar(50);
    select activo into respuesta from comisiones where id_alum = id_alumno;
    return respuesta;
END$$
DELIMITER ;


