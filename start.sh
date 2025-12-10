#!/bin/bash

echo "🤖 Запуск Telegram AI Bot..."
echo ""

# Проверка наличия .env файла
if [ ! -f .env ]; then
    echo "⚠️  Файл .env не найден!"
    echo "📝 Создайте .env файл на основе .env.example"
    echo ""
    exit 1
fi

# Проверка наличия prompt.md
if [ ! -f prompt.md ]; then
    echo "⚠️  Файл prompt.md не найден!"
    echo "📝 Создайте файл prompt.md с системным промптом"
    echo ""
    exit 1
fi

# Запуск бота
python3 bot.py
