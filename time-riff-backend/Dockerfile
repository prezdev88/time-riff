# Usa una imagen de JDK para compilar y ejecutar la aplicación
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo JAR generado en el contenedor
COPY target/time-riff-backend-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que Spring Boot se ejecuta por defecto
EXPOSE 8080

# Ejecuta la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
