#!/usr/bin/ruby
# 正規表現 とは何か、Regexpクラス とは何か、を調べ、その利用例をコードする

# 正規表現とは、パターンを指定して、文字列を効率よく検索・置換するためのミニ言語
# 利用例①
text = <<-TEXT
名前：YULIN LIU
電話：07-1234-5678
住所：東京都目黒区下目黒1-5-16
TEXT

puts text
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/ # => ["07-1234-5678"]

# 利用例②
test_shigai = <<-TEXT
名前：YULIN LIU
電話：07-1234-5678
電話：090-1234-5678
電話：0875-12-3456
電話：04797-1-2345
住所：東京都目黒区下目黒1-5-16
TEXT

puts test_shigai
puts test_shigai.scan /\d{2,5}-\d{1,4}-\d{4}/
#07-1234-5678
#090-1234-5678
#0875-12-3456
#04797-1-2345

# 利用例③
test_brackets = <<-TEXT
名前：YULIN LIU
電話：07(1234)5678
電話：090-1234-5678
電話：0875(12)3456
電話：04797-1-2345
住所：東京都目黒区下目黒1-5-16
TEXT

puts test_brackets
puts test_brackets.scan /\d{2,5}[-(]\d{1,4}[-)]\d{4}/
#07-1234-5678
#090-1234-5678
#0875-12-3456
#04797-1-2345

# 利用例④
text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

puts text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

# 利用例⑤
html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML


replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')
puts replaced
# <select name="game_console">
# none,
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>

# regexpクラスとは、正規表現のクラス。
# 利用例
str = "this is the most wonderful world"
rp1 = Regexp.new("^this is the most wonderful world")
p rp1 =~ str           # => 0「合致」
p Regexp.last_match[0] # => "this is the most wonderful world"

