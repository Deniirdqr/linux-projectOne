#!/bin/bash

echo "Criando diretorios...."
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos...."
groupadd  GRP_ADM
groupadd  GRP_VEN
groupadd  GRP_SEC

echo "Criando Usuários...."
useradd carlos -m -c "Carlos ADM" -p $(openssl passwd -crypt Se123) -g  GRP_ADM
useradd maria -m -c "Maria ADM" -p $(openssl passwd -crypt Se123) -g  GRP_ADM
useradd joao -m -c "Joao ADM" -p $(openssl passwd -crypt Se123) -g  GRP_ADM

useradd debora -m -c "debora VEN" -p $(openssl passwd -crypt Se123) -g  GRP_VEN
useradd sebastiana -m -c "sebastiana VEN" -p $(openssl passwd -crypt Se123) -g  GRP_VEN
useradd roberto -m -c "roberto VEN" -p $(openssl passwd -crypt Se123) -g  GRP_VEN

useradd josefina -m -c "Josefina SEC" -p $(openssl passwd -crypt Se123) -g  GRP_SEC
useradd amanda -m -c "amanda SEC" -p $(openssl passwd -crypt Se123) -g  GRP_SEC
useradd rogerio -m -c "rogerio SEC" -p $(openssl passwd -crypt Se123) -g  GRP_SEC

echo "Configurando permissões...."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Fim...."
