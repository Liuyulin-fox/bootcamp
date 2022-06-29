#!/usr/bin/ruby
# 様々な演算子について調べ、その利用例をコードする

# - 代数演算子① (+)
a = 14
b = 12
puts a + b

# - 代数演算子② (-)
puts a - b

# - 代数演算子③ (*)
puts a * b

# - 代数演算子④ (/)
# 割り算の商
puts a / b

# - 代数演算子⑤ (%)
# 割り算の余り
puts a % b

# - 文字列演算子① (+)
str1 = 'String'
str2 = 'Operator'
str3 = str1 + str2
puts str3 #StringOperator

# - 文字列演算子② (<<)
str1 << str2
str3 = str1 << str2
puts str3 #StringOperatorOperator

# - 文字列演算子② (*)
n = 3
str3 = str1 * n
puts str3 #StringOperatorOperatorStringOperatorOperatorStringOperatorOperator

# - 代入演算子① (=, +=, -=, *=, /=, %=, **=)
puts a += 3 #a = a + a と同等
puts a -= 3 #a = a - a と同等
puts a *= 3 #a = a * a と同等
puts a /= 3 #a = a / a と同等
puts a %= 3 #a = a % a と同等
puts a **= 3 #a = a ** a と同等

# - 代入演算子② ビット演算子 (&=, |=, ^=, <<=, >>=)
puts a &= 3 # a = a & a と同等
puts a |= 3 # a = a | a と同等
puts a ^= 3 # a = a ^ a と同等
puts a <<= 3 # a = a << a と同等
puts a >>= 3 # a = a >> a と同等

# - 比較演算子 (==, !=, <, >, <=, >=, <=>, ===)
a = 1
b =2
puts a == b # a と b が等しい
puts a != b # a と b が等しくない
puts a < b # a が b よりも小さい
puts a > b # a が b よりも大きい
puts a <= b # a が b 以下である
puts a >= b # a が b 以上である
# <=> 演算子は、a < b であれば -1、a == b であれば 0、a > b であれば 1、比較できない時は nil を返します。
puts a <=> b # a が b 以上である

# === 演算子は、case文のマッチングで用いられる比較
if 5 === 5 then # Numeric
  puts "OK"
end

if (1..10) === 5 then # Range
  puts "OK"
end
  
if /[a-z]/ === "a" then # Regexp
  puts "OK"
end
  
if String === "a" then # Module
  puts "OK"
end

# - 論理演算子 (!, &&, ||, and, or)
t = true
f = false

puts !t # t が false であれば
puts t && f # t かつ f が true であれば
puts t || f # t または f が true であれば
puts t and f # t かつ f が true であれば
puts t or f # t または f が true であれば

# - 三項演算子 # t が真であれば b さもなくば d
d = 4
puts t ? b : d
t = false
puts f ? b : d

# - 演算子の優先順位
# 高い   ::
#        []
#        +(単項)  !  ~
#        **
#        -(単項)
#        *  /  %
#        +  -
#        << >>
#        &
#        |  ^
#        > >=  < <=
#        <=> ==  === !=  =~  !~
#        &&
#        ||
#        ..  ...
#        ?:(条件演算子)
#        =(+=, -= ... )
#        not
# 低い   and or
# 例えば「&&」は「||」より優先順位が高いので、以下のように解釈されます。
c = true
puts t && f || c   #=> (t && f) || c
puts  t || f && c   #=>  t || (f && c)