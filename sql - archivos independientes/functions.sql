USE ipc_argentina;

DROP FUNCTION ipc_año_X;
DROP FUNCTION above_average;

/*  FUNCION ipc_año_X */
DELIMITER $$
CREATE FUNCTION `ipc_año_X`(this_region TEXT(20), this_año INT)
RETURNS DECIMAL(8,2)
READS SQL DATA
BEGIN
	DECLARE resultado FLOAT;
	SET resultado =
    IFNULL(
		(SELECT SUM(i.valor_ipc_intermensual)	-- Se extrae el valor del ipc del año que se consulta, sumando los valores de los ipc mensuales
			FROM ipc i							-- a nivel nacional
			RIGHT JOIN periodo p
			ON i.id_periodo = p.id_periodo
			WHERE ( (p.año = UPPER(this_año)) AND (i.id_region = (SELECT id_region FROM region WHERE region = this_region)))),
		"Datos de entrada invalidos.");
RETURN resultado;
END
$$

/*  FUNCION above_average */
DELIMITER $$
CREATE FUNCTION `above_average`(this_mes TEXT(20), this_año INT)
RETURNS CHAR(255)
READS SQL DATA
BEGIN
	DECLARE ipc_average FLOAT; -- Almacena el valor del ipc intermensual del periodo consultado por el usuario
	DECLARE ipc_alimentos_y_bebidas_no_alcoholicas FLOAT; -- Almacena valor del ipc de la division "Alimentos y bebidas no alcoholicas"
    SET ipc_average =
		(SELECT valor_ipc_intermensual FROM ipc
		WHERE(
			-- La consulta es aplicada sobre la region "NACIONAL"
			(id_region = (SELECT id_region FROM region r WHERE (region = 'NACIONAL')))
            AND
            -- Se utiliza el operador LIKE para tomar valido, por ejemplo, MAR como MARZO o ABR como ABRIL
            (id_periodo = (SELECT id_periodo FROM periodo p WHERE (this_mes LIKE CONCAT(p.mes_nombre,'%') AND p.año = this_año))))
		);
	SET ipc_alimentos_y_bebidas_no_alcoholicas =
		(SELECT valor_ipc_division FROM ipc_divisiones i
        WHERE(
			-- Se utiliza el operador LIKE para tomar valido, por ejemplo, MAR como MARZO o ABR como ABRIL
			(id_periodo = (SELECT id_periodo FROM periodo p WHERE (this_mes LIKE CONCAT(p.mes_nombre,'%') AND p.año = this_año)))
			AND
            (id_division = (SELECT id_division FROM divisiones d WHERE (division = 'Alimentos y bebidas no alcoholicas')))
            AND
            -- La consulta es aplicada sobre la region "NACIONAL"
            (id_region = (SELECT id_region FROM region r WHERE (region = 'NACIONAL'))))
        );
	
    IF ( ISNULL(ipc_alimentos_y_bebidas_no_alcoholicas) OR ISNULL(ipc_average) ) THEN
		-- Contempla datos incorrectos ingresados por el usuario
		RETURN "Datos no validos";
    ELSEIF ( ipc_alimentos_y_bebidas_no_alcoholicas > ipc_average ) THEN
		RETURN CONCAT('En ', this_mes, '-', this_año, ' los alimentos y bebidas no alcoholicas tuvieron una inflacion mas alta que el promedio a nivel nacional.');
	ELSE
		RETURN CONCAT('En ', this_mes, '-', this_año, ' los alimentos y bebidas no alcoholicas tuvieron una inflacion mas baja que el promedio a nivel nacional.');
	END IF;
END
$$

DELIMITER ;