#!/bin/bash
#1. ps：現在のプロセスのスナップショットを表示する
#例：-e すべてのプロセスを表示する
ps -e

#-o　表示された列を選択 
ps -o pid,ppid,args

#2. curl：様々な通信プロトコルを駆使し、コマンドライン上からデータ転送を行うことができるコマンドである。
#例：最も基本的な使用法は、コマンドの後にURLを入力する
curl https://www.geeksforgeeks.org
