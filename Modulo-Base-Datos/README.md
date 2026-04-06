# Chat Database - Sistema de Chat en Tiempo Real

Repositorio dedicado exclusivamente a la **Base de Datos** del sistema de chat.

**Responsable:** Gabriel Flores

## Tecnologías

- PostgreSQL 16
- SQL Scripts

## Estructura del Repositorio

chat-database/
├── scripts/
│   ├── 01-create-database.sql
│   └── 02-create-tables.sql
├── README.md
└── .env.example

## Instalación de PostgreSQL

### Windows (Recomendado)

1. Descarga PostgreSQL desde el sitio oficial:
   → [https://www.postgresql.org/download/windows/](https://www.postgresql.org/download/windows/)

2. Durante la instalación:
   - Elige la versión **16** (recomendada)
   - Marca la opción de instalar **pgAdmin 4**
   - **Recuerda muy bien** la contraseña que pongas para el usuario `postgres`

3. Una vez instalado, abre **pgAdmin 4** (viene incluido).

### Cómo crear la Base de Datos

1. Abre **pgAdmin 4**
2. Haz clic derecho en **"Servers"** → **Register** → **Server**
3. En la pestaña **Connection**:
   - Host: `localhost`
   - Port: `5432`
   - Username: `postgres`
   - Password: (la que pusiste al instalar)
4. Haz clic derecho en **Databases** → **Create** → **Database**
5. Nombre de la base de datos: **`chatdb`**
6. Haz clic en **Save**

---

## Scripts de la Base de Datos

### Orden de ejecución:

1. `scripts/01-create-database.sql` → Crea la base de datos
2. `scripts/02-create-tables.sql` → Crea las tablas (`users`, `rooms`, `messages`)

### Cómo ejecutar los scripts

**Opción recomendada (con pgAdmin):**
- Conéctate a la base de datos `chatdb`
- Abre cada script y ejecútalo en orden (F5 o botón Execute)

**Opción con línea de comandos:**
```bash
psql -U postgres -d chatdb -f scripts/02-create-tables.sql

Modelo de DatosTablas principales:users → Usuarios (autenticación)
rooms → Salas públicas y privadas
messages → Mensajes del chat

Relaciones:Un usuario puede crear muchas salas
Una sala puede tener muchos mensajes
Un usuario puede enviar muchos mensajes

Notas ImportantesLas contraseñas se guardan hasheadas (bcrypt) desde el backend
Por el momento solo se usan salas públicas
Todas las claves primarias usan UUID

