# frozen_string_literal: true

# Exercise: 19 Sum Time

# Modify the sum of times method for any number of time values passed to this method.
# Eg: ("11:23:07","22:53:45","0:23:23","23:45:56") -> "2 day & 10:26:11"
#     ("11:23:07") -> "11:23:07"

# [input]
# "0:45:34","0:15:58"
# [/input]
# [output]
# "01:01:32"
# [/output]
# [input]
# "11:34:23","2:23:21","11:12-34"
# [/input]
# [output]
# 1 day & 01:09:44
# [/output]

# Code :

require 'time'

def sum_time(list)
  total_sec = list.map { |a| a }.map! { |tt| tt.hour * 3600 + tt.min * 60 + tt.sec }.sum
  days = total_sec / 86_400
  remain_sec = total_sec % 86_400
  time = Time.at(remain_sec).utc.strftime('%T')
  day = "#{days} day & " if days.positive?
  "#{day}#{time}"
end

TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/.freeze

input_time = ARGV
input = input_time[0].split(',')

begin
  input = input.map { |time| Time.parse(time) }
  puts sum_time(input)
rescue ArgumentError => e
  puts 'Invalid 24-hour time value'
end
