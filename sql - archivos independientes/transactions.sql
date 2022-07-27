USE ipc_argentina;

-- Se cancela el autocommit
SET @@AUTOCOMMIT = 0;

-- Se cancela la integridad de la clave foránea (solo para pruebas)
-- SET FOREIGN_KEY_CHECKS = 1;

-- Se modifica la tabla 'periodo' para poder cumplir con la transacción que elimina un registro
ALTER TABLE periodo DROP FOREIGN KEY periodo_ibfk_1;
ALTER TABLE periodo ADD CONSTRAINT fk_id_presidente
	FOREIGN KEY (id_presidente) REFERENCES presidente(id_presidente) ON DELETE SET NULL;

# TRANSACCIÓN UNO
-- Transacción que elimina el último registro de la tabla 'presidente'
START TRANSACTION;
SET @max_id_presidente = (SELECT MAX(id_presidente) FROM presidente); -- Diego, está bien declarar variables así? No hay que liberar el espacio luego o algo?
DELETE FROM presidente
	WHERE id_presidente = @max_id_presidente;
-- ROLLBACK;
COMMIT;

-- Backup
/*INSERT INTO presidente (`id_presidente`,`nombre_completo`, `mandato_inicio`, `mandato_fin`) VALUES (1,'Mauricio Macri', '2015-12-10', '2019-12-10');
INSERT INTO presidente (`id_presidente`,`nombre_completo`, `mandato_inicio`, `mandato_fin`) VALUES (2,'Alberto Fernandez', '2019-12-10', NULLIF(1,1));*/

# TRANSACIÓN DOS
-- Transacción que agrega registros y crea savepoints
START TRANSACTION;
SAVEPOINT init;
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,1.1,111,66,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,2.2,222,67,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,3.3,333,68,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,4.4,444,69,1);
SAVEPOINT lote_1;
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,5.5,555,70,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,6.6,666,71,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,7.7,777,72,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (NULL,8.8,888,73,1);
SAVEPOINT final;
-- ROLLBACK TO lote_1;
-- ROLLBACK TO init;
-- COMMIT;

-- Consulta de las modificaciones realizadas
-- SELECT * FROM ipc ORDER BY id_ipc DESC;