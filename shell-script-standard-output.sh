#!/bin/sh
#標準出力(STDOUT)をファイルにリダイレクトする shell script をコードする
echo 標準入力【standard input】stdin > standard-output.txt

#コマンドの標準出力をfileに追加する。
echo とは：プログラムに値を渡す入力元のことである。>> standard-output.txt
echo 番号：0 >> standard-output.txt
echo 装置：キーボード >> standard-output.txt

echo 標準出力【standard output】stdout >> standard-output.txt
echo とは：プログラムから出力される値の出力先のことである。 >> standard-output.txt
echo 番号：1 >>  standard-output.txt
echo 装置：ディスプレイ >> standard-output.txt
