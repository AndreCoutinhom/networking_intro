# To assign a network adapter a VLAN in Linux, many tools can be used, such as ip, nmcli, and vconfig (deprecated). However, first, we need to ensure that the Kernel has the 802.1Q module loaded:

sudo modprobe 8021q

# Subsequently, we can use lsmod to make sure 8021q was loaded successfully:

grep 8021

# Now, we need to find the name of the physical Ethernet interface that we will create the VLAN interface on top of, which is eth0:

ip a

# Then, we will use vconfig to create a new interface that is a member of the desired VLAN, 20, for example, on top of eth0:

sudo vconfig add eth0 20

# To use ip instead:

sudo ip link add link eth0 name eth0.20 type vlan id 20

#Then, based on the subnet assigned to the addresses with VALN 20 within the local network, we need to assign the interface an IP address and then start it:

sudo ip addr add 192.168.1.1/24 dev eth0.20
sudo ip link set up eth0.20

# At last, we can check whether the interface has changed states to up:

ip a | grep eth0.20

