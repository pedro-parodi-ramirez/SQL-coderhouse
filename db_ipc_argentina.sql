-- Se crea el esquema
DROP DATABASE IF EXISTS ipc_argentina;
CREATE DATABASE IF NOT EXISTS ipc_argentina;
USE ipc_argentina;

##################################################################################################################################################
############################################################### CREACION DE TABLAS ###############################################################
##################################################################################################################################################

-- Tabla presidente
CREATE TABLE IF NOT EXISTS presidente(
	id_presidente INT AUTO_INCREMENT NOT NULL,
	nombre_completo VARCHAR (50) NOT NULL,
	mandato_inicio DATE NOT NULL,
	mandato_fin DATE,
	PRIMARY KEY (id_presidente)
);

-- Tabla periodo
CREATE TABLE  IF NOT EXISTS periodo(
	id_periodo INT NOT NULL AUTO_INCREMENT,
	id_presidente INT,
	fecha DATE NOT NULL,
	PRIMARY KEY (id_periodo),
	FOREIGN KEY (id_presidente) REFERENCES presidente(id_presidente)
);

-- Tabla region
CREATE TABLE  IF NOT EXISTS region(
	id_region INT NOT NULL AUTO_INCREMENT,
	region VARCHAR(20),
	PRIMARY KEY (id_region)
);

-- Tabla divisiones
CREATE TABLE IF NOT EXISTS divisiones(
	id_division INT NOT NULL AUTO_INCREMENT,
	division VARCHAR(100),
	PRIMARY KEY (id_division)
);

-- Tabla aperturas
CREATE TABLE IF NOT EXISTS aperturas(
	id_apertura INT NOT NULL AUTO_INCREMENT,
	apertura VARCHAR(100),
	id_division INT NOT NULL,
	PRIMARY KEY (id_apertura),
	FOREIGN KEY (id_division) REFERENCES divisiones(id_division)
);

-- Tabla ipc
CREATE TABLE IF NOT EXISTS ipc(
	id_ipc INT NOT NULL AUTO_INCREMENT,
	valor_ipc_intermensual FLOAT,
	valor_ipc_interanual FLOAT,
	id_periodo INT NOT NULL,
	id_region INT NOT NULL,
	PRIMARY KEY (id_ipc),
	FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
	FOREIGN KEY (id_region) REFERENCES region(id_region)
);

-- Tabla ipc_divisiones
CREATE TABLE IF NOT EXISTS ipc_divisiones(
	id_ipc_division INT NOT NULL AUTO_INCREMENT,
	valor_ipc_division FLOAT,
	id_division INT NOT NULL,
	id_periodo INT NOT NULL,
	id_region INT NOT NULL,
	PRIMARY KEY (id_ipc_division),
	FOREIGN KEY (id_division) REFERENCES divisiones(id_division),
	FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
	FOREIGN KEY (id_region) REFERENCES region(id_region)
);

-- Tabla ipc_aperturas
CREATE TABLE IF NOT EXISTS ipc_aperturas(
	id_ipc_apertura INT NOT NULL AUTO_INCREMENT,
	valor_ipc_apertura FLOAT,
	id_apertura INT NOT NULL,
	id_periodo INT NOT NULL,
	id_region INT NOT NULL,
	PRIMARY KEY (id_ipc_apertura),
	FOREIGN KEY (id_apertura) REFERENCES aperturas(id_apertura),
	FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
	FOREIGN KEY (id_region) REFERENCES region(id_region)
);
  
##################################################################################################################################################
############################################################### INSERCION DE DATOS ###############################################################
##################################################################################################################################################

################################################################# TABLA PRESIDENTE ################################################################
INSERT INTO presidente (`id_presidente`,`nombre_completo`, `mandato_inicio`, `mandato_fin`) VALUES (1,'Mauricio Macri', '2015-12-10', '2019-12-10');
INSERT INTO presidente (`id_presidente`,`nombre_completo`, `mandato_inicio`, `mandato_fin`) VALUES (2,'Alberto Fernandez', '2019-12-10', NULLIF(1,1));

################################################################# TABLA REGION ################################################################
INSERT INTO region (`id_region`,`region`) VALUES (1,'NACIONAL');
INSERT INTO region (`id_region`,`region`) VALUES (2,'GBA');
INSERT INTO region (`id_region`,`region`) VALUES (3,'PAMPEANA');
INSERT INTO region (`id_region`,`region`) VALUES (4,'NORESTE');
INSERT INTO region (`id_region`,`region`) VALUES (5,'NOROESTE');
INSERT INTO region (`id_region`,`region`) VALUES (6,'CUYO');
INSERT INTO region (`id_region`,`region`) VALUES (7,'PATAGONIA');

################################################################## TABLA PERIODO ##################################################################
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (1,1,'2017-01-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (2,1,'2017-02-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (3,1,'2017-03-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (4,1,'2017-04-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (5,1,'2017-05-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (6,1,'2017-06-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (7,1,'2017-07-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (8,1,'2017-08-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (9,1,'2017-09-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (10,1,'2017-10-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (11,1,'2017-11-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (12,1,'2017-12-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (13,1,'2018-01-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (14,1,'2018-02-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (15,1,'2018-03-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (16,1,'2018-04-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (17,1,'2018-05-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (18,1,'2018-06-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (19,1,'2018-07-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (20,1,'2018-08-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (21,1,'2018-09-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (22,1,'2018-10-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (23,1,'2018-11-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (24,1,'2018-12-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (25,1,'2019-01-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (26,1,'2019-02-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (27,1,'2019-03-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (28,1,'2019-04-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (29,1,'2019-05-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (30,1,'2019-06-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (31,1,'2019-07-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (32,1,'2019-08-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (33,1,'2019-09-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (34,1,'2019-10-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (35,1,'2019-11-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (36,1,'2019-12-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (37,2,'2020-01-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (38,2,'2020-02-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (39,2,'2020-03-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (40,2,'2020-04-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (41,2,'2020-05-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (42,2,'2020-06-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (43,2,'2020-07-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (44,2,'2020-08-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (45,2,'2020-09-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (46,2,'2020-10-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (47,2,'2020-11-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (48,2,'2020-12-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (49,2,'2021-01-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (50,2,'2021-02-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (51,2,'2021-03-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (52,2,'2021-04-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (53,2,'2021-05-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (54,2,'2021-06-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (55,2,'2021-07-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (56,2,'2021-08-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (57,2,'2021-09-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (58,2,'2021-10-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (59,2,'2021-11-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (60,2,'2021-12-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (61,2,'2022-01-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (62,2,'2022-02-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (63,2,'2022-03-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (64,2,'2022-04-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (65,2,'2022-05-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (66,2,'2022-06-01');
INSERT INTO periodo (`id_periodo`,`id_presidente`,`fecha`) VALUES (67,2,'2022-07-01');

################################################################## TABLA DIVISIONES ##################################################################
INSERT INTO divisiones (`id_division`,`division`) VALUES (1,'Alimentos y bebidas no alcoholicas');
INSERT INTO divisiones (`id_division`,`division`) VALUES (2,'Bebidas alcoholicas y tabaco');
INSERT INTO divisiones (`id_division`,`division`) VALUES (3,'Prendas de vestir y calzado');
INSERT INTO divisiones (`id_division`,`division`) VALUES (4,'Vivienda, agua, electricidad y otros combustibles');
INSERT INTO divisiones (`id_division`,`division`) VALUES (5,'Equipamiento y mantenimiento del hogar');
INSERT INTO divisiones (`id_division`,`division`) VALUES (6,'Salud');
INSERT INTO divisiones (`id_division`,`division`) VALUES (7,'Transporte');
INSERT INTO divisiones (`id_division`,`division`) VALUES (8,'Comunicacion');
INSERT INTO divisiones (`id_division`,`division`) VALUES (9,'Recreacion y cultura');
INSERT INTO divisiones (`id_division`,`division`) VALUES (10,'Educacion');
INSERT INTO divisiones (`id_division`,`division`) VALUES (11,'Restaurantes y hoteles');
INSERT INTO divisiones (`id_division`,`division`) VALUES (12,'Bienes y servicios varios');

################################################################## TABLA APERTURAS ##################################################################
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (1,'Alimentos',1);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (2,'Bebidas no alcoholicas',1);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (3,'Bebidas alcoholicas',2);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (4,'Tabaco',2);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (5,'Prendas de vestir y materiales',3);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (6,'Calzado',3);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (7,'Alquiler de la vivienda y gastos conexos',4);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (8,'Mantenimiento y reparacion de la vivienda',4);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (9,'Electricidad, gas y otros combustibles',4);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (10,'Bienes y servicios para la conservacion del hogar',5);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (11,'Productos medicinales, artefactos y equipos para la salud',6);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (12,'Gastos de prepagas',6);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (13,'Adquisicion de vehiculos',7);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (14,'Funcionamiento de equipos de transporte personal',7);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (15,'Transporte publico',7);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (16,'Servicios  de telefonia e internet',8);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (17,'Equipos audiovisuales, fotograficos y de procesamiento de la informacion',9);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (18,'Servicios recreativos y culturales',9);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (19,'Periodicos, diarios, revistas, libros y articulos de papeleria',9);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (20,'Educacion',10);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (21,'Restaurantes y comidas fuera del hogar',11);
INSERT INTO aperturas (`id_apertura`,`apertura`,`id_division`) VALUES (22,'Cuidado personal',12);

#################################################################### TABLA IPC ####################################################################
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (1,1.6,0,1,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (2,2.1,0,2,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (3,2.4,0,3,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (4,2.7,0,4,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (5,1.4,0,5,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (6,1.2,0,6,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (7,1.7,0,7,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (8,1.4,0,8,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (9,1.9,0,9,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (10,1.5,0,10,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (11,1.4,0,11,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (12,3.1,24.8,12,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (13,1.8,25,13,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (14,2.4,25.4,14,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (15,2.3,25.4,15,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (16,2.7,25.5,16,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (17,2.1,26.3,17,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (18,3.7,29.5,18,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (19,3.1,31.2,19,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (20,3.9,34.4,20,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (21,6.5,40.5,21,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (22,5.4,45.9,22,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (23,3.2,48.5,23,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (24,2.6,47.6,24,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (25,2.9,49.3,25,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (26,3.8,51.3,26,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (27,4.7,54.7,27,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (28,3.4,55.8,28,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (29,3.1,57.3,29,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (30,2.7,55.8,30,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (31,2.2,54.4,31,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (32,4,54.5,32,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (33,5.9,53.5,33,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (34,3.3,50.5,34,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (35,4.3,52.1,35,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (36,3.7,53.8,36,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (37,2.3,52.9,37,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (38,2,50.3,38,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (39,3.3,48.4,39,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (40,1.5,45.6,40,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (41,1.5,43.4,41,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (42,2.2,42.8,42,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (43,1.9,42.4,43,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (44,2.7,40.7,44,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (45,2.8,36.6,45,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (46,3.8,37.2,46,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (47,3.2,35.8,47,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (48,4,36.1,48,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (49,4,38.5,49,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (50,3.6,40.7,50,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (51,4.8,42.6,51,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (52,4.1,46.3,52,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (53,3.3,48.8,53,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (54,3.2,50.2,54,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (55,3,51.8,55,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (56,2.5,51.4,56,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (57,3.5,52.5,57,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (58,3.5,52.1,58,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (59,2.5,51.2,59,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (60,3.8,50.9,60,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (61,3.9,50.7,61,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (62,4.7,52.3,62,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (63,6.7,55.1,63,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (64,6,58,64,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (65,5.1,60.7,65,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (66,1.3,0,1,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (67,2.5,0,2,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (68,2.4,0,3,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (69,2.6,0,4,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (70,1.3,0,5,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (71,1.4,0,6,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (72,1.7,0,7,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (73,1.5,0,8,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (74,2,0,9,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (75,1.3,0,10,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (76,1.2,0,11,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (77,3.4,25,12,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (78,1.6,25.4,13,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (79,2.6,25.5,14,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (80,2.5,25.6,15,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (81,2.6,25.6,16,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (82,1.9,26.4,17,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (83,3.9,29.5,18,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (84,2.8,30.9,19,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (85,4.1,34.2,20,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (86,6.6,40.3,21,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (87,5.1,45.5,22,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (88,2.9,48,23,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (89,2.8,47.1,24,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (90,2.8,48.9,25,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (91,3.8,50.7,26,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (92,4.8,54.1,27,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (93,3.2,55.1,28,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (94,3,56.8,29,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (95,2.6,54.8,30,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (96,2.1,53.9,31,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (97,3.9,53.6,32,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (98,5.8,52.4,33,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (99,3.2,49.7,34,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (100,4.1,51.4,35,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (101,3.8,52.9,36,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (102,1.9,51.5,37,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (103,1.8,48.6,38,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (104,3.6,46.9,39,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (105,1.4,44.2,40,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (106,1.5,42.1,41,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (107,2,41.3,42,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (108,1.6,40.6,43,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (109,2.8,39.2,44,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (110,2.8,35.2,45,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (111,3.6,35.7,46,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (112,3,34.2,47,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (113,3.7,34.1,48,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (114,3.3,35.9,49,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (115,3.6,38.3,50,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (116,5.2,40.4,51,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (117,4.1,44.2,52,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (118,3.4,46.8,53,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (119,3.1,48.3,54,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (120,3.1,50.4,55,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (121,2.6,50.1,56,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (122,3.8,51.7,57,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (123,3.8,52,58,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (124,2.3,50.9,59,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (125,4.1,51.4,60,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (126,3.9,52.4,61,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (127,4.6,53.8,62,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (128,6.7,55.9,63,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (129,6.2,59,64,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (130,4.8,61.2,65,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (131,5.3,64,66,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (132,7.4,71,67,1);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (133,5.5,65,66,2);
INSERT INTO ipc (`id_ipc`,`valor_ipc_intermensual`,`valor_ipc_interanual`,`id_periodo`,`id_region`) VALUES (134,7.4,71.8,67,2);

################################################################# TABLA IPC_DIVISIONES ################################################################
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1,1.3,1,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (2,1.8,1,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (3,2.8,1,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (4,2.2,1,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (5,1.3,1,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (6,0.9,1,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (7,1.1,1,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (8,2.1,1,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (9,1.8,1,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (10,1.5,1,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (11,1.2,1,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (12,0.7,1,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (13,2.1,1,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (14,2.2,1,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (15,2.3,1,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (16,1.2,1,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (17,3.3,1,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (18,5.2,1,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (19,4,1,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (20,4,1,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (21,7,1,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (22,5.9,1,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (23,3.4,1,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (24,1.7,1,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (25,3.4,1,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (26,5.7,1,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (27,6,1,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (28,2.5,1,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (29,2.4,1,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (30,2.6,1,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (31,2.3,1,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (32,4.5,1,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (33,5.7,1,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (34,2.5,1,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (35,5.3,1,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (36,3.1,1,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (37,4.7,1,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (38,2.7,1,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (39,3.9,1,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (40,3.2,1,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (41,0.7,1,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (42,1,1,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (43,1.3,1,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (44,3.5,1,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (45,3,1,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (46,4.8,1,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (47,2.7,1,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (48,4.4,1,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (49,4.8,1,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (50,3.8,1,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (51,4.6,1,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (52,4.3,1,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (53,3.1,1,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (54,3.2,1,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (55,3.4,1,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (56,1.5,1,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (57,2.9,1,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (58,3.4,1,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (59,2.1,1,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (60,4.3,1,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (61,4.9,1,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (62,7.5,1,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (63,7.2,1,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (64,5.9,1,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (65,4.4,1,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (66,0.9,2,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (67,4.3,2,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (68,1.9,2,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (69,2.4,2,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (70,1.7,2,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (71,0.7,2,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (72,3,2,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (73,1.3,2,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (74,0.7,2,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (75,3,2,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (76,1.1,2,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (77,0.5,2,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (78,2.3,2,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (79,1.7,2,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (80,0.7,2,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (81,1.3,2,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (82,1.6,2,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (83,0.9,2,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (84,2.6,2,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (85,1.4,2,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (86,4.4,2,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (87,2.3,2,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (88,4.6,2,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (89,1.4,2,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (90,3.5,2,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (91,2.4,2,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (92,4.1,2,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (93,1,2,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (94,2.2,2,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (95,2.7,2,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (96,0.9,2,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (97,4.4,2,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (98,5.7,2,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (99,6.2,2,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (100,5.6,2,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (101,3.1,2,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (102,4.3,2,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (103,1.3,2,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (104,2.9,2,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (105,1.4,2,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (106,0.1,2,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (107,3.8,2,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (108,1.4,2,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (109,1.3,2,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (110,4.3,2,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (111,1.9,2,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (112,3,2,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (113,3.4,2,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (114,4.5,2,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (115,3.6,2,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (116,6.4,2,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (117,3.6,2,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (118,1.6,2,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (119,5.5,2,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (120,3.1,2,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (121,2,2,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (122,5.9,2,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (123,2.2,2,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (124,1.1,2,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (125,5.4,2,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (126,1.8,2,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (127,2.7,2,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (128,5.7,2,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (129,3.3,2,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (130,5.7,2,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (131,-1,3,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (132,-0.2,3,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (133,3.4,3,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (134,4.5,3,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (135,1.7,3,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (136,0.9,3,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (137,-1.2,3,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (138,-0.6,3,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (139,3.8,3,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (140,2.1,3,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (141,1.3,3,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (142,0.8,3,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (143,-0.8,3,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (144,-0.6,3,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (145,4.4,3,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (146,4,3,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (147,2,3,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (148,1.9,3,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (149,-0.1,3,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (150,0.3,3,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (151,9.8,3,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (152,5,3,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (153,2.3,3,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (154,1.1,3,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (155,-0.6,3,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (156,1,3,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (157,6.6,3,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (158,6.2,3,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (159,3.4,3,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (160,1.9,3,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (161,0.3,3,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (162,3.1,3,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (163,9.5,3,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (164,4.7,3,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (165,4.4,3,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (166,2.4,3,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (167,1.1,3,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (168,2.4,3,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (169,4.2,3,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (170,1.5,3,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (171,7.5,3,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (172,6.6,3,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (173,3.3,3,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (174,2.2,3,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (175,5.8,3,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (176,6.2,3,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (177,3.7,3,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (178,3.6,3,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (179,1.4,3,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (180,2.8,3,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (181,10.8,3,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (182,6,3,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (183,2.1,3,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (184,3.5,3,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (185,1.2,3,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (186,3.4,3,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (187,6,3,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (188,5.1,3,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (189,4.1,3,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (190,4.8,3,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (191,2.4,3,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (192,3.4,3,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (193,10.9,3,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (194,9.9,3,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (195,5.8,3,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (196,1.5,4,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (197,5.4,4,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (198,3.6,4,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (199,5.9,4,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (200,1.8,4,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (201,1.8,4,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (202,2,4,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (203,2.2,4,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (204,2,4,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (205,0.9,4,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (206,1.2,4,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (207,17.8,4,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (208,1,4,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (209,3.8,4,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (210,0.6,4,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (211,8,4,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (212,-0.7,4,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (213,2.7,4,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (214,1,4,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (215,6.2,4,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (216,2.3,4,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (217,8.8,4,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (218,2.1,4,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (219,3,4,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (220,3.1,4,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (221,6.4,4,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (222,2.8,4,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (223,2.9,4,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (224,4,4,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (225,2.7,4,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (226,2.2,4,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (227,2.1,4,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (228,2,4,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (229,1.9,4,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (230,1.5,4,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (231,2.1,4,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (232,0.6,4,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (233,0.6,4,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (234,1.4,4,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (235,0,4,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (236,0.1,4,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (237,0.9,4,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (238,1,4,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (239,2.3,4,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (240,1.5,4,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (241,2.3,4,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (242,2.5,4,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (243,3,4,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (244,1.1,4,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (245,2,4,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (246,1.3,4,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (247,3.5,4,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (248,2,4,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (249,2.5,4,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (250,2.9,4,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (251,1.1,4,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (252,1.9,4,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (253,2.5,4,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (254,2.2,4,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (255,2.1,4,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (256,1.8,4,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (257,2.8,4,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (258,7.7,4,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (259,4.6,4,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (260,3.6,4,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (261,2.4,6,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (262,2.7,6,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (263,2,6,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (264,1.8,6,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (265,1.5,6,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (266,1.5,6,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (267,3.3,6,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (268,2.5,6,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (269,2.4,6,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (270,1.1,6,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (271,1.3,6,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (272,2.4,6,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (273,1.8,6,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (274,2.3,6,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (275,1.3,6,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (276,1.8,6,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (277,2.2,6,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (278,4.3,6,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (279,2.8,6,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (280,4.1,6,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (281,4.5,6,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (282,5.5,6,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (283,5.7,6,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (284,5.2,6,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (285,2.9,6,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (286,3.2,6,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (287,3.2,6,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (288,3.5,6,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (289,5.1,6,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (290,3.6,6,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (291,4.1,6,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (292,5.2,6,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (293,8.3,6,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (294,4.7,6,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (295,6.3,6,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (296,5.6,6,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (297,-2,6,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (298,0.4,6,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (299,2.7,6,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (300,1.2,6,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (301,1.1,6,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (302,2.2,6,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (303,2.2,6,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (304,2.4,6,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (305,3.5,6,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (306,3.1,6,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (307,3.7,6,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (308,5.2,6,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (309,3.4,6,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (310,3.5,6,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (311,4,6,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (312,3.7,6,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (313,4.8,6,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (314,3.2,6,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (315,3.8,6,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (316,4.2,6,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (317,4.3,6,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (318,4.7,6,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (319,2.4,6,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (320,0.5,6,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (321,4.1,6,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (322,3.6,6,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (323,5,6,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (324,6.4,6,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (325,6.2,6,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (326,2.1,7,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (327,1.9,7,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (328,1.2,7,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (329,0.6,7,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (330,0.9,7,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (331,0.7,7,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (332,2.2,7,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (333,1.1,7,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (334,0.8,7,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (335,1.3,7,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (336,3,7,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (337,3.2,7,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (338,2.2,7,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (339,4.5,7,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (340,1.8,7,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (341,4,7,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (342,1.9,7,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (343,5.9,7,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (344,5.2,7,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (345,4,7,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (346,10.4,7,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (347,7.6,7,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (348,2.7,7,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (349,2.4,7,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (350,2.5,7,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (351,2.2,7,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (352,4.2,7,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (353,4.4,7,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (354,3.5,7,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (355,1.6,7,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (356,1.1,7,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (357,4,7,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (358,4.7,7,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (359,3.5,7,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (360,4.6,7,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (361,5,7,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (362,1.5,7,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (363,1.6,7,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (364,1.6,7,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (365,1.3,7,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (366,1.1,7,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (367,1.8,7,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (368,1.8,7,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (369,2.8,7,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (370,3.6,7,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (371,4.2,7,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (372,3.6,7,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (373,4.9,7,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (374,4.6,7,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (375,4.8,7,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (376,4.2,7,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (377,5.7,7,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (378,6,7,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (379,3.3,7,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (380,2.3,7,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (381,2.4,7,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (382,3,7,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (383,3.1,7,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (384,2.2,7,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (385,4.9,7,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (386,2.8,7,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (387,4.9,7,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (388,5.5,7,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (389,5.3,7,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (390,6.1,7,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (391,3.1,8,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (392,4.1,8,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (393,3.2,8,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (394,6.8,8,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (395,0.3,8,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (396,1.2,8,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (397,0.9,8,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (398,1.5,8,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (399,1.1,8,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (400,5.3,8,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (401,0.7,8,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (402,1.7,8,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (403,1.9,8,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (404,9.1,8,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (405,2.7,8,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (406,1,8,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (407,3.9,8,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (408,0.4,8,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (409,0.6,8,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (410,12.4,8,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (411,2.1,8,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (412,0.7,8,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (413,3,8,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (414,7.7,8,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (415,7.4,8,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (416,1.1,8,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (417,4.4,8,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (418,3.5,8,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (419,2,8,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (420,7.1,8,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (421,0.2,8,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (422,1.2,8,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (423,6.7,8,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (424,0.5,8,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (425,7.4,8,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (426,9.6,8,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (427,0.1,8,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (428,2.3,8,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (429,8.3,8,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (430,-4.1,8,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (431,0.3,8,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (432,0.4,8,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (433,0.7,8,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (434,0.3,8,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (435,0.1,8,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (436,-0.1,8,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (437,-0.6,8,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (438,0,8,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (439,15.1,8,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (440,1.8,8,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (441,0.1,8,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (442,0.5,8,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (443,1,8,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (444,7,8,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (445,0.4,8,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (446,-0.6,8,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (447,2.8,8,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (448,1.1,8,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (449,0.8,8,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (450,1.8,8,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (451,7.5,8,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (452,1.5,8,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (453,3.4,8,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (454,3.7,8,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (455,3.1,8,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (456,0.8,10,1,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (457,3.2,10,2,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (458,10.9,10,3,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (459,2.9,10,4,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (460,1.7,10,5,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (461,1,10,6,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (462,0.8,10,7,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (463,2,10,8,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (464,3.7,10,9,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (465,0.8,10,10,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (466,0.3,10,11,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (467,0,10,12,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (468,0.6,10,13,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (469,1.9,10,14,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (470,13.8,10,15,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (471,0.8,10,16,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (472,0.9,10,17,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (473,1.2,10,18,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (474,1.8,10,19,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (475,1.9,10,20,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (476,1.6,10,21,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (477,2.1,10,22,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (478,1.2,10,23,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (479,1,10,24,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (480,0.6,10,25,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (481,1.7,10,26,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (482,17.9,10,27,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (483,1.5,10,28,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (484,3.3,10,29,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (485,1.8,10,30,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (486,2.1,10,31,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (487,2.5,10,32,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (488,1,10,33,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (489,1.6,10,34,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (490,4.4,10,35,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (491,2,10,36,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (492,0.5,10,37,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (493,1.4,10,38,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (494,17.5,10,39,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (495,-1.5,10,40,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (496,-0.4,10,41,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (497,0.4,10,42,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (498,0.1,10,43,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (499,0.8,10,44,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (500,0.3,10,45,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (501,0.1,10,46,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (502,0.4,10,47,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (503,0,10,48,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (504,0.6,10,49,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (505,0.1,10,50,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (506,28.5,10,51,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (507,2.5,10,52,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (508,2.3,10,53,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (509,1.1,10,54,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (510,2.5,10,55,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (511,4.2,10,56,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (512,3.1,10,57,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (513,1.4,10,58,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (514,0.8,10,59,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (515,1,10,60,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (516,0.8,10,61,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (517,2.6,10,62,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (518,23.6,10,63,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (519,3.7,10,64,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (520,3.2,10,65,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (521,1.3,1,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (522,1.8,1,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (523,3.5,1,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (524,2.3,1,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (525,1.1,1,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (526,1.3,1,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (527,1.2,1,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (528,2.2,1,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (529,1.9,1,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (530,1.5,1,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (531,1,1,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (532,0.5,1,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (533,2.6,1,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (534,2.4,1,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (535,2,1,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (536,0.8,1,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (537,3.7,1,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (538,4.7,1,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (539,4,1,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (540,3.5,1,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (541,7.3,1,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (542,6.1,1,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (543,3.1,1,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (544,1.6,1,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (545,3.8,1,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (546,5.5,1,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (547,5.8,1,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (548,2,1,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (549,2.6,1,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (550,2.7,1,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (551,2.5,1,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (552,4.3,1,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (553,5.7,1,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (554,2.5,1,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (555,5.7,1,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (556,2.8,1,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (557,4.6,1,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (558,2.4,1,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (559,3.8,1,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (560,3.2,1,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (561,0.3,1,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (562,1.2,1,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (563,1.3,1,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (564,3.7,1,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (565,2.8,1,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (566,4.8,1,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (567,2.1,1,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (568,2.8,1,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (569,4,1,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (570,4,1,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (571,4.9,1,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (572,4.7,1,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (573,3.1,1,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (574,3.4,1,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (575,3.6,1,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (576,1.4,1,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (577,3.3,1,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (578,3.6,1,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (579,1.8,1,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (580,3.9,1,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (581,5.2,1,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (582,8.6,1,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (583,6.1,1,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (584,5.9,1,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (585,4.4,1,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (586,0.5,2,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (587,5,2,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (588,1.5,2,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (589,2.3,2,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (590,1.9,2,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (591,0.5,2,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (592,3.4,2,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (593,1.3,2,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (594,0.7,2,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (595,3.2,2,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (596,1.1,2,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (597,0.6,2,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (598,2.1,2,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (599,1.7,2,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (600,0.7,2,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (601,1.1,2,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (602,1.4,2,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (603,1.1,2,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (604,2.6,2,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (605,1.1,2,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (606,4.4,2,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (607,2.5,2,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (608,4.9,2,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (609,1.3,2,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (610,3.8,2,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (611,2.3,2,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (612,4.1,2,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (613,1.1,2,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (614,2.1,2,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (615,2.8,2,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (616,1.2,2,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (617,4.4,2,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (618,5.9,2,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (619,6.4,2,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (620,5.4,2,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (621,3.1,2,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (622,4.5,2,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (623,1.2,2,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (624,3.2,2,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (625,1,2,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (626,0,2,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (627,3.7,2,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (628,1.6,2,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (629,1.5,2,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (630,4.5,2,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (631,2.1,2,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (632,2.4,2,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (633,2.8,2,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (634,4.1,2,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (635,3.6,2,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (636,6.3,2,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (637,3.8,2,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (638,1.1,2,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (639,5.7,2,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (640,3.5,2,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (641,1.8,2,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (642,6.2,2,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (643,1.4,2,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (644,0.9,2,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (645,5.2,2,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (646,1.6,2,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (647,2.7,2,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (648,6,2,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (649,3.4,2,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (650,5.5,2,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (651,-2.1,3,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (652,-0.5,3,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (653,4.8,3,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (654,5.1,3,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (655,0.6,3,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (656,0.6,3,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (657,-1.8,3,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (658,-0.9,3,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (659,5.9,3,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (660,1.6,3,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (661,1.1,3,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (662,0.7,3,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (663,-1.8,3,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (664,-0.6,3,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (665,6.8,3,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (666,3.3,3,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (667,1.7,3,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (668,2.1,3,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (669,-0.7,3,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (670,0.8,3,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (671,13.1,3,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (672,4.9,3,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (673,1.7,3,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (674,0.4,3,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (675,-0.9,3,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (676,1,3,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (677,8.4,3,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (678,6.2,3,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (679,2.5,3,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (680,1.3,3,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (681,0,3,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (682,3.1,3,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (683,11.7,3,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (684,4.6,3,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (685,4.1,3,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (686,2,3,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (687,0.6,3,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (688,2.3,3,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (689,4.1,3,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (690,1.4,3,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (691,10.1,3,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (692,5.2,3,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (693,1.4,3,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (694,2.6,3,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (695,7.5,3,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (696,6.2,3,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (697,3,3,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (698,4,3,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (699,0.1,3,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (700,2.3,3,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (701,16.2,3,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (702,4.9,3,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (703,0.2,3,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (704,3.9,3,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (705,0.6,3,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (706,3.9,3,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (707,6.7,3,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (708,5.8,3,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (709,3.3,3,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (710,5.4,3,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (711,2,3,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (712,2.9,3,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (713,13.6,3,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (714,10.7,3,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (715,5,3,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (716,0,4,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (717,8.4,4,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (718,2.2,4,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (719,4.6,4,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (720,1.9,4,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (721,2.4,4,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (722,2.5,4,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (723,2.6,4,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (724,0.8,4,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (725,0.5,4,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (726,1,4,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (727,18.9,4,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (728,-1.6,4,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (729,4.9,4,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (730,1,4,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (731,6.7,4,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (732,-1.3,4,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (733,3.9,4,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (734,0,4,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (735,8.6,4,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (736,0.7,4,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (737,7.1,4,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (738,1,4,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (739,4.7,4,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (740,1.4,4,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (741,7.1,4,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (742,3.6,4,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (743,3.4,4,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (744,3.5,4,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (745,2.6,4,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (746,2.4,4,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (747,1.6,4,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (748,1.6,4,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (749,2,4,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (750,1.7,4,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (751,2.7,4,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (752,-0.6,4,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (753,1.2,4,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (754,2,4,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (755,0.2,4,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (756,0.3,4,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (757,0.7,4,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (758,0.5,4,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (759,2.5,4,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (760,1.1,4,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (761,2.2,4,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (762,2.5,4,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (763,4.1,4,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (764,-1,4,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (765,2.2,4,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (766,1,4,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (767,4.1,4,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (768,2.7,4,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (769,2.2,4,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (770,3.6,4,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (771,2.9,4,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (772,1.4,4,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (773,2.9,4,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (774,1.8,4,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (775,2.5,4,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (776,1,4,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (777,2.5,4,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (778,8.4,4,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (779,4.8,4,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (780,2.8,4,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (781,1.4,6,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (782,3.3,6,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (783,1.9,6,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (784,1.4,6,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (785,1.5,6,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (786,1.3,6,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (787,3.4,6,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (788,2.9,6,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (789,2.4,6,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (790,0.8,6,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (791,1.2,6,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (792,2.9,6,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (793,1.9,6,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (794,2.7,6,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (795,1,6,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (796,1.5,6,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (797,2.3,6,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (798,4.8,6,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (799,2.4,6,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (800,5.1,6,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (801,4.3,6,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (802,5.8,6,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (803,3.4,6,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (804,6,6,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (805,2.2,6,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (806,3.6,6,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (807,2.8,6,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (808,3.1,6,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (809,5.5,6,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (810,2.7,6,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (811,3.9,6,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (812,5.4,6,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (813,7.6,6,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (814,4.6,6,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (815,5.8,6,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (816,6.4,6,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (817,-2.3,6,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (818,0.3,6,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (819,2.6,6,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (820,0.9,6,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (821,0.8,6,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (822,1.5,6,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (823,1.7,6,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (824,2.3,6,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (825,2.9,6,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (826,2.5,6,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (827,3.4,6,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (828,5.8,6,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (829,3.2,6,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (830,2.9,6,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (831,4,6,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (832,3.8,6,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (833,5.3,6,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (834,2.2,6,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (835,2.9,6,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (836,4.7,6,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (837,4.7,6,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (838,5.7,6,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (839,2.1,6,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (840,0.4,6,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (841,4.9,6,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (842,3.1,6,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (843,5.5,6,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (844,6.2,6,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (845,6.1,6,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (846,1.8,7,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (847,1.8,7,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (848,1,7,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (849,0.5,7,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (850,1.1,7,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (851,0.3,7,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (852,1.4,7,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (853,1.1,7,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (854,0.9,7,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (855,0.8,7,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (856,2.7,7,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (857,2.9,7,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (858,2.1,7,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (859,4.5,7,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (860,1.3,7,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (861,5.3,7,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (862,2,7,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (863,6.5,7,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (864,4.3,7,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (865,3.3,7,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (866,10.6,7,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (867,7.1,7,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (868,3,7,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (869,3.1,7,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (870,3.3,7,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (871,2.6,7,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (872,4.3,7,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (873,3.9,7,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (874,2.9,7,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (875,2,7,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (876,0,7,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (877,4.2,7,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (878,4.5,7,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (879,2.5,7,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (880,3.7,7,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (881,4.4,7,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (882,0.8,7,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (883,1.4,7,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (884,2.2,7,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (885,1.9,7,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (886,0.2,7,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (887,1.9,7,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (888,1.8,7,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (889,2.8,7,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (890,3.4,7,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (891,4.1,7,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (892,4.1,7,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (893,5,7,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (894,2.9,7,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (895,4.8,7,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (896,3.7,7,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (897,5.1,7,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (898,6.3,7,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (899,3.3,7,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (900,1.5,7,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (901,2.3,7,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (902,3.7,7,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (903,3.2,7,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (904,1.7,7,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (905,6.7,7,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (906,2,7,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (907,4.1,7,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (908,5,7,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (909,6,7,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (910,5.4,7,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (911,3.8,8,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (912,4.1,8,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (913,2.4,8,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (914,6.8,8,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (915,0,8,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (916,1.9,8,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (917,0.5,8,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (918,1.9,8,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (919,0.9,8,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (920,4.8,8,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (921,0.6,8,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (922,2.3,8,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (923,1.9,8,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (924,7.7,8,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (925,2.3,8,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (926,0.7,8,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (927,3.6,8,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (928,0.2,8,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (929,0.4,8,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (930,15.3,8,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (931,1.4,8,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (932,0.2,8,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (933,4.6,8,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (934,6.7,8,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (935,8.2,8,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (936,1.5,8,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (937,4.2,8,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (938,3.3,8,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (939,1.2,8,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (940,7.9,8,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (941,0.2,8,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (942,1.4,8,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (943,6.7,8,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (944,0.1,8,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (945,6.8,8,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (946,10.1,8,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (947,0.1,8,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (948,2.5,8,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (949,8.3,8,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (950,-2.9,8,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (951,0.5,8,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (952,0.4,8,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (953,1.9,8,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (954,0.3,8,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (955,-0.8,8,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (956,-0.5,8,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (957,-1.8,8,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (958,-0.1,8,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (959,16.7,8,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (960,1,8,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (961,0.1,8,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (962,0.5,8,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (963,1.6,8,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (964,7,8,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (965,0.1,8,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (966,-1.2,8,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (967,3.9,8,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (968,1,8,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (969,-0.1,8,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (970,1.5,8,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (971,8.8,8,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (972,1.6,8,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (973,1.9,8,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (974,4.4,8,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (975,3.1,8,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (976,0.5,10,1,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (977,4.4,10,2,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (978,6.7,10,3,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (979,3.9,10,4,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (980,1.9,10,5,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (981,0.7,10,6,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (982,0.7,10,7,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (983,1.5,10,8,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (984,5.2,10,9,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (985,0.7,10,10,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (986,0.4,10,11,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (987,0,10,12,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (988,0.1,10,13,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (989,1.5,10,14,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (990,14.7,10,15,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (991,0.6,10,16,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (992,0.3,10,17,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (993,1.5,10,18,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (994,2.2,10,19,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (995,2,10,20,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (996,2.2,10,21,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (997,2.9,10,22,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (998,1.1,10,23,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (999,2.1,10,24,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1000,0.3,10,25,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1001,2,10,26,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1002,17.7,10,27,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1003,1,10,28,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1004,5.3,10,29,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1005,2.1,10,30,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1006,2.2,10,31,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1007,1.9,10,32,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1008,0.9,10,33,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1009,1.3,10,34,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1010,7.5,10,35,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1011,3.7,10,36,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1012,1.1,10,37,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1013,0.8,10,38,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1014,20,10,39,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1015,-2.2,10,40,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1016,-2,10,41,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1017,-0.5,10,42,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1018,-0.5,10,43,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1019,1.1,10,44,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1020,0.2,10,45,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1021,0,10,46,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1022,0.5,10,47,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1023,0,10,48,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1024,0.7,10,49,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1025,0,10,50,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1026,30.1,10,51,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1027,3.1,10,52,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1028,2.7,10,53,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1029,1,10,54,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1030,3.9,10,55,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1031,4.4,10,56,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1032,3.7,10,57,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1033,1,10,58,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1034,0.4,10,59,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1035,1.6,10,60,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1036,0.7,10,61,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1037,2,10,62,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1038,22.1,10,63,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1039,3.5,10,64,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1040,3.4,10,65,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1041,4.6,1,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1042,6.7,2,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1043,5.8,3,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1044,6.8,4,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1045,7.4,6,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1046,4.7,7,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1047,0.4,8,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1048,2,10,66,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1049,6,1,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1050,6.4,2,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1051,8.5,3,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1052,4.6,4,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1053,6.8,6,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1054,5.5,7,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1055,5.5,8,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1056,6.1,10,67,1);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1057,5,1,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1058,7,2,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1059,5.5,3,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1060,7.5,4,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1061,7.9,6,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1062,3.4,7,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1063,0.2,8,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1064,2.2,10,66,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1065,5.9,1,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1066,6.5,2,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1067,7.4,3,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1068,4.7,4,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1069,7,6,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1070,4,7,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1071,4.7,8,67,2);
INSERT INTO ipc_divisiones (`id_ipc_division`,`valor_ipc_division`,`id_division`,`id_periodo`,`id_region`) VALUES (1072,7.9,10,67,2);

#################################################################### TABLA IPC_APERTURAS ####################################################################
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1,1.3,1,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (2,2,1,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (3,3.7,1,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (4,2.3,1,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (5,1,1,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (6,1.3,1,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (7,1.1,1,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (8,2.3,1,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (9,1.7,1,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (10,1.5,1,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (11,0.7,1,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (12,0.4,1,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (13,2.7,1,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (14,2.5,1,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (15,2,1,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (16,0.7,1,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (17,4,1,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (18,5.1,1,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (19,4.3,1,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (20,3.7,1,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (21,6.9,1,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (22,5.9,1,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (23,2.9,1,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (24,1.3,1,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (25,3.6,1,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (26,5.9,1,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (27,6.3,1,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (28,2,1,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (29,2.4,1,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (30,2.7,1,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (31,2.6,1,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (32,4.4,1,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (33,5.6,1,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (34,2.1,1,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (35,5.9,1,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (36,2.7,1,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (37,4.8,1,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (38,2.3,1,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (39,4.1,1,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (40,3.6,1,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (41,0.5,1,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (42,1.2,1,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (43,1.2,1,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (44,3.7,1,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (45,3.3,1,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (46,5,1,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (47,2.2,1,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (48,3.1,1,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (49,4.2,1,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (50,4,1,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (51,5.4,1,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (52,4.7,1,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (53,3,1,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (54,3.4,1,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (55,3.4,1,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (56,1.2,1,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (57,3.3,1,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (58,3.6,1,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (59,1.8,1,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (60,4,1,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (61,5.4,1,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (62,9.1,1,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (63,6.2,1,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (64,6.1,1,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (65,4.3,1,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (66,1.5,2,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (67,0.7,2,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (68,2.3,2,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (69,2,2,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (70,1.6,2,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (71,1,2,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (72,2.2,2,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (73,1.5,2,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (74,3.2,2,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (75,2.2,2,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (76,2.8,2,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (77,1.3,2,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (78,1.9,2,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (79,2,2,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (80,1.6,2,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (81,1.4,2,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (82,1.6,2,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (83,2.5,2,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (84,1.8,2,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (85,1.7,2,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (86,9.9,2,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (87,7.3,2,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (88,4.6,2,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (89,3.5,2,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (90,4.9,2,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (91,3,2,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (92,2.8,2,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (93,2.1,2,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (94,4.3,2,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (95,2.3,2,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (96,1.8,2,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (97,3.6,2,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (98,6.4,2,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (99,5,2,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (100,4.2,2,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (101,3.3,2,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (102,3.3,2,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (103,3.1,2,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (104,1.8,2,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (105,0.7,2,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (106,-1.2,2,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (107,1.2,2,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (108,2.3,2,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (109,3.9,2,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (110,-0.9,2,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (111,3.3,2,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (112,1.9,2,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (113,0.7,2,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (114,2.5,2,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (115,3.6,2,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (116,0.8,2,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (117,4.6,2,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (118,3.3,2,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (119,3.3,2,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (120,5.3,2,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (121,3.3,2,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (122,2.7,2,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (123,3.5,2,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (124,1.7,2,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (125,2.9,2,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (126,3.7,2,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (127,4.2,2,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (128,5,2,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (129,4.6,2,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (130,5.3,2,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (131,1.2,3,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (132,1.9,3,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (133,2.1,3,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (134,1.6,3,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (135,2.6,3,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (136,1.1,3,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (137,3.4,3,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (138,2.2,3,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (139,1.6,3,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (140,2.8,3,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (141,2.1,3,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (142,1.3,3,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (143,1.1,3,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (144,0.9,3,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (145,1.4,3,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (146,0.9,3,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (147,1.7,3,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (148,1,3,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (149,1.5,3,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (150,0.2,3,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (151,3.4,3,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (152,4.9,3,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (153,4.5,3,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (154,1.8,3,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (155,2.2,3,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (156,2,3,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (157,1.1,3,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (158,1.6,3,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (159,1.2,3,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (160,2.1,3,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (161,2.8,3,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (162,1.7,3,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (163,3.4,3,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (164,6.3,3,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (165,4.3,3,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (166,2.5,3,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (167,2.9,3,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (168,0.8,3,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (169,1.7,3,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (170,-0.8,3,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (171,-0.1,3,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (172,0.4,3,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (173,2.2,3,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (174,4.1,3,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (175,0.8,3,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (176,4.9,3,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (177,1.6,3,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (178,1.1,3,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (179,2.8,3,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (180,5.1,3,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (181,5.1,3,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (182,9.2,3,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (183,3.1,3,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (184,5.5,3,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (185,8.1,3,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (186,4.6,3,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (187,5.6,3,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (188,2.8,3,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (189,2.3,3,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (190,4,3,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (191,3.4,3,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (192,4.5,3,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (193,6.1,3,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (194,8,3,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (195,6.2,3,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (196,0,4,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (197,7.3,4,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (198,1.2,4,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (199,2.8,4,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (200,1.4,4,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (201,0,4,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (202,3.3,4,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (203,0.6,4,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (204,0,4,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (205,3.5,4,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (206,0.3,4,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (207,0,4,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (208,2.9,4,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (209,2.4,4,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (210,0.1,4,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (211,1.3,4,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (212,1.1,4,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (213,1.2,4,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (214,3.5,4,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (215,1.7,4,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (216,5,4,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (217,0.8,4,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (218,5.3,4,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (219,1,4,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (220,5,4,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (221,2.5,4,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (222,6.4,4,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (223,0.8,4,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (224,2.8,4,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (225,3.2,4,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (226,0,4,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (227,6.3,4,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (228,7.6,4,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (229,6.5,4,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (230,6.2,4,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (231,3.4,4,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (232,5.5,4,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (233,1.4,4,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (234,4.1,4,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (235,2.1,4,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (236,0,4,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (237,5.6,4,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (238,1.2,4,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (239,0,4,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (240,6.6,4,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (241,0.5,4,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (242,2.9,4,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (243,3.8,4,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (244,4.8,4,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (245,2.9,4,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (246,6.9,4,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (247,0.9,4,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (248,0,4,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (249,5.9,4,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (250,0.7,4,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (251,0,4,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (252,6.6,4,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (253,0.5,4,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (254,0,4,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (255,6,4,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (256,0.3,4,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (257,1.4,4,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (258,6,4,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (259,0,4,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (260,4.9,4,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (261,-2.7,5,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (262,-0.8,5,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (263,5.9,5,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (264,5.6,5,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (265,0.7,5,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (266,0.8,5,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (267,-2.6,5,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (268,-1.1,5,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (269,6.5,5,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (270,1.8,5,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (271,0.9,5,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (272,1,5,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (273,-2.2,5,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (274,-0.9,5,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (275,8.5,5,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (276,3.1,5,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (277,1.8,5,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (278,1.8,5,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (279,-1.5,5,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (280,0.7,5,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (281,14.2,5,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (282,4.6,5,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (283,1.5,5,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (284,0,5,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (285,-1.3,5,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (286,0.6,5,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (287,10,5,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (288,5.6,5,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (289,2.3,5,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (290,0.9,5,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (291,-0.7,5,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (292,2.4,5,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (293,13,5,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (294,4.5,5,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (295,4.1,5,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (296,1.7,5,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (297,0.2,5,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (298,2.3,5,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (299,5,5,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (300,0,5,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (301,10.1,5,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (302,5,5,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (303,1.7,5,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (304,2.8,5,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (305,7.8,5,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (306,6.4,5,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (307,2.2,5,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (308,4.3,5,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (309,-0.3,5,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (310,1.8,5,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (311,18.7,5,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (312,5.2,5,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (313,0.5,5,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (314,3.1,5,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (315,0.3,5,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (316,4.2,5,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (317,7,5,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (318,6.3,5,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (319,3.5,5,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (320,4.5,5,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (321,2.2,5,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (322,2.9,5,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (323,14.3,5,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (324,12.5,5,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (325,5.1,5,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (326,-0.5,6,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (327,0.6,6,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (328,1.5,6,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (329,3.4,6,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (330,0.3,6,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (331,0,6,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (332,0.6,6,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (333,-0.4,6,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (334,4.1,6,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (335,0.8,6,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (336,1.8,6,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (337,0,6,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (338,-0.5,6,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (339,0.4,6,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (340,1.9,6,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (341,3.7,6,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (342,1.5,6,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (343,3.1,6,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (344,2,6,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (345,0.9,6,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (346,9.9,6,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (347,5.6,6,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (348,2.4,6,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (349,1.6,6,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (350,0.4,6,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (351,2.1,6,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (352,3.6,6,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (353,8.1,6,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (354,3.1,6,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (355,2.4,6,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (356,2.1,6,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (357,5.1,6,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (358,7.9,6,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (359,4.8,6,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (360,4.4,6,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (361,2.7,6,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (362,1.5,6,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (363,2.4,6,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (364,1.7,6,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (365,0,6,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (366,10.2,6,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (367,5.8,6,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (368,0.4,6,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (369,2,6,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (370,6.5,6,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (371,5.6,6,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (372,5.4,6,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (373,3.2,6,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (374,1.2,6,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (375,3.7,6,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (376,9.2,6,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (377,4,6,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (378,-0.6,6,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (379,6.6,6,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (380,1.7,6,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (381,2.9,6,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (382,6.1,6,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (383,4.4,6,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (384,2.7,6,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (385,8.3,6,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (386,1.4,6,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (387,2.9,6,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (388,11.4,6,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (389,4.7,6,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (390,4.6,6,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (391,-0.7,7,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (392,7.5,7,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (393,-2.6,7,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (394,1.4,7,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (395,1.6,7,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (396,1.7,7,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (397,4.2,7,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (398,4.2,7,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (399,1.4,7,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (400,1,7,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (401,1.7,7,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (402,7.9,7,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (403,-4.1,7,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (404,3.2,7,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (405,1.2,7,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (406,3.4,7,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (407,1.6,7,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (408,5.3,7,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (409,-2,7,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (410,7.1,7,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (411,-1.3,7,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (412,4.2,7,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (413,-1,7,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (414,10.9,7,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (415,0.5,7,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (416,3.3,7,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (417,1.8,7,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (418,1.8,7,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (419,4.8,7,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (420,1.6,7,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (421,4.4,7,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (422,1.6,7,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (423,1.3,7,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (424,3.9,7,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (425,3.8,7,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (426,4.8,7,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (427,-2,7,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (428,2.4,7,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (429,3.9,7,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (430,0.7,7,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (431,-0.1,7,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (432,1,7,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (433,0.5,7,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (434,2.5,7,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (435,0.9,7,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (436,2.2,7,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (437,3.6,7,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (438,7.8,7,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (439,-4.1,7,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (440,3.3,7,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (441,1.7,7,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (442,5.8,7,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (443,2.2,7,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (444,1.8,7,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (445,4.6,7,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (446,5.4,7,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (447,1.6,7,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (448,4.9,7,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (449,1.1,7,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (450,3.6,7,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (451,0,7,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (452,5,7,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (453,3.2,7,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (454,8.4,7,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (455,4.5,7,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (456,3.4,8,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (457,0.2,8,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (458,1.5,8,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (459,2.7,8,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (460,1.1,8,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (461,2.1,8,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (462,1.8,8,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (463,4,8,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (464,1.8,8,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (465,0.1,8,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (466,1.2,8,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (467,1.7,8,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (468,3.6,8,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (469,2.6,8,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (470,2.6,8,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (471,2.9,8,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (472,2.2,8,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (473,3.2,8,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (474,5.6,8,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (475,3.4,8,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (476,9.1,8,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (477,4.3,8,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (478,1.1,8,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (479,1.9,8,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (480,1.9,8,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (481,3.4,8,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (482,1.4,8,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (483,3,8,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (484,3.2,8,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (485,1.9,8,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (486,2.6,8,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (487,6.3,8,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (488,5.5,8,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (489,1.7,8,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (490,3.6,8,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (491,3.8,8,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (492,2.7,8,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (493,2,8,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (494,3.6,8,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (495,2.5,8,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (496,5,8,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (497,2.3,8,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (498,2.5,8,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (499,8.1,8,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (500,2.1,8,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (501,7.5,8,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (502,5.9,8,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (503,3.8,8,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (504,5,8,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (505,5.6,8,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (506,1.6,8,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (507,7,8,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (508,3.5,8,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (509,2,8,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (510,7.8,8,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (511,1.3,8,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (512,2,8,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (513,2.7,8,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (514,6.7,8,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (515,4.2,8,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (516,5.2,8,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (517,0.6,8,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (518,5.2,8,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (519,5.1,8,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (520,3,8,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (521,0,9,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (522,17.6,9,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (523,13,9,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (524,12.3,9,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (525,0.4,9,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (526,0.4,9,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (527,0.5,9,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (528,0.3,9,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (529,-0.2,9,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (530,0,9,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (531,-0.1,9,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (532,51.6,9,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (533,0.1,9,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (534,8.7,9,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (535,0.5,9,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (536,13,9,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (537,-7.2,9,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (538,0.1,9,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (539,0.9,9,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (540,13.9,9,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (541,1.1,9,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (542,12.4,9,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (543,3.3,9,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (544,0,9,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (545,1.3,9,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (546,11.9,9,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (547,6.7,9,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (548,5.7,9,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (549,1.2,9,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (550,1.7,9,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (551,0.6,9,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (552,0.8,9,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (553,1.2,9,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (554,0.4,9,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (555,-0.8,9,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (556,0.6,9,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (557,0,9,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (558,-0.3,9,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (559,-0.4,9,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (560,-1,9,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (561,-0.7,9,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (562,-0.1,9,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (563,-0.1,9,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (564,1,9,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (565,1.3,9,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (566,0.6,9,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (567,0.1,9,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (568,0.1,9,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (569,0.8,9,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (570,-0.3,9,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (571,-0.2,9,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (572,1.1,9,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (573,3.5,9,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (574,3.1,9,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (575,0.6,9,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (576,0.2,9,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (577,0.9,9,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (578,0.4,9,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (579,0.4,9,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (580,-0.1,9,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (581,0.1,9,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (582,-0.3,9,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (583,21.6,9,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (584,-0.4,9,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (585,0.2,9,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (586,2.1,11,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (587,2.3,11,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (588,2.9,11,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (589,2.2,11,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (590,2.7,11,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (591,2.2,11,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (592,2.3,11,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (593,1.5,11,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (594,1.6,11,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (595,1.1,11,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (596,1.9,11,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (597,1.4,11,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (598,2.1,11,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (599,1.9,11,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (600,1.6,11,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (601,2.3,11,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (602,3,11,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (603,4.7,11,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (604,3.8,11,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (605,4.2,11,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (606,8.5,11,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (607,5.6,11,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (608,6.8,11,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (609,6,11,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (610,3.5,11,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (611,2.8,11,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (612,5,11,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (613,5.3,11,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (614,5.2,11,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (615,4.8,11,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (616,3.3,11,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (617,6.1,11,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (618,10.1,11,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (619,5.3,11,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (620,7.9,11,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (621,4.2,11,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (622,-5.1,11,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (623,0.3,11,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (624,3.3,11,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (625,1.6,11,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (626,0.1,11,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (627,2.7,11,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (628,2.8,11,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (629,3.8,11,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (630,5,11,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (631,3.8,11,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (632,5,11,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (633,4.5,11,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (634,4.6,11,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (635,4,11,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (636,4.1,11,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (637,3.8,11,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (638,5.8,11,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (639,3.4,11,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (640,3.8,11,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (641,3.3,11,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (642,3.1,11,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (643,4.5,11,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (644,1.8,11,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (645,0.3,11,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (646,3.6,11,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (647,4.2,11,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (648,5.1,11,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (649,6.7,11,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (650,6.1,11,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (651,0,12,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (652,5.3,12,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (653,0.6,12,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (654,0,12,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (655,0,12,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (656,0,12,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (657,6,12,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (658,4.9,12,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (659,4.5,12,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (660,0.4,12,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (661,0,12,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (662,5.4,12,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (663,0.6,12,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (664,3.6,12,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (665,0,12,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (666,0.4,12,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (667,0,12,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (668,7.5,12,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (669,0,12,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (670,7.9,12,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (671,0,12,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (672,8,12,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (673,0,12,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (674,8.5,12,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (675,0,12,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (676,5,12,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (677,0,12,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (678,0,12,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (679,7.5,12,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (680,0,12,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (681,5.5,12,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (682,5.7,12,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (683,5.5,12,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (684,4,12,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (685,4,12,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (686,12,12,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (687,0,12,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (688,0,12,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (689,0,12,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (690,0,12,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (691,0,12,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (692,0,12,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (693,0,12,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (694,0,12,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (695,0,12,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (696,0,12,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (697,0,12,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (698,10,12,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (699,0,12,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (700,0,12,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (701,3.5,12,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (702,4.5,12,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (703,5.5,12,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (704,0,12,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (705,0,12,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (706,9,12,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (707,9,12,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (708,9,12,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (709,0,12,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (710,0,12,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (711,7.8,12,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (712,1.1,12,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (713,6,12,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (714,6,12,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (715,8,12,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (716,2.8,13,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (717,0.7,13,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (718,-0.5,13,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (719,0.4,13,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (720,2.1,13,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (721,1.2,13,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (722,-1.3,13,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (723,0.4,13,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (724,2.4,13,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (725,0.8,13,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (726,2.8,13,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (727,2.1,13,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (728,4.3,13,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (729,1.7,13,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (730,1.6,13,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (731,2.8,13,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (732,4.4,13,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (733,9.9,13,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (734,8.4,13,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (735,0,13,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (736,16.2,13,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (737,6.8,13,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (738,3.8,13,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (739,0.7,13,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (740,1.6,13,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (741,1.2,13,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (742,3.4,13,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (743,4.8,13,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (744,3.7,13,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (745,2,13,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (746,-3.4,13,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (747,15.9,13,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (748,8.7,13,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (749,5.1,13,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (750,4.3,13,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (751,4.5,13,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (752,0.4,13,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (753,2.5,13,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (754,5.1,13,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (755,5.2,13,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (756,-0.7,13,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (757,4.4,13,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (758,4.4,13,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (759,5.7,13,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (760,5.8,13,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (761,6.5,13,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (762,6.4,13,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (763,5.2,13,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (764,2.4,13,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (765,8.8,13,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (766,4.4,13,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (767,4.1,13,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (768,5.6,13,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (769,3.9,13,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (770,3,13,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (771,4,13,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (772,5.2,13,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (773,1.4,13,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (774,4.8,13,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (775,9.7,13,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (776,6.3,13,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (777,6,13,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (778,2.8,13,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (779,7.5,13,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (780,3,13,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (781,2.2,14,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (782,3.4,14,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (783,1.9,14,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (784,1.5,14,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (785,0.9,14,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (786,0.1,14,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (787,2.8,14,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (788,0.5,14,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (789,0.6,14,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (790,1.4,14,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (791,3.5,14,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (792,4.1,14,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (793,2.3,14,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (794,3.5,14,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (795,1.4,14,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (796,4.7,14,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (797,2.1,14,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (798,3.6,14,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (799,5.3,14,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (800,3.2,14,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (801,9.6,14,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (802,8.4,14,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (803,2.8,14,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (804,2.4,14,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (805,0.9,14,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (806,1.4,14,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (807,2.4,14,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (808,3.9,14,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (809,5,14,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (810,2,14,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (811,1.5,14,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (812,1.9,14,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (813,3.5,14,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (814,2.3,14,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (815,4.9,14,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (816,5.1,14,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (817,1.3,14,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (818,0.8,14,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (819,1.2,14,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (820,0.9,14,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (821,0.6,14,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (822,1.3,14,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (823,1,14,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (824,2.3,14,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (825,3.5,14,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (826,4.5,14,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (827,2.3,14,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (828,3.5,14,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (829,7,14,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (830,4.5,14,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (831,3.3,14,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (832,8,14,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (833,9.5,14,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (834,3.1,14,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (835,1.2,14,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (836,1.8,14,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (837,2.1,14,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (838,1.3,14,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (839,2.1,14,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (840,0.6,14,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (841,1.7,14,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (842,6.6,14,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (843,6.8,14,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (844,4.6,14,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (845,9.1,14,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (846,0.6,15,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (847,0.2,15,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (848,0.7,15,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (849,-0.8,15,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (850,0.6,15,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (851,0.1,15,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (852,1.3,15,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (853,2.3,15,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (854,0.4,15,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (855,0,15,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (856,1.4,15,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (857,1.8,15,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (858,0.4,15,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (859,7.9,15,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (860,1.1,15,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (861,7.7,15,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (862,0.4,15,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (863,8.4,15,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (864,0.4,15,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (865,5.8,15,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (866,8.4,15,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (867,5.6,15,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (868,2.6,15,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (869,5.9,15,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (870,7.6,15,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (871,5,15,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (872,7.2,15,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (873,3.2,15,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (874,-0.1,15,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (875,2,15,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (876,0.2,15,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (877,-0.1,15,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (878,2.8,15,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (879,0.7,15,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (880,1.5,15,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (881,3.5,15,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (882,0.5,15,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (883,1.3,15,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (884,1.4,15,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (885,0.4,15,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (886,0.6,15,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (887,0.5,15,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (888,0.4,15,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (889,0.7,15,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (890,0.9,15,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (891,1.1,15,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (892,4.4,15,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (893,7.1,15,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (894,-2.6,15,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (895,0.8,15,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (896,3.6,15,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (897,1.3,15,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (898,1.6,15,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (899,3,15,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (900,0.2,15,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (901,1.2,15,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (902,4.7,15,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (903,9.3,15,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (904,-3.3,15,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (905,14,15,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (906,-3.5,15,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (907,-3.3,15,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (908,5.4,15,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (909,6.3,15,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (910,2.5,15,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (911,3.9,16,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (912,4.3,16,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (913,2.5,16,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (914,6.9,16,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (915,0,16,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (916,1.8,16,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (917,0.6,16,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (918,1.9,16,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (919,1,16,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (920,4.9,16,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (921,0.5,16,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (922,2.3,16,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (923,1.9,16,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (924,7.6,16,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (925,2.4,16,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (926,0.7,16,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (927,3.4,16,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (928,0,16,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (929,0.3,16,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (930,15.6,16,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (931,1.2,16,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (932,0,16,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (933,4.6,16,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (934,6.8,16,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (935,8.4,16,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (936,1.4,16,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (937,4.3,16,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (938,3,16,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (939,1.1,16,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (940,8.1,16,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (941,0,16,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (942,1.2,16,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (943,6.7,16,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (944,0,16,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (945,6.9,16,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (946,10.5,16,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (947,0,16,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (948,2.3,16,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (949,8.6,16,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (950,-3.1,16,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (951,0,16,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (952,0,16,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (953,1.7,16,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (954,0,16,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (955,-0.9,16,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (956,-0.8,16,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (957,-1.9,16,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (958,0,16,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (959,17.2,16,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (960,0.9,16,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (961,0,16,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (962,0.4,16,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (963,1.7,16,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (964,7.1,16,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (965,0,16,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (966,-1.3,16,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (967,4.2,16,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (968,1,16,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (969,0,16,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (970,1.4,16,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (971,8.8,16,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (972,1.5,16,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (973,1.9,16,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (974,4.4,16,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (975,3,16,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (976,0.5,20,1,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (977,4.4,20,2,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (978,6.7,20,3,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (979,3.9,20,4,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (980,1.9,20,5,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (981,0.7,20,6,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (982,0.7,20,7,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (983,1.5,20,8,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (984,5.2,20,9,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (985,0.7,20,10,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (986,0.4,20,11,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (987,0,20,12,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (988,0.1,20,13,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (989,1.5,20,14,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (990,14.7,20,15,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (991,0.6,20,16,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (992,0.3,20,17,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (993,1.5,20,18,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (994,2.2,20,19,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (995,2,20,20,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (996,2.2,20,21,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (997,2.9,20,22,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (998,1.1,20,23,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (999,2.1,20,24,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1000,0.3,20,25,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1001,2,20,26,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1002,17.7,20,27,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1003,1,20,28,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1004,5.3,20,29,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1005,2.1,20,30,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1006,2.2,20,31,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1007,1.9,20,32,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1008,0.9,20,33,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1009,1.3,20,34,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1010,7.5,20,35,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1011,3.7,20,36,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1012,1.1,20,37,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1013,0.8,20,38,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1014,20,20,39,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1015,-2.2,20,40,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1016,-2,20,41,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1017,-0.5,20,42,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1018,-0.5,20,43,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1019,1.1,20,44,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1020,0.2,20,45,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1021,0,20,46,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1022,0.5,20,47,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1023,0,20,48,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1024,0.7,20,49,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1025,0,20,50,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1026,30.1,20,51,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1027,3.1,20,52,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1028,2.7,20,53,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1029,1,20,54,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1030,3.9,20,55,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1031,4.4,20,56,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1032,3.7,20,57,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1033,1,20,58,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1034,0.4,20,59,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1035,1.6,20,60,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1036,0.7,20,61,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1037,2,20,62,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1038,22.1,20,63,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1039,3.5,20,64,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1040,3.4,20,65,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1041,4.8,1,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1042,6.1,2,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1043,8.3,3,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1044,5.9,4,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1045,5.6,5,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1046,5.4,6,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1047,6.6,7,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1048,4.5,8,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1049,12,9,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1050,7,11,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1051,10,12,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1052,2.6,13,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1053,4.4,14,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1054,2.8,15,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1055,0,16,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1056,2.2,20,66,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1057,5.9,1,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1058,6.2,2,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1059,9.3,3,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1060,4.1,4,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1061,7.1,5,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1062,8.4,6,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1063,3,7,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1064,13.3,8,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1065,0.8,9,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1066,7.4,11,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1067,4,12,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1068,4.9,13,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1069,4.9,14,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1070,0.3,15,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1071,4.2,16,67,2);
INSERT INTO ipc_aperturas (`id_ipc_apertura`,`valor_ipc_apertura`,`id_apertura`,`id_periodo`,`id_region`) VALUES (1072,7.9,20,67,2);

##################################################################################################################################################
##################################################################### VISTAS #####################################################################
##################################################################################################################################################

-- Vista ipc_anual_desde_2017
CREATE OR REPLACE VIEW ipc_anual_desde_2017 AS
SELECT (CAST(SUM(i.valor_ipc_intermensual) AS DECIMAL(10,2))) AS ipc_anual, YEAR(p.fecha) AS año
FROM ipc AS i
LEFT JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE i.id_region = (SELECT id_region FROM region WHERE region = 'NACIONAL')
GROUP BY año
ORDER BY año DESC;

-- Vista ipc_2022_nacional_divisiones
CREATE OR REPLACE VIEW ipc_2022_nacional_divisiones AS
SELECT d.id_ipc_division,
		(SELECT division FROM divisiones WHERE d.id_division = id_division) AS division,
		d.valor_ipc_division,
        ipc_mes_año('nacional', MONTHNAME(p.fecha), YEAR(p.fecha)) AS valor_ipc_promedio,
        MONTHNAME(p.fecha) AS mes,
        YEAR(p.fecha) AS año,
		(SELECT region FROM ipc_argentina.region WHERE (d.id_region = id_region)) AS region
FROM ipc_divisiones AS d
JOIN periodo AS p
ON p.id_periodo = d.id_periodo
WHERE (YEAR(p.fecha) >= 2022 AND d.id_region = (SELECT id_region FROM region WHERE region = 'NACIONAL'))
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
SELECT i.id_ipc, i.valor_ipc_intermensual, i.valor_ipc_interanual, MONTHNAME(p.fecha) AS mes, YEAR(p.fecha) AS año
FROM ipc AS i
JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE (p.id_presidente = (SELECT id_presidente FROM presidente WHERE nombre_completo = 'Alberto Fernandez')
							AND (i.id_region = (SELECT id_region FROM region WHERE region = 'NACIONAL')))
ORDER BY p.id_periodo DESC;

-- Vista ipc_nacional_Mauricio_Macri
CREATE OR REPLACE VIEW ipc_nacional_Mauricio_Macri AS
SELECT i.id_ipc, i.valor_ipc_intermensual, i.valor_ipc_interanual, MONTHNAME(p.fecha) AS mes, YEAR(p.fecha) AS año
FROM ipc AS i
JOIN periodo AS p
ON i.id_periodo = p.id_periodo
WHERE (p.id_presidente = (SELECT id_presidente FROM presidente
							WHERE nombre_completo = 'Mauricio Macri') AND (i.id_region = (SELECT id_region FROM region WHERE region = 'NACIONAL')))
ORDER BY p.id_periodo DESC;

##################################################################################################################################################
################################################################### FUNCIONES ####################################################################
##################################################################################################################################################

-- FUNCION ipc_año_X
DELIMITER $$
CREATE FUNCTION `ipc_año`(this_region VARCHAR(20), this_año INT)
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
			WHERE ( (YEAR(p.fecha) = this_año) AND
					(i.id_region = (SELECT id_region FROM region WHERE region = UPPER(this_region))))
		),
		"Datos de entrada invalidos.");
RETURN resultado;
END
$$
DELIMITER ;

-- FUNCION ipc_mes_año
DELIMITER $$
CREATE FUNCTION `ipc_mes_año`(this_region VARCHAR(20), this_mes VARCHAR(20),this_año INT)
RETURNS DECIMAL(8,2)
READS SQL DATA
BEGIN
	DECLARE resultado FLOAT;
	SET resultado =
    IFNULL(
		(SELECT i.valor_ipc_intermensual		-- Se extrae el valor a nivel nacional del ipc del periodo que se consulta
			FROM ipc i
            RIGHT JOIN periodo p
			ON i.id_periodo = p.id_periodo
			WHERE ( (UPPER(MONTHNAME(p.fecha)) LIKE CONCAT(this_mes,'%')) AND
					(YEAR(p.fecha) = this_año) AND
                    (i.id_region = (SELECT id_region FROM region WHERE region = UPPER(this_region))))
		),
		"Datos de entrada invalidos.");
RETURN resultado;
END
$$
DELIMITER ;

-- FUNCION above_average
DELIMITER $$
CREATE FUNCTION `above_average`(this_mes VARCHAR(20), this_año INT)
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
            (id_periodo = (SELECT id_periodo FROM periodo p WHERE (UPPER(MONTHNAME(p.fecha)) LIKE CONCAT(UPPER(this_mes),'%') AND YEAR(p.fecha) = this_año))))
		);
	SET ipc_alimentos_y_bebidas_no_alcoholicas =
		(SELECT valor_ipc_division FROM ipc_divisiones i
        WHERE(
			-- Se utiliza el operador LIKE para tomar valido, por ejemplo, MAR como MARZO o ABR como ABRIL
			(id_periodo = (SELECT id_periodo FROM periodo p WHERE (UPPER(MONTHNAME(p.fecha)) LIKE CONCAT(this_mes,'%') AND YEAR(p.fecha) = this_año)))
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

##################################################################################################################################################
############################################################### STORED PROCEDURES ################################################################
##################################################################################################################################################

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

##################################################################################################################################################
################################################################### TRIGGERS #####################################################################
##################################################################################################################################################

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

#################################################################################################################################################
#################################################################### USER #######################################################################
#################################################################################################################################################


-- Se crea el usuario read_only sin contraseña de aceso
CREATE USER IF NOT EXISTS read_only@localhost;
-- Se ortorgan permisos de solo lectura sobre tablas al usuario read_only
GRANT SELECT ON ipc_argentina.* TO read_only@localhost;

-- Se crea el usuario user y se asigna una contraseña de acceso
CREATE USER IF NOT EXISTS user@localhost IDENTIFIED BY '1234';
-- Se ortorgan permisos de lectura, inserción y actualización de registros al usuario user
GRANT SELECT, INSERT, UPDATE ON ipc_argentina.* TO user@localhost;

#################################################################################################################################################
################################################################ TRANSACCIONES ##################################################################
#################################################################################################################################################

-- Se cancela el autocommit
SET @@AUTOCOMMIT = 0;

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
ROLLBACK;
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
ROLLBACK TO init;
COMMIT;

-- Consulta de las modificaciones realizadas
-- SELECT * FROM ipc ORDER BY id_ipc DESC;