echo | sudo tee --append /etc/network/interfaces << EOL
# A static ip template
auto enp0s8
iface enp0s8 inet static
address 192.168.56.10
netmask 255.255.255.0

EOL
