
echo "=========================================="
echo "Лабораторная работа - выполнение задания"
echo "Группа: Megadeth"
echo "=========================================="

echo -e "\n=== 1. Создание структуры директорий ==="
mkdir -p "Megadeth"
cd "Megadeth"
mkdir "Killing_Is_My_Business" "Peace_Sells" "So_Far_So_Good_So_What" "Rust_In_Peace" "Countdown_To_Extinction"
echo "Директории созданы:"
ls -la

echo -e "\n=== 2. Создание файлов contents.txt ==="
# Содержимое файлов создаем как выше...

echo -e "\n=== 3. Первые два альбома по алфавиту ==="
cd ..
echo "Результат:"
ls "Megadeth" | sort | head -2

echo -e "\n=== 4. Добавление полного пути ==="
cd "Megadeth/Rust_In_Peace"
current_path=$(pwd)
echo "Текущий путь: $current_path"
pwd >> contents.txt
echo "Путь добавлен в contents.txt"

echo -e "\n=== 5. Поиск студентов с двумя 'o' ==="
cd ..
cd ..
cd ..
cd os-labs/students-2025
echo "Найденные файлы:"
find . -maxdepth 1 -name "*o*o*.txt" -type f | while read file; do
    filename=$(basename "$file")
    echo "--- $filename ---"
    head -1 "$file" 2>/dev/null || echo "Файл пуст"
    echo
done
