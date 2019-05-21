echo "alias rgc \"docker run --runtime=runsc -it --name=gvisor test_image /bin/bash\"" >> ~/.config/fish/config.fish
echo "Added alias rgc (run gvisor container) to fish rc"

echo "alias dsp \"docker system prune\"" >> ~/.config/fish/config.fish
echo "Added alias dsp (docker system prune) to fish rc"

echo "alias rgc2 \"dsp;rgc\"" >> ~/.config/fish/config.fish

echo "alias dbt \"docker build -t test_image ~/image\"" >> ~/.config/fish/config.fish
echo "Added alias dbt (docker build test_image) to fish rc"

echo "alias cprunsc \"sudo cp ./bazel-bin/runsc/linux_amd64_pure_stripped/runsc /usr/local/bin\"" >> ~/.config/fish/config.fish
echo "Added alias cprunsc to fish rc"
