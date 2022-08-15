#!/bin/bash
clear
echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║                        ┃ Script By SL ┃                       ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"
echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║ ┃ Link Script ┃  ┃ https://github.com/fisabiliyusri/mantapv2 ┃             ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"
echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║                        ┃ XRAY MENU ┃                          ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"  
echo "║ 1.XRAY ALL WEBSOCKET (443)                                    ║"
echo "║ 2.XRAY TROJAN (GFW)                                           ║"
echo "║ 3.XRAY VLESS                                                  ║"
echo "║ 4.XRAY VMESS                                                  ║"
echo "║ 5.XRAY SHADOWOSOCKS                                           ║"
echo "║ 6.XRAY SOCKS5                                                 ║"
echo "║ 7.XRAY UPDATE SCRIPT                                          ║"
echo "║ 8.Restart XRAY                                                ║"
echo "║ 9.Update Certificate                                          ║"
echo "║ 10.ADD DOMAIN                                                 ║"
echo "║ 11.CARA POINTING DOMAIN DI CLOUDFLARE                         ║"
echo "║ 12.Speedtest Server                                           ║"
echo "║ 13.Reboot                                                     ║"
echo "║ 14.Exit Menu                                                  ║"
echo "╚═════════════════════════════════════════════════════════════════╝" 
read -p "     Select From Options [1-69 or x] :  " menu
case $menu in 
1)
menu-ws
;;
2)
menu-trojan
;;
3)
menu-vless
;;
4)
menu-vmess
;;
5)
menu-ss
;;
6)
menu-socks
;;
7)
updatesc
;;
8)
restart-xray
;;
9)
xraycert
;;
10)
add-domain
;;
11)
pointing
;;
12)
speedtest
;;
13)
reboot
;;
14)
exit
;;
*)
echo "Input The Correct Number !"
;;
esac
