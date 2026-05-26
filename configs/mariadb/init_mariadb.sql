-- Bases de datos
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE DATABASE IF NOT EXISTS glpi_db;

-- Usuario del ecosistema NODO
CREATE USER IF NOT EXISTS 'nodo_user'@'%' IDENTIFIED BY 'admin123*';

-- Privilegios específicos
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'nodo_user'@'%';
GRANT ALL PRIVILEGES ON glpi_db.* TO 'nodo_user'@'%';

-- Aplicar cambios
FLUSH PRIVILEGES;
