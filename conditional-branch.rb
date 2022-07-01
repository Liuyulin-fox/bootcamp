#!/usr/bin/ruby
# 条件分岐 について調べ、その利用例をコードする

# - if
x = 1
if x > 2
  puts "x is greater than 2"
elsif x <= 2 and x != 0
  puts "x is 1"
else
  puts "I can't guess the number"
end

# - unless
x = 4
unless x>=2
  puts "x is less than 2"
else
  puts "x is greater than 2"
end

# - case
$age =  5
case $age
when 0 .. 2
  puts "baby"
when 3 .. 6
  puts "little child"
when 7 .. 12
  puts "child"
when 13 .. 18
  puts "youth"
else
  puts "adult"
end

# - 真偽値の定義
# falseとnilは「偽」と判定、それ以外の値は全て「真」と判定
num = 2

if num.odd?
  puts '奇数です'
else
# if文はこの下式の値を戻り値として返す
  puts '偶数です' #=> 偶数です
end

# - conditional statementの戻り値①
aa = true
aa = if false then "OK" else "NG" end
puts aa

# - conditional statementの戻り値② 後置
apple = 'condition'
banana = apple if apple == 'condition'
puts banana 