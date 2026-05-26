// Script de inicialización de MongoDB dinámico
db = db.getSiblingDB('admin');
db.auth('admin', 'admin2026*');

// Crear bases de datos y usuarios de aplicación
db = db.getSiblingDB('');
db.createUser({
  user: 'nodo_user',
  pwd: 'admin123*',
  roles: [ { role: 'readWrite', db: '' } ]
});
