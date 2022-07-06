#!/usr/bin/ruby
# commannd-line-tool

# 1. クラスを用いた設計をする
# 2. 実行時のパラメータはコマンドライン引数を採用する
#    対話型にはせずバッチ実行できる形にする
# 3. 実行時のパラメータが適切ではない場合、Usageを表示する
# 4. コーディング（スクラッチ）の勉強のため、外部のGem等は使用しないで実装する
#    外部Gemではないが、「optparse」は使用しないこととする

# 以下の command line tool を実装する

# [概要]
# 作業時間を管理するツール

# [仕様]
# ruby time_tracking_tool.rb [option]
# - option
#    [-s <task_name>] / [--start <task_name>] : タスク開始の時間を記録
#    [-f <task_name>] / [--finish <task_name>] : タスク終了の時間を記録
#    [-vt] / [--view-today] : 本日のタスク一覧（タスク名、開始時間、終了時間、実績時間）と本日の作業合計時間を表示
#    [-vw] / [--view-week] : 直近7日間の日別作業時間を表示

# [備考]
# - 仕様を満たしていれば、実装方法は自由
# - 上記以外の仕様に関しては、適切だと思える実装をする

class TimeTrackingTool
  def initialize()
    @task_name = nil
    @start_time = nil
    @finish_time = nil

  ARGV.each do |key|
    case key
      when "-n", "--name"
        param_task_name(ARGV[])
      when "-s", "--start"
        param_start_time(ARGV[])
      when "-f", "--finish"
        param_finish_time(ARGV[])
      when "-vt", "--view-today"
        param_view_today
      when "-vw", "--view-week"
        param_view_week
      end
    end
  end

  def param_task_name(value = nil)

  end

  def param_start_time(value = nil)

  end

  def param_finish_time(value = nil)

  end

  # 今日任务
  def param_view_today

  end

  # 過去7日間の労働時間
  def param_view_week
       
  end

  # タスク記入
  def write_task

  end
end

TimeTrackingTool.new
