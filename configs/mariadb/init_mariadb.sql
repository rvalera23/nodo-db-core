-- Bases de datos para aplicaciones externas
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE DATABASE IF NOT EXISTS glpi_db;

-- Usuario del ecosistema NODO (Acceso remoto total)
CREATE USER IF NOT EXISTS 'nodo_user'@'%' IDENTIFIED BY 'admin123*';
GRANT ALL PRIVILEGES ON *.* TO 'nodo_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
