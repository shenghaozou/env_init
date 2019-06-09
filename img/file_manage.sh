LOG="/root/result/$1"
echo "Log path: $LOG"
mkdir -p $LOG

F_NAME="$LOG/$(date +%M%S)"
bash run_exp.sh $F_NAME

echo "Finished! Log generated in $F_NAME"
