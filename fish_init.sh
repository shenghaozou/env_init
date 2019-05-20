echo "alias rgv \"docker run --runtime=runsc -it --name=gvisor test_image /bin/bash\"" >> ~/.config/fish/config.fish
echo "Added alias rgv (run gvisor container) to fish rc"

echo "alias dsp \"docker system prune\"" >> ~/.config/fish/config.fish
echo "Added alias dsp (docker system prune) to fish rc"

echo "alias dbt \"docker build -t test_image ~/image\"" >> ~/.config/fish/config.fish
echo "Added alias dbt (docker build test_image) to fish rc"

