# Используем базовый образ с Java
FROM openjdk:8-jdk-alpine

# Копируем JAR-файл в контейнер
COPY target/application.jar /usr/app/application.jar

# Устанавливаем рабочую директорию
WORKDIR /usr/app

# Команда для запуска приложения
CMD ["java", "-jar", "application.jar"]
