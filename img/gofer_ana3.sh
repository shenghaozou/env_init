rm -rf /root/.bashrc
/root/anaconda3/bin/conda init
filename=`basename "$0"`
me="${filename%.*}"
echo "My experiment name: $me"
bash file_manage.sh $me