-- Creación de Bases de Datos
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE DATABASE IF NOT EXISTS glpi_db;
-- Usuario único para el ecosistema NODO con acceso desde cualquier IP del cluster
CREATE USER IF NOT EXISTS 'nodo_user'@'%' IDENTIFIED BY 'admin123*';
GRANT ALL PRIVILEGES ON *.* TO 'nodo_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
