#!/usr/bin/ruby
# Array、Hash の違いや特徴の理解をコードする
# 配列「Array」はフォーマットが決まっているが、HASHは異なる種類の情報をまとめる
# Hashの特徴：{ }の中に『key(キー)』と『value(バリュー)』

# Array
names = [ "Andy", "Brigitte", "Chris", "Danelle" ]
names.each_with_index do |name,index|
  puts "#{index}番目は#{name}です"
end

# Hash
Andy = { name:"Andy", age:29, height:185 }
p Andy