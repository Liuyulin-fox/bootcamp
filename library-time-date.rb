#!/usr/bin/ruby
# 日付や時間を扱うクラス について調べ、その利用例をコードする
# - Time
# 例文①
now1 = Time.new; p now1  # 現在時刻
now2 = Time.now; p now2  # 現在時刻

# 例文②
# 方法1
t1 = Time.local(2022, 7, 5, 22, 50, 45, 0); p t1
  # 2022-07-05 22:50:45 +0900
  # 形式は Time.local(year, mon = 1, day = 1, hour = 0, min = 0, sec = 0, usec = 0)
  # year以外は省略可能。usecはマイクロ秒。

# 方法2
t2 = Time.local(12, 44, 22, 5, 7, 2022, 0, 0, false, "JST"); p t2
  # 2022-07-05 22:44:12 +0900
  # 形式は Time.local(sec, min, hour, mday, mon, year, wday, yday, isdst, zone)
  # 引数は省略できない。wday, yday, zone は無視される。
  

# 例文③
t = Time.new
p [
  t.year,  # 2022   年
  t.month, # 7      月。mon でも同じ。
  t.day,   # 5      日。mday でも同じ。
  t.hour,  # 23     時
  t.min,   # 11     分
  t.sec,   # 25     秒
  t.wday,  # 2      曜日番号。0(日曜日) 〜 6(土曜日)
  t.zone   # JST    タイムゾーン
]

# 例文④
t = Time.new;
p [
  t.sunday?,
  t.monday?,
  t.tuesday?, # true  以外全部false
  t.wednesday?,
  t.thursday?,
  t.friday?,
  t.saturday?
]

# - Date
require "date"

p date = DateTime.now    # 今の日時
p DateTime.now - 1       # 昨日

p input = DateTime.new(2022, 7, 4, 17, 8, 37)
p date = DateTime.parse('2022-07-05T17:08:37')
p date += 10
p date.year                    # 2022
p date.strftime('%a')          # "Fri"
p date.strftime("%Y年%m月%d日") # 2022年07月15日