#! /bin/bash

while true
do

QUERY0="$(ipconfig getpacket en0)";
QUERY1="$(ipconfig getpacket en1)";
MAC0="$(ifconfig en0 | grep ether | awk '{print $2}')";
MAC1="$(ifconfig en1 | grep ether | awk '{print $2}')";

echo $QUERY0 | grep 'BOOTREPLY' > /dev/null;
ET=$?;

echo $QUERY1 | grep 'BOOTREPLY' > /dev/null;
WI=$?;

echo " ";
echo "   Hostname: $HOSTNAME";
echo " ";

echo "Wireless Ethernet (en1)";
echo "-----------------------";

if [ $WI -eq 0 ]
 then
  echo $QUERY1 | grep 'yiaddr = 0.0.0.0' > /dev/null;
  AT=$?;
  if [ $AT -eq 0 ]
   then
    IP="$(echo $QUERY1 | sed 's/.*ciaddr = \([[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\).*/\1 (Static)/')";
   else
    IP="$(echo $QUERY1 | sed 's/.*yiaddr = \([[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\).*/\1 (DHCP)/')";
  fi;
  SUBNET="$(echo $QUERY1 | sed 's/.*subnet_mask (ip): \([[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\).*/\1/')";
  ROUTER="$(echo $QUERY1 | sed 's/.*router (ip_mult): {\([^}]*\)}.*/\1/')";
  DNS="$(echo $QUERY1 | sed 's/.*domain_name_server (ip_mult): {\([^}]*\)}.*/\1/')";
  SEARCH="$(echo $QUERY1 | sed 's/.*domain_name (string): \(.*\) [[:alpha:]].*/\1/')";
  SPEED="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep lastTxRate: | sed 's/.*: //' | sed 's/$/ MBit\/s/')";
  echo "  IP Address: $IP";
  echo "  Subnet Mask: $SUBNET";
  echo "    Router: $ROUTER";
  echo "  MAC Address: $MAC1";
  echo "     Speed: $SPEED"
elif ! [ $WI -eq 0 ]
 then
  echo "  IP Address: inactive";
  echo "  MAC Address: $MAC1";
fi;

sleep 3
done
