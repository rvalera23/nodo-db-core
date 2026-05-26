// Script de inicialización de MongoDB dinámico
db = db.getSiblingDB('admin');
db.auth('admin', 'mongo123*');

// Crear bases de datos y usuarios de aplicación
