#!/usr/bin/ruby
# クラス、インスタンス変数、メソッドの関係を調べ、コードする
# - 例えばUserクラスに対して、どんなインスタンス変数でも、どんなメソッドでも定義しても良いのか
# - それぞれの命名、とくに品詞に注目

class Actor
  attr_reader :name, :nationality
  attr_accessor :popularity, :face

@@counter = 1
  # @@counter を参照するクラスメソッド
  def self.get_counter
    @@counter
  end

  def initialize(name, nationality, popularity, face)
    @id = @@counter
    @@counter += 1
    @name = name
    @nationality = nationality
    @popularity = popularity
    @face = face
  end

  def information
    "番号：#{"%2d" % @id}  名前：#{@name.ljust(4, "　")}  国籍：#{@nationality}  " <<
    "知名度：#{@popularity}  顔：#{@face}"
  end
end

actor_list = [["瑛太", "Japan", 3, 5],
              ["尹相賢", "Korea", 3, 5],
              ["肖战", "China", 3, 5],
              ["木村拓哉", "Japan", 5, 5],
              ["Depp", "America", 5, 5]]

# Actorクラスのインスタンスを生成する
actor = actor_list.map do |name, nationality, popularity, face|
  actor = Actor.new(name, nationality, popularity, face)
  puts actor.information
end

# クラス変数 @@counter を出力する
p Actor.get_counter # > 6