USE ipc_argentina;

DROP TRIGGER IF EXISTS BEF_INS_ipc_general;
DROP TRIGGER IF EXISTS AFT_INS_ipc_general;
DROP TABLE IF EXISTS log_periodo;
DROP TABLE IF EXISTS log_ipc_general;

-- Trigger BEF_INST_ipc_general
CREATE TABLE IF NOT EXISTS log_periodo (
latest_period INT NOT NULL,
added_period INT NULL,
user VARCHAR(50),
fecha DATE NOT NULL,
hora TIME NOT NULL
);

DELIMITER $$
CREATE TRIGGER BEF_INS_ipc_general
BEFORE INSERT ON ipc
FOR EACH ROW
BEGIN
DECLARE latest_periodo INT;
SET latest_periodo = (SELECT MAX(id_periodo) FROM periodo); -- Se capta el último período de la DB
INSERT INTO log_periodo(`latest_period`, `added_period`, `user`, `fecha`, `hora`) VALUES (
	latest_periodo,
	NEW.id_periodo,
    SESSION_USER(),
    CURRENT_DATE(),
    CURRENT_TIME());
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
    CURRENT_TIME());
