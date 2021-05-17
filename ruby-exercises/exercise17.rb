# Exercise: 17 Sum Time
# Write a method that sums up 2 24-hour time values(h:m:s).
# Validate the time using regular expressions.
# Eg: ("0:45:34","0:15:58") -> 01:01:32 ; ("11:23:07","22:53:45") -> 1 day & 10:16:52.
# Note: Make use of Time class

require 'time'

def sum_time(time1, time2)
 
  time1_in_seconds = time1.hour * 3600 + time1.min * 60 + time1.sec
  time2_in_seconds = time2.hour * 3600 + time2.min * 60 + time2.sec
  total_sec = time1_in_seconds + time2_in_seconds
  days = total_sec/86400
  remain_sec = total_sec % 86400
  time = Time.at(remain_sec).utc.strftime('%T')
  day = "#{days} day & " if days.positive?
  "#{day}#{time}"
end

TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

input_time = ARGV
input = input_time[0].split(",")

t1 = TIME_PATTERN.match(input[0])
t2 = TIME_PATTERN.match(input[1])

if t1 && t2
  time1 = Time.parse(input[0])
  time2 = Time.parse(input[1])
  puts sum_time(time1, time2)
else
  puts 'Invalid 24-hour time value'
end