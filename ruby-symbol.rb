#!/usr/bin/ruby
# Symbolクラス について調べ、その利用例をコードする
# - StringとSymbolの違い
# 文字列は自体がデータであること。
# シンボルは文字列の皮を被った数値。

# String
ms_Liu = "Liu_String"
mr_String = "Liu_String"
puts ms_Liu.equal? mr_String #false

# Symbol
# シンボルが同じオブジェクトは、必ず同じオブジェクトになる。
# シンボルの使い方「:」
ms_Liu_l = :Liu_Symbol
mr_Symbol = :Liu_Symbol
puts ms_Liu_l.equal? mr_Symbol #true