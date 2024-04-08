# Используем официальный образ Maven для сборки приложения
FROM maven:3.8.4-openjdk-17-slim AS build

# Копируем исходный код в контейнер
COPY ./ /app
WORKDIR /app

# Собираем приложение с помощью Maven
RUN mvn clean package -DskipTests

# Отдельный этап сборки для уменьшения размера образа
FROM adoptopenjdk/openjdk17:alpine-jre

# Копируем собранный JAR-файл из предыдущего этапа в контейнер
COPY --from=build /app/target/*.jar /app/app.jar

# Указываем порт, который будет прослушивать приложение
EXPOSE 8080

# Команда для запуска приложения при старте контейнера
CMD ["java", "-jar", "/app/app.jar"]
