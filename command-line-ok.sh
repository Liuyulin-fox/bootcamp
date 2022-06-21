#!/bin/bash
#コマンドライン引数に"ok"を渡すと標準出力（文字列は任意）をok.txtへリダイレクト
#command lineから引数「ok」を渡す
echo "$1" 1>ok.txt