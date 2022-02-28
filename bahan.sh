apt update
apt upgrade
apt install git
apt install wget
apt install proot
apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build
cd bulid
cmake -DWITH_HWLOC=OFF ..
make
