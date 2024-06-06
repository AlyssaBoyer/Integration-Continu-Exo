# Utiliser une image Java officielle comme base
FROM openjdk:11-jre-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré dans le répertoire de travail
COPY target/*.jar app.jar

# Spécifier la commande pour exécuter l'application
CMD ["java", "-jar", "app.jar"]
