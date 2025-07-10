FROM eclipse-temurin:17-jdk-jammy
RUN apt-get update && apt-get install -y wget
WORKDIR /app
RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/3.7.9/Lavalink.jar
COPY application.yml .
CMD ["java", "-jar", "Lavalink.jar"]
