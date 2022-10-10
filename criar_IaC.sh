#!/bin/bash

# Criando diretorios
mkdir /publico /adm /ven /sec


# Criando grupos
groupadd GRP_ADM
groupadd GRP_VEM
groupadd GRP_SEC


# Mudando dono e grupo das pastas
chown root:GRP_ADM /adm
chown root:GRP_VEM /ven
chown root:GRP_SEC /sec


# Criando usuarios

## Administradores
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_ADM

## Vendedores
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_VEM
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_VEM
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_VEM

## Secretarios
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -6 -salt bootcamp Senha123) -G GRP_SEC


# Alterando permições das pastas

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
