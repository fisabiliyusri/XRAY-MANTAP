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


# Settingan Di Cloudflare
1. Buat VPS Baru
2. Pointing Dulu Domain Kamu, Kalo sudah pernah di pointing
   - Pergi ke dash.cloudflare.com,lalu pilih domain punya kamu, di tab TLS/SSL lalu pilih Overview, di tab TLS/SSL Harus pilih yang FULL
   - FULL (Encrypts end-to-end, using a self signed certificate on the server)✅
   ![settinggambar1](https://github.com/fisabiliyusri/XRAY/MANTAP/blob/master/img/settinggambar1?raw=true)
   ![settinggambar2](https://github.com/fisabiliyusri/XRAY/MANTAP/blob/master/img/settinggambar2?raw=true)
   ![settinggambar3](https://github.com/fisabiliyusri/XRAY/MANTAP/blob/master/img/settinggambar3?raw=true)
   - Lalu pilih Edge Certificates disini kamu harus matikan Always Use HTTPS (Harus Mati/OFF)❌
   ![settinggambar4](https://github.com/fisabiliyusri/XRAY/MANTAP/blob/master/img/settinggambar4?raw=true)
   - Buka tab Network di cloudflare kamu aktifkan WebSocket nya ✅
   ![settinggambar5](https://github.com/fisabiliyusri/XRAY/MANTAP/blob/master/img/settinggambar5?raw=true)
   ![settinggambar6](https://github.com/fisabiliyusri/XRAY/MANTAP/blob/master/img/settinggambar6?raw=true)
3. Login ke VPS kamu ( wajib pake user ***root***)

# Cara Install Script Nya
1. masuk ke vps lalu ketik
```
sudo su
```
2. Masukan Nama Domain Kamu, domain harus aktif
- contoh nama domain punya aku,silahkan ganti dengan punya kamu
```
cat >/root/domain <<EOF
mantapxsl.my.id
EOF
```
dan
```
mkdir -p /etc/xray
cat >/etc/xray/domain <<EOF
mantapxsl.my.id
EOF
```

3. Salin kode di bawah ini dan paste kan ke dalam vps punya kamu
- maka proses install akan berjalan, jangan keluar dari vps
- jika keluar dari vps saat lagi proses install,maka akan gagal
```

```
4. jika sudah selesai, ketik xmenu untuk menampilkan menu
```
xmenu
```
