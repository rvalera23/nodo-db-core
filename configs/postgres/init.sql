-- Usuario central del ecosistema NODO
CREATE USER nodo_user WITH PASSWORD 'admin123*';

-- Configuración para la base de datos: zabbix
CREATE DATABASE zabbix;
GRANT ALL PRIVILEGES ON DATABASE zabbix TO nodo_user;

\c zabbix;
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

-- Configuración para la base de datos: authentik_db
CREATE DATABASE authentik_db;
GRANT ALL PRIVILEGES ON DATABASE authentik_db TO nodo_user;

\c authentik_db;
GRANT ALL ON SCHEMA public TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO nodo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO nodo_user;
ALTER SCHEMA public OWNER TO nodo_user;

