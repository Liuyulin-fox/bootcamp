#!/bin/bash
#③ 以下の仕様の shell script をコードする
#1. コマンドライン引数で整数を渡す
command_line_argument="$1";

#2. カレントディレクトリに"out"ディレクトリを作成する
MY_SCRIPT_PATH=$(cd $(dirname $0) && pwd)
mkdir -p "${MY_SCRIPT_PATH}/out"

#3. 渡された引数の回数分だけ"out"ディレクトリ以下にディレクトリを生成する
#4. 生成されたディレクトリに順序分（インデックス分）の数のファイルを生成する
command_line_argument_number_of_time=$1;
for n1 in `seq 1 ${command_line_argument_number_of_time}`
do
  mkdir -p "${MY_SCRIPT_PATH}/out/dir-${n1}"
  for n2 in `seq 1 ${n1}`
  do
  touch "${MY_SCRIPT_PATH}/out/dir-${n1}/file-${n2}"
  done
done