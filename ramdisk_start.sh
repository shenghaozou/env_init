#!/bin/sh
sudo mkdir /mnt/ramdisk
echo "Mount Ramdisk"
sudo mount -t tmpfs -o rw,size=20G tmpfs /mnt/ramdisk
echo "Stop docker"
sudo systemctl stop docker
echo "Untar docker data"
sudo tar -xzf ~/backup.tar.gz -C /mnt/ramdisk/
sudo ln -s /mnt/ramdisk/docker /var/lib/
echo "Start docker"
sudo systemctl start docker
echo "Done. Copy img to ramdisk"
cp ~/zar/test.img /mnt/ramdisk
echo "Done. Build Image."
docker build -t test_image ~/image

