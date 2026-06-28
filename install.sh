#!/bin/bash

set -e

echo "Установка Yuuma Tool..."

if [ "$EUID" -ne 0 ]; then
echo "Запусти с sudo"
exit 1
fi


echo "Установка зависимостей..."
apt update -y
apt install -y whiptail curl openssh-server

echo "Загрузка yuuma..."
curl -fsSL https://raw.githubusercontent.com/Kuga-Yuuma/ptool/main/yuuma -o /usr/local/bin/yuuma

chmod +x /usr/local/bin/yuuma

echo "Установка завершена!"

