USE `ipc_argentina`;
DROP PROCEDURE IF EXISTS `add_ipc_general`;
DROP PROCEDURE IF EXISTS `divisions_ordered`;

-- SP add_ipc_general
DELIMITER $$
CREATE PROCEDURE `add_ipc_general` (IN valor_ipc_intermensual DECIMAL(8,2), valor_ipc_interanual DECIMAL(8,2), id_periodo INT,id_region INT)
BEGIN
	INSERT INTO ipc(`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES(
		NULL,
        valor_ipc_intermensual,
        valor_ipc_interanual,
        id_periodo,
        id_region);
END$$

DELIMITER ;

-- SP divisions_ordered
DELIMITER $$
CREATE PROCEDURE `divisions_ordered` (param VARCHAR(10))
BEGIN
	-- Se ordena alfabéticamente en caso de recibir 'asc' o 'ASC' como parámetro
	IF (upper(param) = 'ASC') THEN
		SELECT division FROM divisiones
        ORDER BY division ASC;
	ELSE
    -- Se ordena de forma descendiente en cualquier otro caso
		SELECT division FROM divisiones
        ORDER BY division DESC;
	END IF;
END$$

DELIMITER ;