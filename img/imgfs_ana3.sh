rm -rf /root/.bashrc
/img/bin/conda init
. /root/.bashrc
filename=`basename "$0"`
me="${filename%.*}"
echo "My experiment name: $me"
bash /img/file_manage.sh $me
