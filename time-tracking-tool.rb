#!/usr/bin/ruby
require "time"

class TimeTrackingTool
    def initialize()
        @task_name = nil
        @start_time = nil
        @finish_time = nil

        @is_add_task = false

        current_index = 0

        ARGV.each do |key|
            if current_index % 2 == 0
                case key
                    when "-n", "--name"
                        param_task_name(ARGV[current_index + 1])
                    when "-s", "--start"
                        param_start_time(ARGV[current_index + 1])
                    when "-f", "--finish"
                        param_finish_time(ARGV[current_index + 1])
                    when "-vt", "--view-today"
                        param_view_today
                    when "-vw", "--view-week"
                        param_view_week
                end
            end

            current_index = current_index + 1
        end

        # タスク記入
        if @is_add_task then write_task end

    end

    def param_task_name(value = nil)
        if value.nil?
            puts "タスク名が正しくない"
            exit
        end

        @task_name = value
        @is_add_task = true
    end

    def param_start_time(value = nil)
        if value.nil?
            p "開始時間とルールが一致しない"
            exit
        end

        @start_time = "#{value[0, 10]} #{value[11, 16]}"
        @is_add_task = true
    end

    def param_finish_time(value = nil)
        if value.nil?
            p "完成時間とルールが一致しない"
            exit
        end

        @finish_time = "#{value[0, 10]} #{value[11, 16]}"
        @is_add_task = true
    end

    # 今日任务
    def param_view_today
        now_date = Time.new.to_s[0, 10]

        unless FileTest::exist?("tracking/#{now_date}.csv")
            p "今日はタスクがない"
            exit
        end

        p "-----------------------------------"
        
        file = File.open("tracking/#{now_date}.csv", "r")

        task_quantity = 0
        task_time_count = 0

        file.each do |line|
            task_quantity = task_quantity + 1

            line_split = line.chomp().split(",")

            task_time_count = (task_time_count + line_split[3].to_f).round(2)

            p "タスク名：#{line_split[0]}"
            p "開始時間：#{line_split[1]}"
            p "完成時間：#{line_split[2]}"
            p "実際時間：#{line_split[3]}時間"
            p "-----------------------------------"
        end
        
        file.close

        p "今日は#{task_quantity}個タスクがあり，#{task_time_count}時間が必要です"
        p "-----------------------------------"
    end

    # 過去7日間の労働時間
    def param_view_week
        now_date = Time.now

        for i in 0..6
            date = (Time.now - i * 86400).strftime('%Y-%m-%d')
            
            day_working_time = 0

            if FileTest::exist?("tracking/#{date}.csv")
                file = File.open("tracking/#{date}.csv", "r")

                file.each do |line|
                    line_split = line.chomp().split(",")
        
                    day_working_time = (day_working_time + line_split[3].to_f).round(2)
                end
    
                file.close
            end

            p "#{date}：#{day_working_time}時間"
            p "-----------------------------------"
        end
    end

    # タスク記入
    def write_task
        if @task_name.nil?
            puts "タスク名が正しくない"
            exit
        end

        if @start_time.nil? || @start_time !~ /^\d{4}-\d{2}-\d{2} \d{2}:\d{2}$/
            p "開始時間とルールが一致しない"
            exit
        end

        if @finish_time.nil? || @finish_time !~ /^\d{4}-\d{2}-\d{2} \d{2}:\d{2}$/
            p "完成時間とルールが一致しない"
            exit
        end
        
        file_name = @start_time[0, 10]
        file_auth = "a+"

        unless FileTest::exist?("tracking/#{file_name}.csv")
            file_auth = "w"
        end

        file = File.open("tracking/#{file_name}.csv", file_auth)

        # 仕事時間を計算する
        time_count = ((Time.parse(("#{@finish_time}")) - Time.parse("#{@start_time}")) / 3600).round(2)

        file.puts "#{@task_name},#{@start_time},#{@finish_time},#{time_count}"

        file.close
    end
end

TimeTrackingTool.new
