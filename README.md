# YCSB-C

Yahoo! Cloud Serving Benchmark in C++, a C++ version of YCSB (https://github.com/brianfrankcooper/YCSB/wiki)

## Quick Start

This is a cmake project. An `ycsbc` executable object is gernerated in cmake build directory.

Run Workload A with a [TBB](https://www.threadingbuildingblocks.org)-based
implementation of the MPT database, for example:
```
./ycsbc -db 2PI -threads 4 -P workloads/workloada.spec
```
Currently we have 4 databases.
- [x] basic
- [ ] cpu
- [ ] 2PI
- [ ] FLC 

Note that we do not have load and run commands as the original YCSB. Specify
how many records to load by the recordcount property. Reference properties
files in the workloads dir.

