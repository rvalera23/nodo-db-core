-- Bases de datos para aplicaciones de PostgreSQL
CREATE DATABASE zabbix_db;
CREATE DATABASE n8n_db;

-- Usuario del ecosistema NODO
CREATE USER nodo_user WITH PASSWORD 'admin123*';
GRANT ALL PRIVILEGES ON DATABASE zabbix_db TO nodo_user;
GRANT ALL PRIVILEGES ON DATABASE n8n_db TO nodo_user;
