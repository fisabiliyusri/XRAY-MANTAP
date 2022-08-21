#!/bin/bash
# ==========================================
cd
rm -r updatedll
wget -O updatedll "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/updatedll.sh"
rm -rf updatedll

# hapus
cd /usr/bin
rm -rf xmenu
rm -rf updatedll
rm -r updatedll
# download
#
cd /usr/bin
wget -O xmenu "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/xmenu.sh"
wget -O add-akun "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/add-akun.sh"
wget -O updatedll "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/updatedll.sh"
wget -O add-akun "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/add-akun.sh"
wget -O delete-akun "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/delete-akun.sh"
wget -O certv2ray "https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/xray/certv2ray.sh"
wget -O restart-xray "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/restart-xray.sh"
wget -O xmenu "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/xmenu.sh"
wget -O auto-pointing "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/auto-pointing.sh"
wget -O cek-port "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/cek-port.sh"
wget -O xmenu "https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/menu/xmenu.sh"

#
chmod +x /usr/bin/updatedll
chmod +x /usr/bin/xmenu
chmod +x xmenu
chmod +x add-akun
chmod +x delete-akun
chmod +x updatedll
chmod +x add-akun
chmod +x certv2ray
chmod +x restart-xray
chmod +x auto-pointing
chmod +x cek-port

cd
