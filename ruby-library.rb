#!/usr/bin/ruby
# ファイルやディレクトリを扱うクラスについて調べ、その利用例をコードする
# - Dir

# 一般的な例
p Dir.glob("*")
p Dir.glob("./b*")
p Dir.glob("*/")
p Dir.glob("wrong_name")

# 複数のパターンを指定する例
p Dir.glob(["f*", "b*"])
p Dir["f*", "b*"]

# ワイルドカードの例
p Dir.glob("*")
p Dir.glob("fo?")

# ベースディレクトリの例
rbfiles = File.join("**", "*.rb")
p Dir.glob(rbfiles)
p Dir.glob(rbfiles, base: "lib")

# - File    
# absolute_path(file_name, dir_string=nil) -> String
# file_name を絶対パスに変換した文字列を返します。
p Dir.getwd
p ENV["HOME"]
p File.absolute_path("..")
p File.absolute_path("..", "/tmp")
p File.absolute_path("~")
p File.absolute_path("~foo")
                        
# - csv / yml / json なども扱えると良い
# CSV
require 'csv'
p CSV.read("data.csv")

# JSON
require "json" # JSONライブラリの読み込み
meibo_hash = [{}]
File.open("meibo.json") do |meibo_json_file| #  meibo.jsonを開く
  meibo_hash = JSON.load(meibo_json_file) # JSON形式の文字列からRubyオブジェクトへ変換
end

File.open("meibo.txt", "w") do |meibo_txt| # 欲しいテキストファイル、meibo.txtを作成して開く
  meibo_hash.each do |meibo_hash_person|
    meibo_array = [meibo_hash_person["name"],meibo_hash_person["gender"],meibo_hash_person["age"]] # hash => array
    meibo_txt.puts(meibo_array.join("\t")) # 1行ずつタブ区切りで配列を結合し、書き込み
  end
end