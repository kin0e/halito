#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo add-apt-repository ppa:wine/wine-builds
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install wine -y
wget https://the.earth.li/~sgtatham/putty/latest/w64/pscp.exe
yes | wine pscp.exe -pw descargar halo@181.215.98.244:/home/haloce.sh /root
yes | wine pscp.exe -pw descargar halo@181.215.98.244:/home/halofv.sh /root
echo "##SAPP HALO CE SERVERS###"
sleep 5s
echo "##DESCARGANDO ARCHIVOS##"
yes | wine pscp.exe -pw descargar halo@181.215.98.244:/home/haloce.tar.gz /root
echo "##CREANDO CARPETAS"
tar xzvf haloce.tar.gz
rm -R haloce.tar.gz
echo "PROCESO TERMINADO"
sleep 3s
echo "##SAPP HALO FV SERVERS###"
echo "##DESCARGANDO ARCHIVOS##"
yes | wine pscp.exe -pw descargar halo@181.215.98.244:/home/halofv.tar /root
echo "##CREANDO CARPETAS"
tar xvf halofv.tar
rm -R halofv.tar
rm -R pscp.exe
mv /root/root /root/halofv
mv /root/halofv/halofv /root/halofv/2350
echo "PROCESO TERMINADO"
sleep 3s

