#配列名「seasons」に添字を指定し、値を設定。
seasons[0]="Spring"
seasons[1]="Summer"
seasons[2]="Autumn"
seasons[3]="Winter"

#配列「seasons」のインデックス[3]を指定し、値を表示。
echo ${seasons[3]}

#配列「seasons」のインデックス[0]を指定し、文章を表示。
echo "${seasons[0]} has come"

#配列「seasons」をfor文を利用し、全ての値を表示。
for ((i=0; i<4; i++))
do
  echo $i ${seasons[i]}
done

#配列「seasons」をfor文の「in」を使って、添字を使わずに全ての値を表示。
for season in ${seasons[@]}
do
  echo $season
done

#配列「seasons」をfor文の「in」で、「添字、全ての値」を表示。
for i in ${!seasons[@]}
do
  echo $i ${seasons[$i]}
done

#配列「seasons」で、インデックス2に他の値に置換し、値表示。
seasons[2]="Autumn"
for ((i=0; i<4; i++))
do
  echo $i ${seasons[i]}
done

#配列「week」に一気に6個の値を設定し、添字指定による値表示。
week=(Sun Mon Tues Wed Thur Fri Sat)
echo ${week[0]}
echo ${week[6]}
echo ${week[@]}

#配列「week」で、値を0から順番に表示
for ((i=0; i<${#week[@]}; i++))
do
  echo $i ${week[i]}
done