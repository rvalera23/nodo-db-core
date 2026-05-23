-- Bases de datos para aplicaciones de MariaDB
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE DATABASE IF NOT EXISTS glpi_db;

-- Usuario del ecosistema NODO
CREATE USER IF NOT EXISTS 'nodo_user'@'%' IDENTIFIED BY 'nodo_2026*';
GRANT ALL PRIVILEGES ON *.* TO 'nodo_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
