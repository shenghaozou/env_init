rm -rf /tmp/goinstall
mkdir -p /tmp/goinstall
cd /tmp/goinstall
wget https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf *.tar.gz
mkdir -p ~/.config/fish/
touch ~/.config/fish/config.fish
echo "set -gx PATH \$PATH /usr/local/go/bin" >> ~/.config/fish/config.fish
echo "Please restart your fish session"
