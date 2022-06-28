#!/usr/bin/ruby
# Stringクラス について調べ、その利用例をコードする
p str = 'Ruby String Class'

# to_s メソッド数値オブジェクトを文字列オブジェクトへと変換
p 20.to_s
"20"

# << メソッドを使って連結
name = "Angela"
name << "baby"
p name

# {式} 文字列や数値だけでなく、変数やメソッド呼び出し、演算子式なども扱う
name = "Angelababy"
string = "私の名前は#{name}で、#{100 - 80}歳です。"
p string

# length, size メソッドは文字列オブジェクトの文字数が返り値となる
name = "Angelababy"
p name.length
p name.size

# 範囲で指定
p str.slice(6..10)

# 文字列の整形
# strip 両端の余分な空白文字（半角スペースと\t\r\n\f\v）を取り除く。
# ※全角のスペースは取り除かれない
p " hi \t".strip
p " hi　".strip

# chop 文字種に関わらず末尾の1文字を取り除く
p "Ruby¥n".chop

# squeeze 同じ文字列が連続した場合に１つにまとめる
p 'Greeeen'.squeeze
# まとめる対象を指定することも可能
p 'aabbkk'.squeeze('ab')
# downcase すべてを小文字に変換
p 'BIG'.downcase
# upcase すべてを大文字に変換
p 'small'.upcase
# swapcase 大文字と小文字を変換
p 'BIG small'.swapcase
# capitalize 先頭の文字だけ大文字
p 'kkk'.capitalize

# 文字列の置換
# sub 最初にマッチした文字列の置換
# gsub マッチした文字列すべてを置換
p '静岡県 埼玉県'.sub('県', 'X')
p '静岡県 埼玉県'.gsub('県', 'X')

# 配列への変換
# 指定した文字をセパレータとして分割した配列を返す
p 'hoge,fuga,piyo'.split(',')
# 第２引数で指定すれば分割する最大数を指定できる
p 'hoge,fuga,piyo'.split(',', 2)

# 文字列の判定
# include? 指定文字列が含まれているか判定する
p 'super'.include?('up')

# 寄せる
# ljust 指定した長さの文字列にオブジェクトを左寄せした文字列を返す
p 'ab'.ljust(1)
p 'ab'.ljust(4)
# 埋める文字を指定することも可能
p 'ab'.ljust(4, '*')
# rjust 指定した長さの文字列にオブジェクトを右寄せした文字列を返す
p 'ab'.rjust(1)
p 'ab'.rjust(4)
# center 指定した長さの文字列にオブジェクトを中央寄せした文字列を返す
p 'ab'.center(4)

# 文字列の左右逆転
# reverse 文字列を文字単位で左右逆転
p 'abcde'.reverse