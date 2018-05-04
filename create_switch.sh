!#/bin/bash
echo script para la creación de switch virtual
ovs-vsctl add-br br0
ovs-vsctl add-port br0 ens38
ovs-vsctl add-port br0 ens39
ovs-vsctl add-port br0 ens40
ovs-vsctl add-port br0 ens41
ovs-vsctl add-port br0 ens42
echo switch creado:
echo script creado por 
echo -------------------------------------------------
echo Diego Martínez Villanueva y David Ramos Somolinos
echo -------------------------------------------------
echo apr-30-2018
sudo ovs-vsctl show