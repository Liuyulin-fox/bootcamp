#!/bin/bash
#コマンドライン引数に"ng"を渡すと標準エラー出力（エラーメッセージはなんでも良い）をng.txtへリダイレクト
#command lineから引数「ng」を渡す
NON_EXISTENT_FILE="$1"
echo `env ${NON_EXISTENT_FILE} 2>ng.txt`