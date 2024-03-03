FROM openjdk:17-jdk-slim

LABEL maintainer="Juste mbriyann01@gmail.com"

# Copier le jar dans le répertoire de travail de l'image
COPY target/examen-0.0.1-SNAPSHOT.jar /app/data/impot.jar

# Définir le répertoire de travail pour l'exécution de l'application
WORKDIR /app/data

# Commande d'exécution de l'application lorsque le conteneur démarre
ENTRYPOINT ["java", "-jar", "impot.jar"]
