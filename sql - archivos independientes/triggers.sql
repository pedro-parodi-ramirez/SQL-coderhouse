USE ipc_argentina;

DROP TRIGGER IF EXISTS BEF_INS_periodo;
DROP TRIGGER IF EXISTS AFT_INS_ipc_general;
DROP TABLE IF EXISTS log_ipc_general;
DROP TABLE IF EXISTS log_ipc_periodo;

-- Trigger BEF_INS_ipc_periodo
CREATE TABLE IF NOT EXISTS log_ipc_periodo (
	user VARCHAR(50),
    periodo_ultimo INT,
    periodo_ingresado INT,
    fecha DATE,
    hora TIME,
    mensaje VARCHAR (100)
);

DELIMITER $$
CREATE TRIGGER BEF_INS_periodo
BEFORE INSERT ON ipc
FOR EACH ROW
BEGIN
	DECLARE latest_period INT;
    DECLARE new_date DATE;
    SET latest_period = (SELECT MAX(id_periodo) FROM periodo);
    SET new_date = DATE_ADD((SELECT fecha FROM periodo WHERE id_periodo = latest_period), INTERVAL 1 MONTH);
	IF ( NEW.id_periodo > latest_period ) THEN
		INSERT INTO periodo(`id_periodo`,`id_presidente`,`fecha`) VALUES (
			NEW.id_periodo,
            (SELECT MAX(id_presidente) FROM presidente),
            new_date
        );
        INSERT INTO log_ipc_periodo(`user`, `periodo_ultimo`,`periodo_ingresado`, `fecha`, `hora`, `mensaje`) VALUES (
		SESSION_USER(),
        latest_period,
        NEW.id_periodo,
		CURRENT_DATE(),
		CURRENT_TIME(),
		"La variable id_presidente debe ser corroborada."
	);
    ELSE
		INSERT INTO log_ipc_periodo(`user`, `periodo_ultimo`,`periodo_ingresado`, `fecha`, `hora`,  `mensaje`) VALUES (
			SESSION_USER(),
			latest_period,
			NEW.id_periodo,
			CURRENT_DATE(),
			CURRENT_TIME(),
			"Validar este ingreso, corresponde a id_periodo ya existente."
		);
    END IF;	
END$$

DELIMITER ;

-- Trigger AFT_INS_ipc_general
CREATE TABLE IF NOT EXISTS log_ipc_general (
	user VARCHAR(50),
	action VARCHAR(10) NOT NULL,
	id_ipc INT NOT NULL,
	fecha DATE NOT NULL,
	hora TIME NOT NULL
);

CREATE TRIGGER AFT_INS_ipc_general
AFTER INSERT ON ipc
FOR EACH ROW
INSERT INTO log_ipc_general(`user`, `action`, `id_ipc`, `fecha`, `hora`) VALUES (
	SESSION_USER(),
    'INSERT',
    NEW.id_ipc,
    CURRENT_DATE(),
    CURRENT_TIME()
);