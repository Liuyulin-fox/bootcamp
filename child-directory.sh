#!/bin/bash
#1. カレントディレクトリで child-directory-a に test.txt を生成
MY_SCRIPT_PATH=$(cd $(dirname $0) && pwd)
>${MY_SCRIPT_PATH}/child-directory-a/test.txt

#2. child-directory-a へ移動
cd ${MY_SCRIPT_PATH}/child-directory-a
pwd

#3. child-directory-a から child-directory-b へ test.txt を移動
B_SCRIPT_PATH=${MY_SCRIPT_PATH}/child-directory-b/
mv "${MY_SCRIPT_PATH}/child-directory-a/test.txt" "${B_SCRIPT_PATH}"

#4. child-directory-b へ移動
cd ${MY_SCRIPT_PATH}/child-directory-b
pwd

#5. カレントディレクトリの test.txt を親ディレクトリへ移動
ROOT_SCRIPT_PATH=${MY_SCRIPT_PATH}/
mv "${MY_SCRIPT_PATH}/child-directory-b/test.txt" "${ROOT_SCRIPT_PATH}"