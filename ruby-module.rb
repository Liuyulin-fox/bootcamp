#!/usr/bin/ruby
# moduleとは何か、どのような用途で使われるかについて調べ、その利用例をコードする
# - include / extend / prepend
# - 名前空間

# include
# includeとは、指定されたモジュールの定義 (メソッド、定数) を引き継ぐ
module M
end
class C1
  include M
end
class C2 < C1
  include M   # このincludeは無視される
end

p C2.ancestors  # => [C2, C1, M, Object, Kernel]

# extend
# 引数で指定したモジュールのインスタンスメソッドを self の特異メソッドとして追加
module Foo
  def a
    'ok Foo'
  end
end

module Bar
  def b
    'ok Bar'
  end
end

obj = Object.new
obj.extend Foo, Bar
p obj.a #=> "ok Foo"
p obj.b #=> "ok Bar"

class Klass
  include Foo
  extend Bar
end

p Klass.new.a #=> "ok Foo"
p Klass.b     #=> "ok Bar"

# prepend
# 指定したモジュールを self の継承チェインの先頭に「追加する」ことで self の定数、メソッド、モジュール変数を「上書き」
# super と prepend の組み合わせの例
module X
  def foo
    puts "X1" # (1x)
    super # (2x)
    puts "X2" # (3x)
  end
 end

class A
  prepend X

  def foo
    puts "A" #(1a)
  end
end

#A.new.foo
# (1x) (2x)(ここの super で A#foo を呼びだす) (1a) (3x) の順に実行される
# >> X1
# >> A
# >> X2
  
# 2つのモジュールを X, Y を prepend X, Y という順で指定したもの
module Y
  def foo
    puts "Y1" #(1y)
      super #(2y)
    puts "Y2" #(3y)
  end
end

class B
  prepend X, Y
  def foo
    puts "B" # (1b)
  end
end

B.new.foo
# (1x) (2x) (1y) (2y) (1b) (3y) (3x) の順に実行される
# X#foo のほうが Y#foo より継承チェインの手前側にあり、そちらが優先される
# >> X1
# >> Y1
# >> B
# >> Y2
# >> X2
# prepend Y, X とすると Y1 X1 B X2 Y2 の順で表示される
  
# - 名前空間
# このような名前の衝突(同名での定義)を防ぐために、モジュール(module)やクラス(class)を使うことで名前空間を分けることができます。
# モジュールとクラスの主な違いは以下の通りです。

# 1. モジュールはインスタンス化ができない(固定値やメソッドのみを持つ)
# 2. クラスはインスタンス化ができる(Humanクラスならnameやageなど固有の値をインスタンスで保持できる)

# モジュールで名前空間を分けた例文
module FirstModule
  def self.foo
    puts "foo 1st"
  end
end

module SecondModule
  def foo
    puts "foo 2nd"
  end
  module_function :foo
end

FirstModule::foo
SecondModule::foo