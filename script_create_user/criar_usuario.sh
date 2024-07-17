#!/bin/bash

echo "Criando usuarios do sistema..."

useradd guest -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest -e

useradd guest2 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest2 -e

useradd guest3 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest3 -e
