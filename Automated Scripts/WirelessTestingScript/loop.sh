#! /bin/bash



while true
do 
    printf "Connected to >>>>>>>>>>>>>>>>>>>"

    /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep -A 1 BSSID
#   networksetup -listallhardwareports | grep -A 3  Wi-Fi | tail -n 2
    printf "\n\nNetwork Broadcast on ncpsp1\n"
    system_profiler SPAirPortDataType | grep -A 7 ncpsp1
    sleep 3
done
