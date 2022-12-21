//
//  basic_db.cc
//  YCSB-C
//
//  Created by Jinglei Ren on 12/17/14.
//  Copyright (c) 2014 Jinglei Ren <jinglei@ren.systems>.
//

#include "db/db_factory.h"

#include "db/basic_db.h"
#include "db/cmpt_db.cuh"
#include "db/gmpt_2PI_db.cuh"
#include "db/gmpt_FLC_db.cuh"
#include <string>

using ycsbc::DB;
using ycsbc::DBFactory;

DB *DBFactory::CreateDB(utils::Properties &props) {
  if (props["dbname"] == "basic") {
    return new BasicDB;
  } else if (props["dbname"] == "cpu") {
    return new CmptDB;
  } else if (props["dbname"] == "2PI") {
    return new Gmpt2piDB;
  } else if (props["dbname"] == "FLC") {
    return new GmptflcDB;
  } else {
    return NULL;
  }
}
