#!/usr/bin/ruby
#puts / print / p の違いについて調べ、その利用例をコードする

#簡単的なまとめ
#1.puts：
#出力後の改行:あり 配列の表示：要素ごとに改行 呼び出すメソッド：to_s 戻り値：nil
#2.print
#出力後の改行:あり 配列の表示：改行しない 呼び出すメソッド：to_s 戻り値：nil
#3.p
#出力後の改行:なし 配列の表示：改行しない 呼び出すメソッド: inspect 戻り値：引数のオブジェクト

#puts例①
puts "boy"
puts "girl"
puts 12356

#puts例②　改行文字「\n」を使う
puts "boy\ngirl"

#print例①
print "こんにちは！"
print "私はリュウウリンです"

#print例②　改行文字「\n」を使う
print "Chris\nBrigitte"

#p例①
p "こんにちは！"
p "私はリュウウリンです。"
#p例②　改行文字「\n」を使う
p "こんにちは！\n私はリュウウリンです。"

#配列を渡した場合は　puts:改行  print,p 改行しない
a = [1, 2, 3, 4]
puts a
print a
p a

#------------------------------------------------------------------------------

# 合計を初期化
sum = 0
 
# 1から10まで繰り返し
for num in 1..10 do
 
  # 現在の番号numを合計に加える
  sum += num
  
  # 現在の番号numをputsで出力して確認
  puts "+" + num.to_s
end
 
# 最後に合計sumをputsで出力して確認
puts "sum=" + sum.to_s

#------------------------------------------------------------------------------
 
# ハッシュに積み上げる値の配列
array = [ "apple", "banana", "cookie", "dounut", "egg", "cake", "burger", "noodle" ];
 
# ハッシュを初期化
hash = Hash.new
 
i = 0
# 文字列を1文字ずつループ
for char in "abcdefgj".chars do
  
  # ハッシュにキー（1文字）と値（配列の要素）を積み上げ
  hash.store(char, array[i])
  i+=1
  
end
 
# pによるハッシュの表示
puts "---- p  ----"
p hash