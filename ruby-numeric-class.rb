#!/usr/bin/ruby
# Numericクラスについて調べ、その利用例をコードする

# Rational クラスは有理数を表すクラス
p bunsu_a = Rational(4, 7)
p bunsu_b = Rational(8, 9)
p bunsu = bunsu_a + bunsu_b 

# numerator 分子を取り出すクラスメソッド
p bunsu.numerator
# denominator 分母を取り出すクラスメソッド
p bunsu.denominator
# to_f 「Folat」への変換は
p bunsu.to_f

# Complex 複素数を表すクラス
p fokusosu = Complex(8, 9) ** 2
# real 実数部を取り出すクラスメソッド
p fokusosu.real
# imaginary 虚数部を取り出すクラスメソッド
p fokusosu.imaginary

# div 割り算の商を整数で返します。
p 10.div(7)
p 10.div(7.7)
p -10.div(-7.7)
p -10.div(7.7) 

# quo 割り算の商を返します。整数÷整数であれば答えの値は整数「Rational」オブジェクト
p a = 7.quo(4)
p a.class
# quo 割り算の商を返します。整数÷小数であれば「Float」オブジェクト
p b = 7.quo(4.4)
p b.class

# modulo 割り算の余りを返します
p 5.modulo(2)
p 5 % 2

# divmod 割り算の「商」と「余り」の両方を配列として返します。
p 5.divmod(2)
p 10.divmod(1.5)
p 10.divmod(-1.5)

# Mathモジュール
# sqr 平方根
p Math.sqrt(16)

# Mathモジュールをインクルードしてから呼び出す方法
include Math
p sqrt(15)
p Math::PI

# Integer → Floatへ変換
p 1.to_f
# String → Floatへ変換
p '1'.to_f

# Float → Integerへ変換
p 1.5.to_i
# String → Integerへ変換
p '1.5'.to_i

# round 四捨五入
p 1.9.round
p 0.1234.round(2)
p 1234.round(-3)
p 1920.round(-3)