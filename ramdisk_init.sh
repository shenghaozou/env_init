echo "Please make sure you installed docker before running this script"
echo "Stop docker"
sudo systemctl stop docker
sudo tar -zcC /var/lib docker > ~/backup.tar.gz
sudo rm -rf /var/lib/docker
echo "Mount Ramdisk. ramdisk_init.sh should only be executed once. The next time please execute ramdisk_start.sh"
bash ramdisk_start.sh
