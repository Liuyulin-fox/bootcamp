#!/bin/bash
#必修 linux command を組み合わせた shell script をコードする
top | head -5
ps aux | grep httpd

MY_SCRIPT_PATH=$(cd $(dirname $0) && pwd)

if [ find $MY_SCRIPT_PATH -name "*.log" -print | xargs grep "ERROR" /dev/null $ ]; then
  curl https://www.geeksforgeeks.org > log.html --libcurl error.log
  tail error.log
  ls -l error.log
fi