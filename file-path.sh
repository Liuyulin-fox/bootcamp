#!/bin/bash
#相対パス・絶対パスをパラメータで渡し、渡されたファイルパスが相対か絶対かを判定する shell script をコードする
#!/bin/bash

DIR=$1

if [[ "$DIR" = /* ]]
then
    echo "absolute"
else
    echo "relative"
fi