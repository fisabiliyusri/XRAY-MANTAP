# XRAY MANTAP
- ***Script XRAY Multi Port 443/80 By SL***

# FITUR XRAY TLS
- TROJAN WS        : **443**
- TROJAN GRPC      : **443**
- SHADOWSOCKS WS   : **443**
- SHADOWSOCKS GRPC : **443**
- VMESS WS         : **443**
- VMESS GRPC       : **443**
- VLESS WS         : **443**
- VLESS GRPC       : **443**

# FITUR XRAY HTTP
- TROJAN WS        : **80**
- TROJAN GRPC      : **80**
- SHADOWSOCKS WS   : **80**
- SHADOWSOCKS GRPC : **80**
- VMESS WS         : **80**
- VMESS GRPC       : **80**
- VLESS WS         : **80**
- VLESS GRPC       : **80**


# Syarat && Bahan Untuk Menggunakan Script Ini
- Wajib Punya VPS
- Wajib Punya Akun Cloudflare
- Wajib Punya Domain Punya Kamu Sendiri
- ***Jika semua syarat dan Bahan sudah terpenuhi ,silahkan di coba script ini***

# Settingan Di Cloudflare
1. Buat VPS Baru
2. Pointing Dulu Domain Kamu, Kalo sudah pernah di pointing
   - Pergi ke dash.cloudflare.com,lalu pilih domain punya kamu, di tab TLS/SSL lalu pilih Overview, di tab TLS/SSL Harus pilih yang FULL
   - FULL (Encrypts end-to-end, using a self signed certificate on the server)✅
   ![settinggambar1](https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/img/settingambar1.jpg)
   ![settinggambar2](https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/img/settingambar2.jpg)
   ![settinggambar3](https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/img/settingambar3.jpg)
   - Lalu pilih Edge Certificates disini kamu harus matikan Always Use HTTPS (Harus Mati/OFF)❌
   ![settinggambar4](https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/img/settingambar4.jpg)
   - Buka tab Network di cloudflare kamu aktifkan WebSocket nya ✅
   ![settinggambar5](https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/img/settingambar5.jpg)
   ![settinggambar6](https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/img/settingambar6.jpg)
3. Setting Di Cloudflare Selesai
# Cara Install Script Nya
- Login ke VPS kamu ( wajib pake user ***root***)
1. MASUK KE VPS LALU KETIK
```
sudo su
```
2. Update Dulu VPS NYA
```
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot
```
- Otomatis Akan Reboot/ Hidupkan Ulang
3. Login Lagi Ke VPS NYA
4. Masukan Nama Domain Kamu, domain harus aktif
- contoh nama domain punya aku,silahkan ganti dengan punya kamu
```
cat >/root/domain <<EOF
mantapxsl.my.id
EOF
```
- ganti mantapxsl.my.id menjadi nama domain punya kamu
```
mkdir -p /etc/xray
cat >/etc/xray/domain <<EOF
mantapxsl.my.id
EOF
```

5. Salin kode di bawah ini dan paste kan ke dalam vps punya kamu
- maka proses install akan berjalan, jangan keluar dari vps
- jika keluar dari vps saat lagi proses install,maka akan gagal
```
wget https://raw.githubusercontent.com/fisabiliyusri/XRAY-MANTAP/main/setup.sh && chmod +x setup.sh && ./setup.sh
```
6. jika sudah selesai,lalu ketik xmenu untuk menampilkan menu
```
xmenu
```
7. DONE / SELESAI
# INFO KODE SCRIPT
- xmenu (untuk menampilkan menu
- updatedll (untuk update sc)
- ...

# Cara Pointing Domain Di Cloudflare
- Loading ...
# Cara Pointing Subdomain Secara Otomatis Di Cloudflare
- Loading ...
