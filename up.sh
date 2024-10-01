#!/bin/bash

urls=(
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_domain_list.txt ./rules/geosite_cn.txt"
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_ip_list.txt ./rules/geoip_cn.txt"
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/gfw_domain_list.txt ./rules/geosite_geolocation-!cn.txt"
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/cdn_domain_list.txt ./rules/geosite_apple.txt"
)

mkdir -p ./rules

for url in "${urls[@]}"; do
    curl -Ss -o ${url#* } ${url% *}
done
