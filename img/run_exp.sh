echo "Python version information:"
python3 --version
python3 -c "import sys; print(sys.path)"
SAVE_FILE="$1.st"
strace -ttt -T -f -C -w python3 /root/ana3_imgfs.py &> $SAVE_FILE
