#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando os arquivoz da aplicação"

cd /tmp
wget https://github.com/denilsonbonatii/linux-site-dio/archive/refs/heads/main.zimp
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

git add script.sh
git commit -m "Adicionar script de configuração do servidor"
git push origin main