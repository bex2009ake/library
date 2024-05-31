# Используем базовый образ Python
FROM python:3.10

# Устанавливаем переменную окружения для отображения вывода в терминале
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /codes

# Копируем файл зависимостей в контейнер
COPY requirements.txt /codes/

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Копируем проект в контейнер
COPY . /codes/
