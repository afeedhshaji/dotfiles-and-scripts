#!/bin/bash

GREEN='\033[0;32m'

NC='\033[0m' # No Color

echo -e "       \t\tHost  \t\t\t|\t  Ping"

echo -e "---------------------------------------------------------"

echo -e "Google DNS server (8.8.8.8) \t\t|\t" ${GREEN} $(ping -w 100 -c 1 8.8.8.8 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}

echo -e "Cloudflare DNS server (1.1.1.1)\t\t|\t" ${GREEN} $(ping -w 100 -c 1 1.1.1.1 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}

echo -e "Chennai CSGO server (155.133.232.98)\t|\t" ${GREEN} $(ping -w 100 -c 1 155.133.232.98 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}

echo -e "Mumbai CSGO server (155.133.233.99)\t|\t" ${GREEN} $(ping -w 100 -c 1 155.133.233.99 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}

echo -e "Singapore CSGO server (103.28.54.3)\t|\t" ${GREEN} $(ping -w 100 -c 1 103.28.54.3 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}

echo -e "Hongkong CSGO server (153.254.86.164)\t|\t" ${GREEN} $(ping -w 100 -c 1 153.254.86.164 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}

echo -e "Dubai CSGO server (185.25.183.162)\t|\t" ${GREEN} $(ping -w 100 -c 1 185.25.183.162 | awk 'FNR == 2 { print $(NF-1) }' | cut -d'=' -f2) "ms" ${NC}
