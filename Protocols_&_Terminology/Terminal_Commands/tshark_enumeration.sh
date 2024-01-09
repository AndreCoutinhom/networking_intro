# Additionally, to enumerate the used VLAN IDs from a packet dump, we can utilize tshark:

tshark -r "The Ultimate PCAP v20221220.pcapng" -T fields -e vlan.id | sort -n -u
