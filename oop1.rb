#!/usr/bin/ruby
# オブジェクト指向プログラミング（Object Oriented Programming: OOP）について調べ、コードする

# オブジェクト指向プログラミングとは、コンピュータプログラムの構造、構成法の一つで、
# 関連するデータの集合体と、それを操作する手続きを「オブジェクト」（object）と呼ばれるひとまとまりの単位として一体化し、
# オブジェクトの組み合わせとしてプログラムを記述する手法。

class Shopping
  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end

  def buy(product='')
    puts "#{product}を#{@quantity}個買い、#{calculation(@quantity, @price)}円でした。"
  end

  private

  def calculation(quantity, price)
    quantity * price
  end
end

class Peach < Shopping
  def buy(product='もも')
    super
  end
end

class Watermelon < Shopping
  def buy(product='スイカ')
    super
  end
end

# peach情報出力
peach = Peach.new(445,6655)
p peach
peach.buy

# watermelon情報出力
watermelon = Watermelon.new(444,5555)
p watermelon
watermelon.buy

# IOライブラリーを使ってpeach、watermelon情報を書き込み
IO.write("testfile", "peach #{peach}、watermelonは #{watermelon}")