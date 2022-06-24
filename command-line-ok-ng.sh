#!/bin/bash
#コマンドライン引数に"ok"を渡すと標準出力（文字列は任意）をok.txtへリダイレクト
#コマンドライン引数に"ng"を渡すと標準エラー出力（エラーメッセージはなんでも良い）をng.txtへリダイレクト

if [ "$1" = "ok" ]; then 
  echo 'コマンドライン引数は"ok"のみ標準出力' 1>ok.txt
elif [ "$1" = "ng" ]; then 
  #NON_EXISTENT_ARGUMENT="$1";
  #env NON_EXISTENT_ARGUMENT;
  #エラー出力となっているのかを確認するのを標準出力として、コマンドラインで確認できるように、1「標準出力」を追加する
  raise error "コマンドエラーを発生させる";
  echo 'コマンドライン引数は"ng"のみ標準エラー出力' 1>&2>ng.txt
else
  echo "コマンドライン引数は「ok、ng」ではありません"
fi
