#!/usr/local/bin/bash

MASTER=master
NUMBER=$RANDOM

git log --pretty=oneline >  /tmp/branch-$NUMBER
git log --pretty=oneline $MASTER > /tmp/master-$NUMBER

BRANCHPOINT=`comm -1 -2 /tmp/master-$NUMBER /tmp/branch-$NUMBER \
  | head -n 1 \
  | cut -d " " -f 1`

echo $BRANCHPOINT

rm /tmp/branch-$NUMBER
rm /tmp/master-$NUMBER




