#!/bin/bash

echo "Criando os diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd -m carlos -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd -m maria -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd -m joao -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM

useradd -m debora -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd -m sebastiana -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd -m roberto -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN

useradd -m josefina -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd -m amanda -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd -m rogerio -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
