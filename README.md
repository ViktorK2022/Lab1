**Название дисциплины:** Технологии разработки программного обеспечения.

**Название лабораторной работы:** Создание микросервиса на Spring Boot с базой данных и его запуск в Docker'e.

**ФИО:**  Кухарский Виктор Александрович.

**Группа:**  МАС2131.

**Цель лабораторной работы:**  знакомство с проектированием многослойной архитектуры Web-API (веб-приложений, микро-сервисов).

___
**Инструкция по сборке и запуску микросервиса:**

1. Сделать клон репозитория.
2. При использовании операционной системы Windows, установить Docker Desktop, [ссылка на актуальную версию продукта](https://www.docker.com/products/docker-desktop)
3. Запустить в PowerShell команду которая запустит контейнер PostgreSQL в фоновом режиме: `docker run -e POSTGRES_PASSWORD=root -p 5432:5432 postgres`
4. Для создания и наполнения базы данных запустить файлы data.sql и schema.sql (файлы расположены в src->rosouce).
5. С помощью сборщика проектов Maven собрать Docker-образ. Перейти на вкладку Maven->simpleApi нажать на Package.
6. Произвести сборку образа для Docker командой: `docker build . -t myapi:latest`
7. Запустить созданный Docker образ командой в PowerShell: `docker run -p 8080:8080 myapi:latest`
8. Приложение запущено, можно выполнить тестирование микросервиса в браузере. Список команд указан ниже.

__Список команд для тестирования микросервиса__
1.	Получение имени хоста curl http://localhost:8080/api/v1/status
2.	Получение всех данных в таблице curl http://localhost:8080/api/v1/cars
3.	Получение данных по указанному ID curl http://localhost:8080/api/v1/cars/3
