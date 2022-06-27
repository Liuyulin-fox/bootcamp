#!/usr/bin/ruby
#簡単なまとめ
#1.puts：
#出力後の改行：あり　配列の表示：要素ごとに改行　呼び出すメソッド：to_s　戻り値：nil
#2.print
#出力後の改行：あり 配列の表示：改行しない 呼び出すメソッド：to_s 戻り値：nil
#3.p
#出力後の改行:なし 配列の表示：改行しない 呼び出すメソッド:	inspect 戻り値：引数のオブジェクト

#puts例①
puts "boy"
puts "girl"

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


