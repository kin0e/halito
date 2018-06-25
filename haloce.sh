#!/bin/bash

echo "##SAPP HALO CE SERVERS###"
sleep 5s
wget https://the.earth.li/~sgtatham/putty/latest/w64/pscp.exe
echo "##DESCARGANDO ARCHIVOS##"
yes | wine pscp.exe -pw descargar halo@181.215.98.244:/home/haloce.tar.gz /root
echo "##CREANDO CARPETAS"
tar xzvf haloce.tar.gz
rm -R haloce.tar.gz
rm -R pscp.exe
echo "PROCESO TERMINADO"
sleep 3s
