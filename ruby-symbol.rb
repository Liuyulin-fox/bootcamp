#!/usr/bin/ruby
# Symbolクラス について調べ、その利用例をコードする
# - StringとSymbolの違い
# 文字列は自体がデータであること。
# シンボルは文字列の皮を被った数値。

# String
ms_liu = "liu_string"
mr_string = "liu_string"
puts ms_liu.equal? mr_string #false

# Symbol
# シンボルが同じオブジェクトは、必ず同じオブジェクトになる。
# シンボルの使い方「:」
ms_liul = :liu_symbol
mr_symbol = :liu_symbol
puts ms_liul.equal? mr_symbol #true