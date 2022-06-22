#!/bin/bash
#コマンドライン引数に"ok"を渡すと標準出力（文字列は任意）をok.txtへリダイレクト
#command lineから引数「ok」を渡す
if [ "$1" = "ok" ]; then 
  echo 'コマンドライン引数は"ok"のみ標準出力' 1>ok.txt
else
  echo "コマンドライン引数はokではありません"
fi