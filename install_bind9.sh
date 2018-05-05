!#/bin/bash
echo script para la instalación de bind9 como DNS
echo descargando actualizaciones
sudo apt-get update
echo instalando actualizaciones
sudo apt-get upgrade
echo instalando bind9
sudo apt-get install bind9 bind9utils bind9-doc
echo bind instalado 
echo recargando el proceso de configuración
sudo systemctl daemon-reload
echo reiniciando bind
sudo systemctl restart bind9 
clear
echo bind instalado correctamente
echo script creado por 
echo -------------------------------------------------
echo Diego Martínez Villanueva y David Ramos Somolinos
echo -------------------------------------------------
echo may-3-2018