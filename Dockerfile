FROM eclipse-temurin:17-jdk-slim
WORKDIR /app
COPY . .
RUN ./gradlew bootJar
EXPOSE 8080
CMD ["java", "-jar", "build/libs/HorizonTechX_JavaGradleApp-0.0.1-SNAPSHOT.jar"]