#!bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade
apt-get install apache2 -y
apt-get install unzip -y

echo "Baicahando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
inzip main.zip
cd linux-site-dio
cp -R * /var/www/html/