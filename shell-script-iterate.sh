#!/bin/bash
echo 'Hello the wonderful world'

#for文活用例①
for var in fox bear dog wolf snake lion  
do
  echo $var
done

#for文活用例②
for var in "fox bear" "dog wolf" "snake lion "
do
  echo $var
done

#for文活用例③
for i in {01..10}; 
do 
  echo $i; 
done

#for文活用例④「sep活用」
for i in $(seq 1 3); 
do 
  echo "$i 回目のループです。";
done

#for文活用例⑤「sep活用」
END=5
for i in $(seq 1 $END); 
do 
  echo "$i 回目のループです。";
done