#!/usr/bin/ruby
# classについて調べ、その利用例をコードする
# - 「Rubyは全てがオブジェクト」とは何か

# 「ブロックパラメーターを 2 乗して返すブロック」を用いて 2 乗する Proc オブジェクトを生成
square = proc{ |x| x * x }

# Proc オブジェクトを呼び出す例
p square[3] # => 9

# Proc オブジェクトを map にブロックとして与える例
p (1..3).map(&square) # => [1, 4, 9]

# 「13 に対する to_s メソッド呼び出し」を表す Method オブジェクトを生成
thirteen_to_str = 13.method(:to_s)

# 引数無しで呼び出すと10進で文字列化
p thirteen_to_str[] # => "13"

# 8進で文字列化
p thirteen_to_str[8] # => "15"

# 2 進，8 進，10 進，16 進で文字列化
# map に & 付きで Method オブジェクトを渡すと，Proc に変換されたうえ，
# ブロックとして渡される。
p [2, 8, 10, 16].map(&thirteen_to_str) # => ["1101", "15", "13", "d"]

# - アクセサメソッド
# attr_reader #read（読む）
# 読むためのアクセサメソッド
class Product
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

product = Product.new('pen')
puts product.name #=>pen

# attr_writer #write（書く）
# インスタンス変数を変更できるよう(write,書く)に
class Product
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

product = Product.new('pen')
puts product.name = 'Liu' #=>Liu

# attr_accessor #access(読むと書くの両方)
class Product
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

product = Product.new('pen')
puts product.name = 'Liu' #=>Liu

# - アクセス修飾子
# 以下、権限の種類
# public ... どこからでもアクセス可能。クラス内にメソッドを定義した際のデフォルトのアクセス権
require 'date'

class User
  attr_accessor :name, :birthday

  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  def display_birthday
    @birthday.strftime('西暦%Y年 %m月 %d日')
  end

  def call_display_birthday #自身のオブジェクトを呼び出す場合は先頭に「self」をつける（publicメソッドの呼び出し）
    self.display_birthday #「self」を省略することもできる
    display_birthday
  end
end

birthday = Date.new(1997, 04, 07)
user = User.new('nabe', birthday)
puts user.display_birthday
puts user.call_display_birthday

# protected ... そのクラスまたはサブクラスのインスタンスメソッドからしか呼び出すことができない
class ClassPermission
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def use_protected(recever = self)
    print "#{@name} call #{recever.name}.protected_method > "
    recever.protected_method
  end

  protected
  def protected_method
    p 'protected'
  end
end

# サブクラス
class SubClassPermission < ClassPermission
end

c1 = ClassPermission.new('C1')
c2 = ClassPermission.new('C2')
c_sub = SubClassPermission.new('SubClass')

# 自身をレシーバーにじて protected メソッドを実行できる
c1.use_protected(c1)

# 同じクラスインスタンスからレシーバーを通じて protected メソッドを実行できる
c2.use_protected(c1)

# サブクラスのインスタンスからレシーバーを通じて protected メソッドを実行できる
c_sub.use_protected(c1)

# private ... レシーバーの省略形でしか呼び出すことができない ( self に対してしか呼び出すことができない)
class ClassPermission
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def call_private
    print "#{@name} call private_method > "
    private_method
  end

  def use_private(recever = self)
    puts "#{@name} call #{recever.name}.private_method > "
    recever.private_method
  end

  def call_recever_call_private(recever = self)
    puts "#{@name} call #{recever.name}.call_private >> "
    recever.call_private
  end

  private
  def private_method
    p 'private'
  end
end

c1 = ClassPermission.new('C1')
c2 = ClassPermission.new('C2')
c_sub = SubClassPermission.new('SubClass')
class SubClassPermission < ClassPermission
end

c1.call_private # => C1 call private_method > "private"

# 下記はのprivate メソッドは self の省略形でしか呼び出すことができない
# c1.use_private

# 下記はの当然他のクラスインタンスからレシーバーを通じて呼び出そうとしてもエラー
# c2.use_private(c1)

# レシーバー自身の private メソッドを使っているメソッドを呼び出すのはOK
c1.call_recever_call_private(c1)

c2.call_recever_call_private(c1)

# サブクラスからでもOK
c_sub.call_recever_call_private(c1)