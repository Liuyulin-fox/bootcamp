#---------------------------------------------------------------------------------

#!/bin/bash
echo “Hello World !”

#Details of the chracters
number1_name=“Andy”
number1_sex="男性"
number1_age="22"
number2_name=“Brigitte”
number2_sex="女性"
number2_age="25"
number3_name=“Chris”
number3_sex="男性"
number3_age="27"
number4_name=“Danelle”
number4_sex="男性"
number4_age="35"

#Virtual fashion shop
shop="RainForestウリン"
goods_coat="バーチャル上着"
goods_coat_price=25000
goods_shoes="靴"
goods_shoes_price=10000
goods_pants="ズボン"
goods_pants_price=19000
goods_dress="ワンピース"
goods_dress_price=40000
goods_discount=2

#Sentence
echo $number1_name 「性別: $number1_sex 、年齢: $number1_age 」は $shop に立ち寄って、$goods_coat を原価 $goods_coat_price を `expr $goods_coat_price / $goods_discount` に購入しました。 
echo $number2_name 「性別: $number2_sex 、年齢: $number2_age 」は $shop に立ち寄って、$goods_shoes を原価 $goods_shoes_price を `expr $goods_shoes_price / $goods_discount` に購入しました。 
echo $number3_name 「性別: $number3_sex 、年齢: $number3_age 」は $shop に立ち寄って、$goods_dress を原価 $goods_dress_price を `expr $goods_dress_price / $goods_discount` に購入しました。 
echo $number4_name 「性別: $number4_sex 、年齢: $number4_age 」は $shop に立ち寄って、$goods_pants を原価 $goods_pants_price を `expr $goods_pants_price / $goods_discount` に購入しました。 

#--------------------------------------------------------------------------------