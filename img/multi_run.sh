for i in $(eval echo {1..$2});
do
    echo "Current loop: $i"
    bash $1;
done
