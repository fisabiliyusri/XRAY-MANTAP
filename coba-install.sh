#
echo -e "
"
date
echo ""
domain=$(cat /root/domain)
sleep 1
mkdir -p /etc/xray 
echo -e "[ ${green}INFO${NC} ] Checking... "
apt install iptables iptables-persistent -y
sleep 1
echo -e "[ ${green}INFO$NC ] Setting ntpdate"
ntpdate pool.ntp.org 
timedatectl set-ntp true
sleep 1
echo -e "[ ${green}INFO$NC ] Enable chronyd"
systemctl enable chronyd
systemctl restart chronyd
sleep 1
echo -e "[ ${green}INFO$NC ] Enable chrony"
systemctl enable chrony
systemctl restart chrony
timedatectl set-timezone Asia/Jakarta
sleep 1
echo -e "[ ${green}INFO$NC ] Setting chrony tracking"
chronyc sourcestats -v
chronyc tracking -v
echo -e "[ ${green}INFO$NC ] Setting dll"
apt clean all && apt update
apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
apt install socat cron bash-completion ntpdate -y
ntpdate pool.ntp.org
apt -y install chrony
apt install zip -y
apt install curl pwgen openssl netcat cron -y
#

#
    server {
             listen 80;
             listen [::]:80;
             listen 443 ssl http2 reuseport;
             listen [::]:443 http2 reuseport;	
             server_name infinity.mantapxsl.my;
             ssl_certificate /etc/xray/xray.crt;
             ssl_certificate_key /etc/xray/xray.key;
             ssl_ciphers EECDH+CHACHA20:EECDH+CHACHA20-draft:EECDH+ECDSA+AES128:EECDH+aRSA+AES128:RSA+AES128:EECDH+ECDSA+AES256:EECDH+aRSA+AES256:RSA+AES256:EECDH+ECDSA+3DES:EECDH+aRSA+3DES:RSA+3DES:!MD5;
             ssl_protocols TLSv1.1 TLSv1.2 TLSv1.3;
             root /home/vps/public_html;
location = /xrayws
{
proxy_redirect off;
proxy_pass http://unix:/run/xray/vless_ws.sock;
proxy_http_version 1.1;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
proxy_set_header Host $http_host;
}
location = /xrayvws
{
proxy_redirect off;
proxy_pass http://unix:/run/xray/vmess_ws.sock;
proxy_http_version 1.1;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
proxy_set_header Host $http_host;
}
location = /xraytrojanws
{
proxy_redirect off;
proxy_pass http://unix:/run/xray/trojan_ws.sock;
proxy_http_version 1.1;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
proxy_set_header Host $http_host;
}
location = /xrayssws
{
proxy_redirect off;
proxy_pass http://127.0.0.1:30300;
proxy_http_version 1.1;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
proxy_set_header Host $http_host;
}
location /
{
proxy_redirect off;
proxy_pass http://127.0.0.1:700;
proxy_http_version 1.1;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
proxy_set_header Host $http_host;
}
location ^~ /vless-grpc
{
proxy_redirect off;
grpc_set_header X-Real-IP $remote_addr;
grpc_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
grpc_set_header Host $http_host;
grpc_pass grpc://unix:/run/xray/vless_grpc.sock;
}
location ^~ /vmess-grpc
{
proxy_redirect off;
grpc_set_header X-Real-IP $remote_addr;
grpc_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
grpc_set_header Host $http_host;
grpc_pass grpc://unix:/run/xray/vmess_grpc.sock;
}
location ^~ /trojan-grpc
{
proxy_redirect off;
grpc_set_header X-Real-IP $remote_addr;
grpc_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
grpc_set_header Host $http_host;
grpc_pass grpc://unix:/run/xray/trojan_grpc.sock;
}
location ^~ /ss-grpc
{
proxy_redirect off;
grpc_set_header X-Real-IP $remote_addr;
grpc_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
grpc_set_header Host $http_host;
grpc_pass grpc://127.0.0.1:30310;
}
        }

#
