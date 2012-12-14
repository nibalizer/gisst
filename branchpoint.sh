#!/bin/bash

MASTER=master
NUMBER=$RANDOm

git log --oneline >  /tmp/branch-$NUMBER
git log --oneline $MASTER > /tmp/master-$NUMBER

BANCHPOINT=`comm -1 -2 /tmp/master-$NUMBER /tmp/branch-$NUMBER \
  | head -n 1 \
  | cut -d " " -f 1`

echo $BRANCHPOINT




