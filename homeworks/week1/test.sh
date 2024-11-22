#!/bin/bash

# 檢查是否提供參數
if [ -z "$1" ]; then
    echo "請提供一個數字作為參數，例如：./num.sh 10"
    exit 1
fi

# 檢查參數是否為正整數
if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -le 0 ]; then
    echo "請輸入一個正整數！"
    exit 1
fi

# 產生檔案
n=$1
for ((i = 1; i <= n; i++)); do
    touch "$i.js"
    echo "已建立檔案：$i.js"
done

echo "所有檔案建立完成！"

