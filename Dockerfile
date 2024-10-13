# Usa una imagen base de Java
FROM openjdk:21

# Crea un directorio para Lavalink
WORKDIR /app

# Copia el archivo Lavalink.jar y los plugins al contenedor
COPY Lavalink.jar /app/Lavalink.jar
COPY application.yml /app/application.yml
COPY plugins /app/plugins

# Expone el puerto de Lavalink
EXPOSE 2333

# Comando para ejecutar Lavalink
CMD ["java", "-jar", "Lavalink.jar"]