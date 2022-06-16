#!/bin/bash
#if文の"数値"比較
echo 'Hello the wonderful world'
echo 'ウリン大学の皆さん、ようこそ! 試験の評価の確認はこちら'

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

#if文例①
echo 'if文の"文字列"比較「空っぽ文字列」、引数値は""である'
str1=""

if [ -z $str1 ] 
then
  echo "Empty string"
else
  echo "Not empty string"
fi

#if文例②
echo 'if文の"文字列"比較「同じ文字列」、引数値は"string"である'
str2="string"

if [ "string" == $str2 ] 
then
  echo "Same strings"
else
  echo "Different Strings"
fi

#if文例③
echo 'if文の"文字列"比較「異なる文字列」引数値は"Not string"である'
str3="Not_string"

if [ "string" == $str3 ] 
then
  echo "Same strings"
else
  echo "Different Strings"
fi





