export PATH=/img/python_binary/bin/:$PATH
filename=`basename "$0"`
me="${filename%.*}"
echo "My experiment name: $me"
bash file_manage.sh $me
