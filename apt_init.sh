sudo apt update
sudo apt install -y htop fish mosh vim
echo "Update Vim Config..."
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

echo "Change Default Shell..."

echo /usr/bin/fish | sudo tee -a /etc/shells

echo "Installing Docker..."
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install -y apt-utils

# sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
# sudo adduser $USER libvirtd

echo "Installing Rmate"
sudo curl -o /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
sudo chmod +x /usr/local/bin/rmate

echo "Setting Tmux Config"
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
echo "set -g mouse on" >> .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

sudo chsh -s /usr/bin/fish $USER
