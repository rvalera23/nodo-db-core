-- Ejecutado automáticamente por el motor al arrancar de cero
CREATE USER zabbix WITH PASSWORD 'admin123*';
CREATE DATABASE zabbix OWNER zabbix;
GRANT ALL PRIVILEGES ON DATABASE zabbix TO zabbix;
