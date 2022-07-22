USE ipc_argentina;

DROP VIEW IF EXISTS ipc_anual_desde_2017;
DROP VIEW IF EXISTS ipc_2022_nacional_divisiones;
DROP VIEW IF EXISTS ipc_gba_divisiones;
DROP VIEW IF EXISTS ipc_nacional_Alberto_Fernandez;
DROP VIEW IF EXISTS ipc_nacional_Mauricio_Macri;

-- Vista ipc_anual_desde_2017
CREATE OR REPLACE VIEW ipc_anual_desde_2017 AS
SELECT SUM(i.valor_ipc_intermensual) AS ipc_anual, YEAR(p.fecha) AS año
FROM ipc AS i
LEFT JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE i.id_region = (SELECT id_region FROM region WHERE region = 'NACIONAL')
GROUP BY año
ORDER BY año DESC;

-- Vista ipc_2022_nacional_divisiones
CREATE OR REPLACE VIEW ipc_2022_nacional_divisiones AS
SELECT d.id_ipc_division,
(SELECT division FROM divisiones
	WHERE d.id_division = id_division) AS division,
d.valor_ipc_division, MONTHNAME(p.fecha) AS mes, YEAR(p.fecha) AS año,
(SELECT region FROM ipc_argentina.region
	WHERE (d.id_region = id_region)) AS region
FROM ipc_divisiones AS d
JOIN periodo AS p
ON p.id_periodo = d.id_periodo
WHERE (YEAR(p.fecha) >= 2022 AND d.id_region = 1)
ORDER BY division ASC;

-- Vista ipc_gba_divisiones
CREATE OR REPLACE VIEW ipc_gba_divisiones AS
SELECT d.id_ipc_division,
(SELECT division FROM divisiones
	WHERE d.id_division = id_division) AS division,
d.valor_ipc_division, MONTHNAME(p.fecha) AS mes, YEAR(p.fecha) AS año,
(SELECT region FROM ipc_argentina.region
	WHERE (d.id_region = id_region)) AS region
FROM ipc_divisiones AS d
JOIN periodo AS p
ON p.id_periodo = d.id_periodo
WHERE d.id_region = 2
ORDER BY valor_ipc_division DESC;

-- Vista ipc_nacional_Alberto_Fernandez
CREATE OR REPLACE VIEW ipc_nacional_Alberto_Fernandez AS
SELECT i.id_ipc, i.valor_ipc_intermensual, i.valor_ipc_interanual, MONTHNAME(p.fecha) AS mes, YEAR(p.fecha) AS año,
(SELECT region FROM ipc_argentina.region
	WHERE region = 'NACIONAL') AS region
FROM ipc AS i
JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE (p.id_presidente = (SELECT id_presidente FROM presidente WHERE nombre_completo = 'Alberto Fernandez'))
ORDER BY p.id_periodo DESC;

-- Vista ipc_nacional_Mauricio_Macri
CREATE OR REPLACE VIEW ipc_nacional_Mauricio_Macri AS
SELECT i.id_ipc, i.valor_ipc_intermensual, i.valor_ipc_interanual, MONTHNAME(p.fecha) AS mes, YEAR(p.fecha) AS año,
(SELECT region FROM ipc_argentina.region
	WHERE region = 'NACIONAL') AS region
FROM ipc AS i
JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE (p.id_presidente = (SELECT id_presidente FROM presidente WHERE nombre_completo = 'Mauricio Macri'))
ORDER BY p.id_periodo DESC;