```bash
sudo pacman -S docker-compose
```

```bash
docker compose up --build -d
docker-compose ps
docker-compose down

# Solo levantar base de datos
docker compose up -d database

# Solo levantar base de datos
docker compose down database

# Ver los volúmenes
docker volume ls

# Ver info del volumen
docker volume inspect time-riff_db_data
```

# Ejecutar
```bash
cd time-riff-backend/
./mvnw clean install
docker compose up --build -d
curl http://localhost:8080/test
curl http://localhost:8080/bands
```