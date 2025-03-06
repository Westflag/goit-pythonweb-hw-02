# Використовуємо офіційний образ Python 3.10
FROM python:3.10

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо залежності в контейнер
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо код застосунку в контейнер
COPY . .

# Визначаємо команду для запуску застосунку
CMD ["python", "main.py"]
