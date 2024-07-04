#!/bin/bash
echo ______________________________________________________
echo Criando diretorios public, adm, ven e sec...
echo ""
cd /
mkdir public adm ven sec
echo "/public	/adm	/ven	/sec	"
echo ""
echo ______________________________________________________
echo ""

echo _______________________________________________________
echo Criando grupos GRP_ADM, GRP_VEN, e GRP_SEC...
echo ""
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "GRP_ADM	GRP_VEN	GRP_SEC"
echo ""
echo ______________________________________________________
echo ""

echo ______________________________________________________
echo Criando usuarios do grupo administrativos...
echo ""
useradd carlos -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd maria -e

useradd joao -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd joao -e

echo "/carlos	/maria	/joao"
echo "Senha padrao 'Senha123' de expiracao imediata"
echo ""
echo ______________________________________________________
echo ""

echo ______________________________________________________
echo Criando usuarios do grupo de vendas...
echo ""
useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd roberto -e

echo "/debora	/sebastiana	/roberto"
echo "Senha padrao 'Senha123' de expiracao imediata"
echo ""
echo ______________________________________________________
echo ""

echo ______________________________________________________
echo Criando usuarios do grupo de secretariados...
echo ""
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd rogerio -e

echo "/josefina	/amanda	/rogerio"
echo "Senha padrao 'Senha123' de expiracao imediata"
echo ""
echo ______________________________________________________
echo ""

echo ______________________________________________________
echo Criando as permissoes dos usuarios e incluindo os 
echo grupos em seus respectivos diretorios
echo ""
chmod 777 /public/

chmod 770 /adm/
chown root:GRP_ADM /adm/

chmod 770 /ven/
chown root:GRP_VEN /ven/

chmod 770 /sec/
chown root:GRP_SEC /sec/

echo  "drwxrwxrwx	root	root		public/"
echo  "drwxrwx---	root	GRP_ADM		adm/"
echo  "drwxrwx---	root	GRP_VEN		ven/"
echo  "drwxrwx---	root	GRP_SEC		sec/"
echo ""
echo __________________________________________________
echo ""
echo __________________________________________________
echo Script de execucao finalizado!!!
echo __________________________________________________
