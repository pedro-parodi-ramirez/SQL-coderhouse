CREATE SCHEMA IF NOT EXISTS ipc_argentina;
USE ipc_argentina;

CREATE TABLE  IF NOT EXISTS periodo(
id_periodo INT NOT NULL AUTO_INCREMENT,
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

CREATE TABLE IF NOT EXISTS divisiones(
id_division INT NOT NULL AUTO_INCREMENT,
division TEXT(50),
PRIMARY KEY (id_division)
);

CREATE TABLE IF NOT EXISTS aperturas(
id_apertura INT NOT NULL AUTO_INCREMENT,
apertura TEXT(50),
id_division INT NOT NULL,
PRIMARY KEY (id_apertura),
FOREIGN KEY (id_division) REFERENCES divisiones(id_division)
);

/*CREATE TABLE IF NOT EXISTS productos(
id_producto INT NOT NULL AUTO_INCREMENT,
producto TEXT(50),
id_apertura INT NOT NULL,
PRIMARY KEY (id_producto)
);*/

CREATE TABLE IF NOT EXISTS ipc(
id_ipc INT NOT NULL AUTO_INCREMENT,
valor_ipc_intermensual DECIMAL(8,2),
valor_ipc_interanual DECIMAL(8,2),
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_ipc),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);

CREATE TABLE IF NOT EXISTS ipc_divisiones(
id_ipc_division INT NOT NULL AUTO_INCREMENT,
valor_ipc_division DECIMAL(8,2),
id_division INT NOT NULL,
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_ipc_division),
FOREIGN KEY (id_division) REFERENCES divisiones(id_division),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);

CREATE TABLE IF NOT EXISTS ipc_aperturas(
id_ipc_apertura INT NOT NULL AUTO_INCREMENT,
valor_ipc_apertura DECIMAL(8,2),
id_apertura INT NOT NULL,
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_ipc_apertura),
FOREIGN KEY (id_apertura) REFERENCES aperturas(id_apertura),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);

/*CREATE TABLE IF NOT EXISTS ipc_productos(
id_ipc_producto INT NOT NULL AUTO_INCREMENT,
valor_ipc_producto DECIMAL(8,2),
id_producto INT NOT NULL,
id_periodo INT NOT NULL,
id_region INT NOT NULL,
PRIMARY KEY (id_ipc_producto),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);*/