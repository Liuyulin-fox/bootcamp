#!/usr/bin/ruby
#Hashクラスについて調べ、その利用例をコードする

#Symbolを用いた表記
fruit = { peach: "pink", grape: "purple" }
puts fruit   #=> {:peach: "pink", grape: "purple"}

#要素を順番に取り出して取得する
year = {:Andy => 35, :Brigitte => 25, :Chris => 18}
year.each do |key, value|
  p "#{key}さんの年齢は#{value}です"
end

#更新要素
hash = { "Andy" => 35, "Brigitte" => 25, "Chris" => 18 }
hash["Chris"] = 17
puts hash # { "Andy" => 35, "Brigitte" => 25, "Chris" => 17}

#追加要素
hash = { "Andy" => 35, "Brigitte" => 25, "Chris" => 18 }
hash["Danelle"] = 36
puts hash  # { "Andy" => 35, "Brigitte" => 25, "Chris" => 18, "Danelle" => 36 }

#要素削除
hash = { "Andy" => 35, "Brigitte" => 25, "Chris" => 18, "Danelle" => 36 }
hash.delete("Danelle")
puts hash # { "Andy" => 35, "Brigitte" => 25, "Chris" => 18 }

#ハッシュ演算子
hash1 = {"Andy":1,"Brigitte":2,"Chris":3,"Danelle":4}
hash2= {"Andy":1,"Brigitte":2,"Chris":3,"Danelle":4}
p hash1 == hash2 #hash1とhash2が等しい -ture
hash1[:Danelle] = 5  #"Danelle"の値を5に変更する
p hash1 == hash2 #false

#繰り返し処理
#① eachメソッドを使う キーと値のセットが順次出力する。
scores = { "A" => 60, "B" => 80, "C" => 85, "D" => 90 }
scores.each {|name, score| puts "#{name}\t#{score}" }


#② each_keyメソッドを使う
scores = { "A" => 60, "B" => 80, "C" => 85, "D" => 90 }
scores.each_key {|name| print "#{name} " }
puts "" #キーのみを取得する

#③ each_valueメソッドを使う
scores = { "A" => 60, "B" => 80, "C" => 85, "D" => 90 }
scores.each_value {|score| print "#{score} " }
puts ""  #値だけ出力する。

# method chain
data = [
{
  name: "Blue whale",
  class: "mammalia",
  type: "aquatic"
},
{
  name: "European lobster",
  class: "malacostraca",
  type: "aquatic"
},
{
  name: "South-American tapir",
  class: "mammalia",
  type: "terrestrial"
}
]
puts data.lazy.select { |item| item[:class] == "mammalia" }.select { |item| item[:type] == "terrestrial" }.to_a