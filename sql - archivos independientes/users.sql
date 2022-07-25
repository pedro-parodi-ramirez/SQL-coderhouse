USE ipc_argentina;

-- Se crea el usuario read_only sin contraseña de aceso
CREATE USER IF NOT EXISTS read_only@localhost;
-- Se ortorgan permisos de solo lectura sobre tablas al usuario read_only
GRANT SELECT ON ipc_argentina.* TO read_only@localhost;

-- Se crea el usuario user y se asigna una contraseña de acceso
CREATE USER IF NOT EXISTS user@localhost IDENTIFIED BY '1234';
-- Se ortorgan permisos de lectura, inserción y actualización de registros al usuario user
GRANT SELECT, INSERT, UPDATE ON ipc_argentina.* TO user@localhost;

/*SELECT * FROM mysql.user;
SHOW GRANTS FOR read_only@localhost;
SHOW GRANTS FOR user@localhost;*/