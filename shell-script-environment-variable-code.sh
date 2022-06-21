#!/bin/bash
#任意の環境変数を設定(export)、出力(echo)するshell scriptのコード
export ENV_RAINFOREST1='export使い環境変数を設定し、echo「シェル変数」、printenv「環境変数」が表示される値です。'
echo ${ENV_RAINFOREST1}
printenv ENV_RAINFOREST1

#任意のシェア変数を設定し、環境変数へ変換し出力する
ENV_RAINFOREST2='表示されたのは環境変数が呼ばれ、表示される値です。'
echo "${ENV_RAINFOREST2}";

#「export」コマンドを使い、環境変数を設定し、画面標準出力
#環境変数としては設定されていないため、値は表示されない
export ENV_RAINFOREST2
printenv ENV_RAINFOREST2
echo "${ENV_RAINFOREST2}";

