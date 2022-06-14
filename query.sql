/*DROP SCHEMA ipc_argentina;*/

SELECT p.mes_nombre as mes, p.año, i.valor_ipc_intermensual, i.valor_ipc_interanual, i.valor_ipc_acumulado
FROM ipc as i
JOIN periodo as p
ON (i.id_ipc = p.id_periodo);