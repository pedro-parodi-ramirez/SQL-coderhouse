-- Se crea el esquema
CREATE SCHEMA IF NOT EXISTS ipc_argentina;
USE ipc_argentina;

/************************************************************************************************************************************************/
/************************************************************** CREACION DE TABLAS **************************************************************/
/************************************************************************************************************************************************/

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
	id_presidente INT NOT NULL,
	fecha DATE NOT NULL,
	PRIMARY KEY (id_periodo),
	FOREIGN KEY (id_presidente) REFERENCES presidente(id_presidente)
);

-- Tabla region
CREATE TABLE  IF NOT EXISTS region(
	id_region INT NOT NULL AUTO_INCREMENT,
	region VARCHAR(10),
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