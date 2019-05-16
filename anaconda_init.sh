rm -rf /tmp/ana_install
mkdir -p /tmp/ana_install
cd /tmp/ana_install
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
chmod +x *.sh
bash *.sh

mkdir -p ~/.config/fish/
touch ~/.config/fish/config.fish
echo "set -gx PATH /users/szou28/anaconda3/bin \$PATH" >> ~/.config/fish/config.fish

