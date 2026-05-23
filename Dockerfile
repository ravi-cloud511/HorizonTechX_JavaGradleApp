FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY . .
RUN gradle bootJar
EXPOSE 8080
CMD ["java", "-jar", "build/libs/HorizonTechX_JavaGradleApp-0.0.1-SNAPSHOT.jar"]