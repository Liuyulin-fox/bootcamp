#!/usr/bin/ruby
# メソッド について調べ、その利用例をコードする
# 「メソッド」とは
# クラスの中、具体的に何をさせたいのかを記述していく、その処理を記述するのがメソッドとなります。

# メソッド利用例をコードする①「クラスメソッド」とは
# クラスオブジェクトから実行可能なメソッド
class Logo
  def self.logo
    puts "logo"
  end
end
Logo.logo
  
# メソッド利用例をコードする②「インスタンスメソッド」とは
# インスタンスオブジェクトから実行可能なメソッドです。
class Car
  def dispClassname
    print("Car class\n")
  end
      
  def dispString(str)
    print(str + "\n")
  end
end
    
car = Car.new
car.dispClassname
car.dispString("crown")
  
# メソッド利用例をコードする③「関数的メソッド」とは
# 特定の処理をまとめた塊
def num_times(number)
  number * 2   #ここの数字を変更すれば倍率を一括で変えることができる。
end
  
p num_times(1)
p num_times(2)
p num_times(3)
p num_times(4)
  
# - method の戻り値
# 「メソッドを実行した結果」のことです。
def hotspring(num)
  return print "#{num}は禁止された番号です" + "\n" if num == 4 or num == 13
  print "あなたは#{num}番を使用します" + "\n"
end
  
hotspring(4) 
hotspring(13)
hotspring(2)
  
# - 真偽値を返すメソッド
def shipping_free?(price)
  return price >= 3000
end
  
puts shipping_free?(3000)
  
# - デフォルト引数 / キーワード引数
# デフォルfト引数（デフォルト値付き引数）は引数名 = デフォルト値と記述する引数
def message(greet, name = "there")
  puts "#{greet} #{name}."
end
  
### 引数の値が使われる
message("Hey", "Bob") # => "Hey Bob."
    
### nameはデフォルト値が利用される
message("Hey") # => "Hey there."
  
### 通常の引数の値が設定されていないのでエラー
# message()

# - 破壊的メソッド
str1 = "bibybiby"
str2 = str1
str1 = str1.gsub!("biby", "baby")
  
puts "#{str1} at #{str1.object_id}" # => babybaby at ex)70134077224180
puts "#{str2} at #{str2.object_id}" # => babybaby at ex)70134077224180
  
# gsub! を使用すると、置換前に str1 が見ていた「70134077224180」番のオブジェクトが持つ値そのものが "bbybiby" に変更します。
# そのため、依然同じオブジェクトを見ている str2 の出力結果も "babybaby" になります。
puts str1 # => babybaby
puts str2 # => babybaby
  
# - 参照渡し / 値渡し
# 「値渡し (call by value)」とは、変数の値をコピーする渡し方です。
def foo(a, b) # a, b を「仮引数」という
  a += 1
  b += 2 # a と b を変更する
  puts "aは #{a}"
  puts "bは #{b}"
end
    
x = 10
y = 20
foo(x, y) # x, y を「実引数」という
puts "xは #{x}" #=> 10  # 変更されてない
puts "yは #{y}" #=> 20  # 変更されてない
  
# 「参照渡し (call by reference)」とは、変数を共有するような渡し方です。
def bar(arr)
  arr[0] += 1
  puts "arrは #{arr}"
end
    
numbers = [10, 20]
bar(numbers)
puts "numbersは #{numbers}" #=> [11, 20]   # 中身が変更されている!
