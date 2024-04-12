# Yahoo! Cloud System Benchmark
# Workload A: Update heavy workload
#   Application example: Session store recording recent actions
#                        
#   Read/insert ratio: 50/50
#   Default data size: 1 KB records (10 fields, 100 bytes each, plus key)
#   Request distribution: zipfian

recordcount=320000
operationcount=960000
workload=com.yahoo.ycsb.workloads.CoreWorkload

readallfields=true

readproportion=0.4
updateproportion=0.4
scanproportion=0
insertproportion=0.2

requestdistribution=uniform

