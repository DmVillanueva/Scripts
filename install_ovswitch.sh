!#/bin/bash
echo script para la instalación de openvswitch
sudo service network-manager stop
echo instalando gcc
sudo apt-get install gcc
echo instalando make
sudo apt-get install make
echo instalando pkg-config
sudo apt-get install pkg-config
echo instalando autoconf
sudo apt-get install autoconf
echo instalando automake
sudo apt-get install automake
echo instalando python
sudo apt-get install python
echo instalando build
sudo apt-get install build-essential
echo actualizando el S.O 
sudo apt-get update
echo instalando actualizaciones
sudo apt-get upgrade
echo instalando las dependencias
sudo apt-get install python-simplejson python-qt4 python-twisted.conch automake autoconf gcc uml-utilities lib tool build essential pkg-config
echo descargando openvswitch
wget http://openvswitch.org/releases/openvswitch-1.7.0.tar.gz
echo descomprimiendo archivos
tar xf openvswitch-1.7.0.tar.gz
cd openvswitch-1.7.0/
echo instalando lib-ssl, cambiar por version de ubuntu si da error
sudo apt-get install libssl-dev iproute2 tcpdump linux-headers-4.15.0-20-generic
echo compilando e instalando openvswitch
./boot
./configure
./configure --with-linux=/lib/modules/4.15.0-20-generic/build
sudo make
sudo make install
sudo insmod datapath/linux/openvswitch.ko
echo creando fichero de configuracion
sudo touch /usr/local/etc/ovs-vswitchd.conf
sudo mkdir -p /usr/local/etc/openvswitch
echo cargando la configuración
sudo ovsdb-tool create /usr/local/etc/openvswitch/conf.db
ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock --remote=db:Open_vSwitch,manager_options --private-key=db:SSL,privavte_key --certificate=db:SSL,certificate --bootstrap-ca-cert=db:SSL, ca_cert --pidfile --detach
echo inicializando la base de datos
sudo ovs-vscil --no-wait init 
sudo ovs-vswitchd --pidfile --detach
echo comprobando la versión insalada ded openvswitch
ovs-vsctl --version
clear
echo instalación finalizada
echo versión
ovs-vsctl --version 
echo script creado por 
echo -------------------------------------------------
echo Diego Martínez Villanueva y David Ramos Somolinos
echo -------------------------------------------------
echo apr-30-2018