-- Bases de datos para aplicaciones de PostgreSQL
-- Usamos 'zabbix' en lugar de 'zabbix_db' para que coincida con la configuración de Zabbix
CREATE DATABASE zabbix;
CREATE DATABASE n8n_db;

-- Usuario del ecosistema NODO
CREATE USER nodo_user WITH PASSWORD 'nodo_2026*';
GRANT ALL PRIVILEGES ON DATABASE zabbix TO nodo_user;
GRANT ALL PRIVILEGES ON DATABASE n8n_db TO nodo_user;

-- Privilegios adicionales para asegurar que el usuario pueda crear tablas en el esquema public
\c zabbix;
GRANT ALL ON SCHEMA public TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO nodo_user;
