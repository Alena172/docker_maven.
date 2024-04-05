# Используем базовый образ с Java
FROM openjdk:8-jdk-alpine

# Создание рабочего каталога
WORKDIR /usr/app

# Копируем скомпилированный JAR-файл в контейнер
COPY target/your-application.jar your-application.jar

# Команда для запуска приложения
CMD ["java", "-jar", "your-application.jar"]
