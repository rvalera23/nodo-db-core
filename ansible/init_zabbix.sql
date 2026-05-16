-- Crear el usuario para Zabbix Server
CREATE USER zabbix WITH PASSWORD 'admin123*';

-- Crear la base de datos asignando al usuario como dueño
CREATE DATABASE zabbix OWNER zabbix;

-- Otorgar todos los privilegios sobre esa base de datos
GRANT ALL PRIVILEGES ON DATABASE zabbix TO zabbix;
