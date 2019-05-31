cp zar_build.sh ~/zar
cp strace_build.sh ~/strace-from-scratch/

echo "Prepare sdb /img, confirm?"
read -p "Press enter to continue"
bash sdb_create.sh
bash sdb_mount.sh

echo "Prepare ramdisk, confirm?"
read -p "Press enter to continue"
bash ramdisk_init.sh
bash ramdisk_start.sh

cd ~/gvisor
git checkout imgfs
~/bin/bazel build runsc
sudo cp ./bazel-bin/runsc/linux_amd64_pure_stripped/runsc /usr/local/bin

