#!/bin/bash
#任意の環境変数を設定(export)、出力(echo)する shell scriptのコード
export ENV_Rainforest1='export使い環境変数を設定し、echo「シェル変数」、printenv「環境変数」が表示される値です。'
echo ${ENV_Rainforest1}
printenv ENV_Rainforest1

#任意のシェア変数を設定し、環境変数へ変換し出力する
ENV_Rainforest2='表示されたのは環境変数が呼ばれ、表示される値です。'
echo "${ENV_Rainforest2}";

#「export」コマンドを使い、環境変数を設定し、画面標準出力
#環境変数としては設定されていないため、値は表示されない
export ENV_Rainforest2
printenv ENV_Rainforest2
echo "${ENV_Rainforest2}";

