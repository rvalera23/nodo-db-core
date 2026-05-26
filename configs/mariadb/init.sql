-- Bases de datos generadas dinámicamente

CREATE DATABASE IF NOT EXISTS wordpress_db;
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'nodo_user'@'%';
CREATE DATABASE IF NOT EXISTS glpi_db;
GRANT ALL PRIVILEGES ON glpi_db.* TO 'nodo_user'@'%';

-- Usuario del ecosistema NODO

CREATE USER IF NOT EXISTS 'nodo_user'@'%' IDENTIFIED BY 'nodo123*';

-- Aplicar cambios

FLUSH PRIVILEGES;
