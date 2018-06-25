#!/bin/bash

echo "##SAPP HALO FV SERVERS###"
sleep 5s
wget https://the.earth.li/~sgtatham/putty/latest/w64/pscp.exe
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
