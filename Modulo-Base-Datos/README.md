# Chat Database

Repositorio dedicado a la base de datos del sistema de chat en tiempo real.

**Responsable:** Gabriel Flores

## Tecnologías
- PostgreSQL 16
- SQL Scripts

## Estructura de Tablas

- **users** → Usuarios del sistema (autenticación)
- **rooms** → Salas públicas y privadas
- **room_members** → Relación muchos a muchos para salas privadas
- **messages** → Historial de mensajes

## Cómo ejecutar los scripts

1. Crear la base de datos `chatdb`
2. Ejecutar el script `scripts/02-create-tables.sql`

### Con pgAdmin:
- Conéctate a PostgreSQL
- Crea la base de datos `chatdb`
- Abre y ejecuta los scripts en orden

### Con línea de comandos:
```bash
psql -U postgres -d chatdb -f scripts/02-create-tables.sql