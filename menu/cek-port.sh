#!/bin/bash
# Script by SL

xrayport="$(netstat -ntlp | grep -i xray | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
nginxport="$(netstat -ntlp | grep -i nginx | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sslhport="$(netstat -ntlp | grep -i sslh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sldnsport="$(netstat -ntlp | grep -i sldns-client | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
wsport="$(netstat -ntlp | grep -i python | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnelport="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
#squidport="$(netstat -nlpt | grep -i squid | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport=OFF
nodeproxyport=OFF
udpgwport="$(netstat -nlpt | grep -i badvpn-udpgw | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
clear
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                    Auto Script MANTAP by SL    "
echo -e "\e[0;37m                    Port Yang Sedang Aktif      "
echo -e "\e[0;37m                    Service Port                "
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                    Port Nginx      :  "$nginxport
echo -e "\e[0;37m                    Port Xray       :  "$xrayport
echo -e "\e[0;37m                    Port SlowDNS    :  "$sldnsport
echo -e "\e[0;37m                    Port OpenSSH    :  "$opensshport
echo -e "\e[0;37m                    Port Dropbear   :  "$dropbearport
echo -e "\e[0;37m                    Port Stunnel    :  "$stunnelport
echo -e "\e[0;37m                    Port SSLH       :  "$sslhport
echo -e "\e[0;37m                    Port Websocket  :  "$wsport
echo -e "\e[0;37m                    Port OpenVPN    :  "$openvpnport
echo -e "\e[0;37m                    Port UDPGW      :  "$udpgwport
echo -e "\e[0;37m                    Port Squid      :  "$squidport
echo -e "\e[0;37m                    Port CloudFront :  "$nodeproxyport
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                    * Info                      "
echo -e "\e[0;37m                    * Jika port nya tidak muncul"
echo -e "\e[0;37m                    * berarti port nya mati/OFF "
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
echo ""
read -sp " Press ENTER to go back"
echo ""
