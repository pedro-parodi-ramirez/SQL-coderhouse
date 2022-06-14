CREATE SCHEMA IF NOT EXISTS ipc_argentina;
USE ipc_argentina;

CREATE TABLE  IF NOT EXISTS periodo(
id_periodo INT NOT NULL,
mes_nombre TEXT(15),
mes INT NOT NULL,
año INT NOT NULL,
PRIMARY KEY (id_periodo)
);

CREATE TABLE  IF NOT EXISTS region(
id_region INT NOT NULL AUTO_INCREMENT,
region TEXT(10),
PRIMARY KEY (id_region)
);

CREATE TABLE IF NOT EXISTS ipc(
id_ipc INT NOT NULL,
valor_ipc_intermensual DECIMAL(4,2),
valor_ipc_interanual DECIMAL(4,2),
valor_ipc_acumulado DECIMAL(4,2),
id_periodo INT NOT NULL,
PRIMARY KEY (id_ipc),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo)
);

CREATE TABLE IF NOT EXISTS divisiones(
id_division INT NOT NULL AUTO_INCREMENT,
division TEXT(50),
valor_ipc_division DECIMAL(4,2),
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_division),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);

CREATE TABLE IF NOT EXISTS aperturas(
id_apertura INT NOT NULL AUTO_INCREMENT,
apertura TEXT(50),
valor_ipc_apertura DECIMAL(4,2),
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_apertura),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);

CREATE TABLE IF NOT EXISTS productos(
id_productos INT NOT NULL AUTO_INCREMENT,
productos TEXT(50),
valor_ipc_productos DECIMAL(4,2),
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_productos),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);