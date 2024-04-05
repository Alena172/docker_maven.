FROM maven:3.8.4-jdk-11 AS builder
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=builder /app/target/my-application.jar .
CMD ["java", "-jar", "my-application.jar"]
