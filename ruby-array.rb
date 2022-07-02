#!/usr/bin/ruby
# Arrayクラスについて調べ、その利用例をコードする
# - 要素の取得
fruits = ["apple", "peach", "orange"]
puts fruits[0]

# - 要素の変更
fruits[0] = "cherry"
puts fruits[0] # cherry

# - 要素の追加
fruits.push("watermelon")
puts fruits # cherry、peach、orange、watermelon

# - 要素の削除
fruits.delete("watermelon")
puts fruits # cherry, peach, orange

# - 配列演算子
# sort 配列に格納されている各要素を一定の規則でソートする方法
ary_new = [4, 2, 5, 1, 3]
puts newAry = ary_new.sort # 新しい配列生成
puts ary_new.object_id
puts "ary_newのオブジェクトは #{ary_new.object_id}"
puts "newAryのオブジェクトは #{newAry.object_id}"

ary_existing = [7, 6, 10, 9, 8]
puts existingAry = ary_existing.sort! # 既存の配列生成
puts "ary_existingのオブジェクトは #{ary_existing.object_id}"
puts "existingAryのオブジェクトは #{existingAry.object_id}"

# |a, b| 「a」と「b」を使ってどのように比較するかを記述
ary = [4, 2, 5, 1, 3, 7, 6, 10, 9, 8]
newary = ary.sort {|a, b| a <=> b } # 新しい配列
puts newary # 昇順
puts newary_negative = ary.sort {|a, b| (-1) * (a <=> b) } # 新しい配列
puts newary_negative # 降順

# - 繰り返し処理（重要なインスタンスメソッドが多数）
# Integerクラスに「times」メソッド
2.times do
  puts "Hello Array!"
end

# ブロックパラメーター
2.times do |i|
  puts "Hello Block Parameter!" + i.to_s
end

# Integerクラスのupto／downtoメソッド
5.upto(8) do |i|
  puts "Hello upto!" + i.to_s
end

# Integerクラスのupto／downtoメソッド
5.downto(2) do |i|
  puts "Hello downto!" + i.to_s
end

# foreach例文①
array = Array["white", "pink", "purple"]
array.each do |color|
puts color
end

# foreach例文②
arr = [1, 2, 3, 4, 5]
arr.each {|a| print a -= 10, " \n"} 

# foreach例文③
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each {|word| str += "#{word} "}
p str # => "sixth fifth fourth third second first "

# - eachとmapの違い
# eachは繰り返し処理をしたい時に使用。
# mapは繰り返し処理をした結果を配列として保持するときに使う。

# each 
array = [1, 2, 3]
array.each do |item|
  p item * 2
end

# map
result = array.map do |item|
  item * 2
end 

p result

# - method chain
# メソッドチェーンとはメソッドをつなげていくもの。
puts 'hoGe'.downcase.upcase # => 'HOGE'
puts 'hoGe'.upcase.downcase # => 'hoge'

puts [1, 100, 10000].select { |x| x > 10 }.cycle(3).map { |x| x * 2 }

# ①chunk 
# 要素を前から順にブロックで評価し、その結果によって要素をチャンクに分けた(グループ化した)要素を持つ Enumerator を返し。
[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk {|n|
  n.even?
}.each {|even, ary|
  p [even, ary]
}

# ②slice_after
# パターンがマッチした要素、もしくはブロックが真を返した要素を末尾の要素としてチャンク化(グループ化)したものを繰り返す Enumerator を 返し
p [0,2,4,1,2,4,5,3,1,4,2].slice_after(&:even?).to_a # => [[0], [2], [4], [1, 2], [4], [5, 3, 1, 4], [2]]

# 奇数要素をチャンクの末尾と見なす
p [0,2,4,1,2,4,5,3,1,4,2].slice_after(&:odd?).to_a # => [[0, 2, 4, 1], [2, 4, 5], [3], [1], [4, 2]]
  
# ③zip
# self と引数に渡した配列の各要素からなる配列の配列を生成して返し
p (1..3).zip([4,5,6], [7,8,9])
# => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

p (1..2).zip([:a,:b,:c], [:A,:B,:C,:D])
# => [[1, :a, :A], [2, :b, :B]]

p (1..5).zip([:a,:b,:c], [:A,:B,:C,:D])
# => [[1, :a, :A], [2, :b, :B],
#     [3, :c, :C], [4, nil, :D], [5, nil, nil]]

# ④each_with_index
# 要素とそのインデックスをブロックに渡して繰り返し
[5, 10, 15].each_with_index do |n, idx|
  p [n, idx]
end
# => [5, 0]
#    [10, 1]
#    [15, 2]
  
# ⑤chunk_while
# 要素を前から順にブロックで評価し、その結果によって要素をチャンクに分けた(グループ化した)要素を持つEnumerator を返し。
# ブロックの評価値が偽になる所でチャンクを区切り
# 1ずつ増加する部分配列ごとに分ける。
a = [1,2,4,9,10,11,12,15,16,19,20,21]
b = a.chunk_while {|i, j| i+1 == j }
p b.to_a # => [[1, 2], [4], [9, 10, 11, 12], [15, 16], [19, 20, 21]]

# 増加のみの部分配列ごとに分ける。
a = [0, 9, 2, 2, 3, 2, 7, 5, 9, 5]
p a.chunk_while {|i, j| i <= j }.to_a# => [[0, 9], [2, 2, 3], [2, 7], [5, 9], [5]]

# 隣り合う偶数同士、奇数同士の部分配列ごとに分ける。
a = [7, 5, 9, 2, 0, 7, 9, 4, 2, 0]
p a.chunk_while {|i, j| i.even? == j.even? }.to_a # => [[7, 5, 9], [2, 0], [7, 9], [4, 2, 0]]

# - do...endと{}の一般的な使い分け
# {}：ブロック付きメソッドがインラインの場合
[1, 2, 3].each {|e| puts e}

# {}：ブロック付きメソッドの戻り値を利用する場合
puts cubic = [1, 2, 3].map {|e| e ** 3}

# {}：ブロック付きメソッドからさらにメソッドチェーンする場合
puts (1..10).select {|e| e.even?}.map {|e| e ** 3}

# {}：リソース管理のためにブロックを使う場合
# ブロックを抜け出す時にブロック引数のオブジェクトが自動的に解放される場合．
open("foo.txt") {|f|
  puts f.read
}

# do end：上記以外の場合
[1, 2, 3].each do |e|
  puts e
end