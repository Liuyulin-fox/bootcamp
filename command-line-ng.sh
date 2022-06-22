#!/bin/bash
#コマンドライン引数に"ng"を渡すと標準エラー出力（エラーメッセージはなんでも良い）をng.txtへリダイレクト
#command lineから引数「ng」を渡す

if [ "$1" = "ng" ]; then 
  NON_EXISTENT_ARGUMENT="$1";
  env NON_EXISTENT_ARGUMENT;
  echo 'コマンドライン引数は"ng"のみ標準エラー出力' >&2>ng.txt
else
  echo "コマンドライン引数はngではありません"
fi 



