export PATH=/bin/python_binary/bin/:$PATH
filename=`basename "$0"`
me="${filename%.*}"
echo "My experiment name: $me"
bash /img/file_manage.sh $me
