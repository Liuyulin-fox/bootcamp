#!/usr/bin/ruby
# classについて調べ、その利用例をコードする
# 【洗濯機】をオブジェクトとして表現し、コードする

# [仕様]
# 1. 洗濯機は洗濯物（衣類）を出し入れすることができる
# 2. 洗濯機の容量は衣類30枚までとする
# 3. 衣類には綺麗か汚れているかの状態があり、洗濯をすると綺麗になる

# 言語の厳密さより、現実の世界をコードとして表現できるかどうかが、この課題の意図になります
class Wash
  def initialize()
    @capacity_clean = 0
    @capacity_dirty = 0
    @capacity_max = 30 
    @wash_time = 27
  end

  def main
    p "[1] 洗濯物電源入れる"
    p "[2] 洗濯物を出す"
    p "[0] システム終了"
    p "--------------------------------"

    input = gets.chomp()

    if input == "1" then
      p "[1] 洗濯物の数を入力してください"
      p "--------------------------------"
      @capacity_dirty = gets.chomp()
      put
    elsif input == "2" then
      take
    elsif input == "0" then
      main
    end
  end

  def put
    if 0 < @capacity_dirty.to_i && @capacity_dirty.to_i <= @capacity_max
      p "#{@capacity_dirty}枚洗濯物の洗濯を開始し，待つ時間は#{@wash_time}分"
      p "--------------------------------"

      #sleep @wash_time

      @capacity_clean = @capacity_dirty
      @capacity_dirty = 0

      p "洗濯が終わり，#{@capacity_clean}枚洗濯物がきれいになった"
      p "--------------------------------"
    else
      p '洗濯物が30枚超えた'
      p "--------------------------------"
    end
    main
  end

  def take
    p "今、洗濯中ですが、洗濯機を中止致します。洗濯物を取り出してください。"
    p "洗濯を取りださいたら、「洗濯完了」の文を入れてください。"
    p "--------------------------------"
    commit = gets.chomp

    if commit == "洗濯完了"
      main
    else
      take
    end
  end
end

Wash.new.main