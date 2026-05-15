# TNE Database

Servicio de base de datos PostgreSQL para el sistema de autenticación TNE.
Contiene la configuración de Docker, tablas iniciales y datos de seed.

## Tecnologías
- PostgreSQL 16
- Docker
- Docker Compose

## Requisitos previos
- Docker Desktop instalado y corriendo

## Instalación

1. Clona el repositorio:
git clone https://github.com/1rv1nn/tne-database.git

cd tne-database

1. Copia el archivo de variables de entorno:
copy .env.example .env

## Variables de entorno

| Variable | Descripción | Valor por defecto |
|----------|-------------|-------------------|
| POSTGRES_DB | Nombre de la base de datos | tne_db |
| POSTGRES_USER | Usuario de la base de datos | tne_user |
| POSTGRES_PASSWORD | Contraseña de la base de datos | tne_password |
| POSTGRES_PORT | Puerto expuesto | 5432 |

## Correr el servicio

1. Levanta el contenedor:
docker compose up -d

2. Verifica que esté corriendo:
docker compose ps

Deberías ver el contenedor con STATUS: healthy

3. Para detenerlo:
docker compose down

## Estructura de la base de datos

### Tabla roles
| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | SERIAL | Clave primaria |
| name | VARCHAR(50) | Nombre del rol (único) |
| created_at | TIMESTAMP | Fecha de creación |
| updated_at | TIMESTAMP | Fecha de actualización |

### Tabla users
| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | SERIAL | Clave primaria |
| name | VARCHAR(100) | Nombre del usuario |
| email | VARCHAR(150) | Correo electrónico (único) |
| password | VARCHAR(255) | Contraseña encriptada |
| role_id | INTEGER | Referencia a roles |
| created_at | TIMESTAMP | Fecha de creación |
| updated_at | TIMESTAMP | Fecha de actualización |

## Roles iniciales

| id | name |
|----|------|
| 1 | admin |
| 2 | invitado |

## Usuario administrador de prueba

| Campo | Valor |
|-------|-------|
| Nombre | Administrador |
| Email | admin@tne.com |
| Password | password |
| Rol | admin |

## Conexión

| Campo | Valor |
|-------|-------|
| Host | localhost |
| Puerto | 5432 |
| Base de datos | tne_db |
| Usuario | tne_user |
| Contraseña | tne_password |