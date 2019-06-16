echo "format: run_strace_exp.sh [TEST FILE NAME] [REPEAT TIMES]"
docker system prune -f
echo "Test object: $1"
F_NAME="/img/$1.sh"
echo "The selected file is $F_NAME"
docker run --runtime=runsc --cpuset-cpus=1 --name=gvisor test_image /bin/bash /img/multi_run.sh $F_NAME $2
mkdir -p /users/szou28/result
FROM="gvisor:/root/result/$1"
TO="/users/szou28/result/"
DEST="/users/szou28/result/$1"
sudo rm -rf $DEST
docker cp $FROM $TO
echo "FINISHED."

