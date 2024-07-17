#!/bin/bash

echo Atualizando Servidor

apt-get update -y
apt-get upgrade -y

echo Instalando o servidor WEB  Apache2
apt-get install apache2 -y

echo instalando serviço de descompactação ZIP
apt-get install unzip -y

echo baixando projeto WEB no repositório GITHUB
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo  descompactando projeto
unzip main.zip

echo copiando o projeto e movendo para a pasta padrão do apache2
cp /tmp/linux-site-dio-main/ /var/www/html -r
