

DELIMITER $$
CREATE FUNCTION  reg2020 ( periodo int)
RETURNS INT DETERMINISTIC 
BEGIN
    DECLARE cant INT;
    select count(id_alumno) into cant from verfecharegistro where Year(fecha_de_registro) = periodo;
    return cant;
END$$
DELIMITER ;


