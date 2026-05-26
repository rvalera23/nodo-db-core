-- Usuario central del ecosistema NODO
CREATE USER nodo_user WITH PASSWORD 'nodo_pass123*';

-- Configuración para la base de datos: zabbix_db
CREATE DATABASE zabbix_db;
GRANT ALL PRIVILEGES ON DATABASE zabbix_db TO nodo_user;

\c zabbix_db;
GRANT ALL ON SCHEMA public TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO nodo_user;
ALTER SCHEMA public OWNER TO nodo_user;

-- Configuración para la base de datos: n8n_db
CREATE DATABASE n8n_db;
GRANT ALL PRIVILEGES ON DATABASE n8n_db TO nodo_user;

\c n8n_db;
GRANT ALL ON SCHEMA public TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO nodo_user;
ALTER SCHEMA public OWNER TO nodo_user;

