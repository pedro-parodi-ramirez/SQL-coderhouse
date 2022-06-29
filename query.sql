/*DROP SCHEMA ipc_argentina;*/

/*SELECT * FROM periodo;
SELECT * FROM region;
SELECT * FROM divisiones;
SELECT * FROM aperturas;
SELECT * FROM ipc_divisiones;
SELECT * FROM ipc_aperturas;*/

SELECT * FROM ipc;
SELECT d.id_ipc_division,
(SELECT division FROM divisiones WHERE d.id_division = id_division) as division,
d.valor_ipc_division, p.mes_nombre as mes, p.año,
(SELECT region FROM region WHERE d.id_region = id_region) as region
FROM ipc_divisiones as d
JOIN periodo as p
ON p.id_periodo = d.id_periodo
ORDER BY valor_ipc_division DESC;

SELECT a.id_ipc_apertura,
(SELECT apertura FROM aperturas WHERE a.id_apertura = id_apertura) as apertura,
a.valor_ipc_apertura, p.mes_nombre as mes, p.año,
(SELECT region FROM region WHERE a.id_region = id_region) as region
FROM ipc_aperturas as a
JOIN periodo as p
ON (p.id_periodo = a.id_periodo && p.año >= 2021)
ORDER BY valor_ipc_apertura DESC;