echo "Python version information:"
python3 --version
python3 -c "import sys; print(sys.path)"
strace -ttt -T -f -C -w python3 /root/ana3_imgfs.py &> $1
read -p "Press enter to continue"
vim $1
