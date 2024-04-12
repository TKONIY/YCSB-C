#/bin/bash
workload_path=./workloads
output_path=./out_datas

rm -rf $output_path
mkdir $output_path

workload_files=$(ls $workload_path/*.spec)
for workload_file in $workload_files; do
    workload_name=$(basename $workload_file .spec)
    echo "Generating dataset for $workload_name"
    ./build/ycsbc -db basic -threads 4 -P $workload_file >> $output_path/$workload_name.txt
done


