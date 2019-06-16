FILE="test_list"

while read CMD;
do
    bash run_strace_exp.sh "$CMD" 2
done < "$FILE"
