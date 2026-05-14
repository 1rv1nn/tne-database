# TNE Database

Servicio de base de datos PostgreSQL

## Requisitos
- Docker Desktop instalado y corriendo

## Configuración
1. Copia el archivo de variables de entorno:
cp .env.example .env

2. Levanta el servicio:
docker compose up -d

3. Verifica que esté corriendo:
docker compose ps

4. Para detenerlo:
docker compose down

## Conexión
- Host: localhost
- Puerto: 5432 (o el que definas en .env)
- Base de datos: tne_db
- Usuario: tne_user