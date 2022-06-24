#!/bin/bash
#ここまで勉強した以外の linux command を組み合わせたshell scriptをコードする
#du -a:各ディレクトリのディスク使用量を表示する
#sort -n:数値で並べ替える
#ファイルサイズを確認するコマンド「du」の結果を、容量が小さい順にソートする
du -a | sort -n