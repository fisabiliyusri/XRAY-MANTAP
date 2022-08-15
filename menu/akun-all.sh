rce /var/lib/scrz-prem/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
tr="$(cat ~/log-install.txt | grep -w "Trojan WS " | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;41;36m           TROJAN ACCOUNT          \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

		read -rp "User: " -e user
		user_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
clear
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
		echo -e "\E[0;41;36m           TROJAN ACCOUNT          \E[0m"
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			read -n 1 -s -r -p "Press any key to back on menu"
			trojan-menu
		fi
	done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#trojanws$/a\#! '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\#! '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

systemctl restart xray
trojanlink1="trojan://${uuid}@${domain}:${tr}?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=bug.com#${user}"
trojanlink="trojan://${uuid}@${domain}:${tr}?path=%2Ftrojan-ws&security=tls&host=bug.com&type=ws&sni=bug.com#${user}"
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "====== XRAY MANTAP Multi Port======="
echo -e "INFORMASI AKUN VPN XRAY"
echo -e "IP: $MYIP"
echo -e "Host/Domain: $domain"
echo -e "Password/ID: $uuid"
echo -e "====== Service Port ======="
echo -e "Websocket TLS  : 443"
echo -e "Websocket HTTP : 80"
echo -e "GRPC TLS       : 443"
echo -e "*Note OPOK: opok only supports coremeta"
echo -e "*Note SHADOWSOCKS: gunakan custom config atau plugin xray"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Protokol VPN: TROJAN"
echo -e "Network: WS/GRPC"
echo -e "====== Path ======="
echo -e "=> WS TLS : /xraytrojanws"
echo -e "=> GRPC   : trojan-grpc"
echo -e "=> OPOK   : ws://bugcom/xraytrojanws"
echo -e "====== Import Config From Clipboard ======="
echo -e "URL Config WS TLS    :
echo -e "URL Config GRPC TLS  : 
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Protokol VPN: SHADOWSOCKS"
echo -e "Network: WS/GRPC"
echo -e "Method Cipers : aes-128-gcm"
echo -e "====== Path ======="
echo -e "=> WS TLS : /xrayssws"
echo -e "=> GRPC   : ss-grpc"
echo -e "=> OPOK   : ws://bugcom/xrayssws"
echo -e "====== Import Config From Clipboard ======="
echo -e "URL Config WS TLS    :
echo -e "URL Config GRPC TLS  : 
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Protokol VPN: VLESS"
echo -e "Network: WS/GRPC"
echo -e "====== Path ======="
echo -e "=> WS TLS : /xrayws"
echo -e "=> GRPC   : vless-grpc"
echo -e "=> OPOK   : ws://bugcom/xrayws"
echo -e "====== Import Config From Clipboard ======="
echo -e "URL Config WS TLS    :
echo -e "URL Config GRPC TLS  : 
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Protokol VPN: VMESS"
echo -e "Alter ID: 0"
echo -e "Network: WS/GRPC"
echo -e "====== Path ======="
echo -e "=> WS TLS : /xrayvws"
echo -e "=> GRPC   : vmess-grpc"
echo -e "=> OPOK   : ws://bugcom/xrayvws"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
