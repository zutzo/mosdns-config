#!/bin/bash

# 获取脚本所在的目录
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# 定义文件下载的 URL 和保存路径
urls=(
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_domain_list.txt $SCRIPT_DIR/rules/geosite_cn.txt"
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_ip_list.txt $SCRIPT_DIR/rules/geoip_cn.txt"
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/gfw_domain_list.txt $SCRIPT_DIR/rules/geosite_geolocation-!cn.txt"
    "https://raw.githubusercontent.com/pmkol/easymosdns/rules/cdn_domain_list.txt $SCRIPT_DIR/rules/geosite_apple.txt"
)

# 创建保存文件的目录
mkdir -p "$SCRIPT_DIR/rules"

# 下载文件
for url in "${urls[@]}"; do
    curl -Ss -o ${url#* } ${url% *}
done
