
#!/bin/bash
#
wire_name=wlp4s0
wlan_name=1402
wlan_pass=51990275abc
echo "start the $wire_name..."
ip link set $wire_name up
[ `echo $?` -eq 0 ] && echo "start the $wire_name ok."
echo "Verify the password of $wlan_name..."
wpa_supplicant -B -i $wire_name -c <(wpa_passphrase "$wlan_name" "$wlan_pass") &>/dev/null
[ `echo $?` -eq 0 ] && echo "the $wlan_name is ok."
sleep 2
echo "Configure ip ..."
dhclient $wire_name
[ `echo $?` -eq 0 ] && echo "ok."
ifconfig
