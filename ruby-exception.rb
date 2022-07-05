#!/usr/bin/ruby
# 例外処理とは何かを調べ、その利用例をコードする
# - raise
class ExceptionTestRaise
  def kufuku_gauge(energy)
    true if energy > 100
  end
  
  def eating_dinner
    #raise "既に満腹！" if kufuku_gauge(120)
    puts "食事の時間だ！"
  end
end
  
obj_raise = ExceptionTestRaise.new
# 例外発生
obj_raise.eating_dinner # => 既に満腹！
  
# - begin/rescue
# 例外オブジェクト
class ExceptionTestBeginRescue
  def test
    begin
      # 0での除算でエラーを発生させる
      1/0
    rescue ZeroDivisionError => ex
      puts "ZeroDivisionError"
    end
  end
end
  
obj_begin_rescue = ExceptionTestBeginRescue.new
# 例外発生
obj_begin_rescue.test # => ZeroDivisionError
  
# - よく発生する例外クラス
# StandardError
# rescue => e # => StandardError を catch
# end
  
# RuntimeError
# RuntimeError は、StandardError のサブクラス
# raise "エラーメッセージ" # => RuntimeError が発生
  
# NoMethodError
# 存在しないメソッドを呼び出そうとしているときに発生
  
# - 独自の例外クラス
# 例文①
class MyError < StandardError
  def initialize(msg="My Message")
  super
  end
end
  
# raise MyError #=> My Message
  
# 例文②
class MyError < StandardError
  attr_reader :attr
  
  def initialize(msg="My default message", attr="My value")
    @attr = attr
    super(msg)
  end
end
  
begin
  raise MyError.new("my message", "My value")
rescue => e
  puts e.attr #=> My value
end
