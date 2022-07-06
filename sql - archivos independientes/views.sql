-- Vista ipc_anual_desde_2017
CREATE OR REPLACE VIEW ipc_anual_desde_2017 AS
SELECT SUM(i.valor_ipc_intermensual) AS ipc_anual, p.año
FROM ipc AS i
LEFT JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE i.id_region = (SELECT id_region FROM region WHERE region = 'Nacional')
GROUP BY año
ORDER BY año DESC;

-- Vista ipc_2022_nacional_divisiones
CREATE OR REPLACE VIEW ipc_2022_nacional_divisiones AS
SELECT d.id_ipc_division,
(SELECT division FROM divisiones
	WHERE d.id_division = id_division) AS division,
d.valor_ipc_division, p.mes_nombre AS mes, p.año,
(SELECT region FROM ipc_argentina.region
	WHERE (d.id_region = id_region)) AS region
FROM ipc_divisiones AS d
JOIN periodo AS p
ON p.id_periodo = d.id_periodo
WHERE (p.año >= 2022 AND d.id_region = 1)
ORDER BY division ASC;

-- Vista ipc_gba_divisiones
CREATE OR REPLACE VIEW ipc_gba_divisiones AS
SELECT d.id_ipc_division,
(SELECT division FROM divisiones
	WHERE d.id_division = id_division) AS division,
d.valor_ipc_division, p.mes_nombre AS mes, p.año,
(SELECT region FROM ipc_argentina.region
	WHERE (d.id_region = id_region)) AS region
FROM ipc_divisiones AS d
JOIN periodo AS p
ON p.id_periodo = d.id_periodo
WHERE d.id_region = 2
ORDER BY valor_ipc_division DESC;

-- Vista ipc_nacional_Alberto_Fernandez
CREATE OR REPLACE VIEW ipc_nacional_Alberto_Fernandez AS
SELECT i.id_ipc, i.valor_ipc_intermensual, i.valor_ipc_interanual, p.mes_nombre as mes, p.año,
(SELECT region FROM ipc_argentina.region
	WHERE region = 'Nacional') AS region
FROM ipc AS i
JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE ((p.año >= 2020 AND p.año <= 2023) AND i.id_region = 1)
ORDER BY p.id_periodo DESC;

-- Vista ipc_nacional_Mauricio_Macri
CREATE OR REPLACE VIEW ipc_nacional_Mauricio_Macri AS
SELECT i.id_ipc, i.valor_ipc_intermensual, i.valor_ipc_interanual, p.mes_nombre as mes, p.año,
(SELECT region FROM ipc_argentina.region
	WHERE region = 'Nacional') AS region
FROM ipc AS i
JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE ((p.año >= 2016 AND p.año <= 2019) AND i.id_region = 1)
ORDER BY p.id_periodo DESC;