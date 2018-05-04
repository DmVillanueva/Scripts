echo script para instalar y configurar Ryu
echo instalando python
sudo apt-get install python
echo instalando pip
sudo apt install python-pip
echo actualizando
sudo apt-get update
echo instalando actualizaciones
sudo apt-get upgrade
echo instalando Ryu
sudo pip install ryu 
echo instalando git
sudo apt-get install git
echo descargando
sudo git clone https://github.com/osrg/ryu 
clear
echo ryu descargado e instalado correctamente
echo script creado por 
echo -------------------------------------------------
echo Diego Martínez Villanueva y David Ramos Somolinos
echo -------------------------------------------------
echo may-02-2018 