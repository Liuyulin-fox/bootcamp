#!/usr/bin/ruby
# rangeについて調べ、その利用例をコードする
# Rangeオブジェクトとは、一連の範囲を表すデータ型
rg = 1..10
puts rg.first
puts rg.last

# for
for i in 'a'..'d'
  p i
end

# each①
rg.each{|n|
  puts n
}

# each②
(1..5).each do |i|
  p i
end

# step「偶数除く」
rg.step(2){|n|
  puts n
}

# dateライブラリー活用
require 'date'
(Date.parse("2022-07-01")..Date.parse("2022-07-05")).each do |date|
  p date
end

# Rangeでinclude?による比較
range = 1..5
p range.include? 3
p range.include? 8