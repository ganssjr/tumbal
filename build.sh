#!/usr/bin/bash
# Written by: cyberknight777
# Build Author
msg() {
	echo
    echo -e "\e[1;32m$*\e[0m"
    echo
}
##----------------------------------------
# Update && Upgrade
msg "|| Update && Upgrade Package ||"	
apt install openssh-server screen python git openjdk-8-jdk android-tools-adb bc bison \
build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev \
lib32readline-dev lib32z1-dev  liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev \
libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev \
libtinfo5 libncurses5 ccache -y
wget 'https://storage.googleapis.com/git-repo-downloads/repo' -P /usr/local/sbin/
chmod +x /usr/local/sbin/repo
git config --global user.name "Arif gans"
git config --global user.email "arip.juniarto12@gmail.com"
mkdir blaze && cd blaze
msg "Cloning rom | Env | Makepath"
repo init -u https://github.com/ProjectBlaze/manifest.git -b 12.1
repo sync -c -j$(nproc --all) --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune
git clone https://github.com/ganssjr/device_xiaomi_rova -b 12.1 device/xiaomi/rova && git clone https://github.com/ganssjr/vendor_xiaomi_rova -b 12.1 vendor/xiaomi/rova && git clone https://github.com/ItoRenz-Build/kernel_xiaomi_mi8937 -b 12.1 kernel/xiaomi/rova
. build/envsetup.sh
lunch blaze_rova-userdebug
brunch rova
