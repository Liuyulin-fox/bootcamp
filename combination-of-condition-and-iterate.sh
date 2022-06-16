#!/bin/bash
echo `Hello everybody`
echo 'Team rainforestの皆さん、今回発表の評価の確認はこちら'

#Team numbersの名前と点数
for var in "Andy 75" "Brigitte 97" "Chris 90 " "Danelle 85" "Eduard 80" "Ford 65" "Gavyn 87"
do
  echo $var
done

#Team numbuersの名前「Andy Brigitte Chris Danelle Eduard Ford Gavyn」検索
echo '名前を入力してください'
while :
do
  read name
  if [ $name = "Andy" ] || [ $name = "Brigitte" ] || [ $name = "Chris" ] || [ $name = "Danelle" ] || [ $name = "Eduard" ] || [ $name = "Ford" ] || [ $name = "Gavyn" ]; then
      break
  fi

  echo "名前が間違ったので、もう一度確認の上、入力してください"
  sleep 1
done

#評価基準
read -p "成績を入力ください，成绩範囲0-100: " score

if [ -z `echo $score | egrep '^[0-9]+$'` ];then
  echo "入力されたグレードが正しい形式ではない"
fi

if ((score >= 90));then
  echo 'excellent'
elif ((score >= 80));then
  echo 'good'
elif ((score >= 70));then
  echo 'generally'
elif ((score >= 60 ));then
  echo 'pass'
else
  echo 'failed'
fi

