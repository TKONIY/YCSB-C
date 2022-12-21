#pragma once
#include "mpt/gpu_mpt.cuh"
#include "mpt/node.cuh"
#include "util/timer.cuh"
#include <iostream>
#include <mutex>
#include <random>
#include <stddef.h>
#include <stdint.h>
#include <string>

#include "core/db.h"
#include "core/properties.h"

namespace ycsbc {

class GmptflcDB : public DB {
private:
  GpuMPT::Compress::MPT *mpt{};

public:
  void Init() { mpt = new GpuMPT::Compress::MPT; }

  int Read(const std::string &table, const std::string &key,
           const std::vector<std::string> *fields,
           std::vector<KVPair> &result) {
    // TODO
    assert(0);
    return -1;
  }

  int Scan(const std::string &table, const std::string &key, int len,
           const std::vector<std::string> *fields,
           std::vector<std::vector<KVPair>> &result) {
    assert(0);
    return -1;
  }

  int Update(const std::string &table, const std::string &key,
             std::vector<KVPair> &values) {
    assert(0);
    return -1;
  }

  int Insert(const std::string &table, const std::string &key,
             std::vector<KVPair> &values) {
    // TODO
    assert(0);
    return -1;
  }

  int Delete(const std::string &table, const std::string &key) {
    assert(0);
    return -1;
  }
};

} // namespace ycsbc
