#!/bin/bash
#シェルスクリプトAからシェルスクリプトBを呼び出す（Aの中でBのスクリプトを実行する）shell scriptをコードする　①PATH
MY_SCRIPT_PATH=$(cd $(dirname $0) && pwd)
echo "Call b.sh"
cd $MY_SCRIPT_PATH
./b.sh

#シェルスクリプトAからシェルスクリプトBを呼び出す（Aの中でBのスクリプトを実行する）shell scriptをコードする　②sourceコマンド

echo "Call b.sh"
source b.sh
echo "Exit the shell script"
exit 0
