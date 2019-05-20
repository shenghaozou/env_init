sudo apt-get install -y pkg-config zip g++ zlib1g-dev unzip python
rm -rf /tmp/bazelinstall
mkdir -p /tmp/bazelinstall
cd /tmp/bazelinstall
wget https://github.com/bazelbuild/bazel/releases/download/0.23.0/bazel-0.23.0-installer-linux-x86_64.sh
chmod +x bazel-0.23.0- installer-linux-x86_64.sh
./bazel-0.23.0- installer-linux-x86_64.sh --user
echo "set -gx PATH \$PATH $HOME/bin" >> ~/.config/fish/config.fish
echo "Please restart your fish session"

