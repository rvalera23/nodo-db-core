-- 1. Crear el usuario primero (es la base de todo)
CREATE USER IF NOT EXISTS 'nodo_user'@'%' IDENTIFIED BY 'nodo123*';

-- 2. Crear las bases de datos
CREATE DATABASE IF NOT EXISTS `wordpress_db`;
-- 3. Asignar privilegios sobre las bases ya creadas
GRANT ALL PRIVILEGES ON `wordpress_db`.* TO 'nodo_user'@'%';
CREATE DATABASE IF NOT EXISTS `glpi_db`;
-- 3. Asignar privilegios sobre las bases ya creadas
GRANT ALL PRIVILEGES ON `glpi_db`.* TO 'nodo_user'@'%';
CREATE DATABASE IF NOT EXISTS `moodle_db`;
-- 3. Asignar privilegios sobre las bases ya creadas
GRANT ALL PRIVILEGES ON `moodle_db`.* TO 'nodo_user'@'%';

-- 4. Permisos globales y limpieza
GRANT ALL PRIVILEGES ON *.* TO 'nodo_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
