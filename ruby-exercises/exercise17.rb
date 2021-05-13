# Exercise: 17 Sum Time
# Write a method that sums up 2 24-hour time values(h:m:s).
# Validate the time using regular expressions.
# Eg: ("0:45:34" "0:15:58") -> 01:01:32 ; ("11:23:07" "22:53:45") -> 1 day & 10:16:52.
# Note: Make use of Time class

require 'time'

def sum_time(hour1, min1, sec1, hour2, min2, sec2)
  
  time1_in_seconds = hour1 * 3600 + min1 * 60 + sec1
  time2_in_seconds = hour2 * 3600 + min2 * 60 + sec2
  total_sec = time1_in_seconds + time2_in_seconds
  days = total_sec/86400
  remain_sec = total_sec % 86400
  time = Time.at(remain_sec).utc.strftime('%T')
  day = "#{days} day & " if days.positive?
  "#{day}#{time}"
end

TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

input = ARGV
t1 = TIME_PATTERN.match(input[0])
t2 = TIME_PATTERN.match(input[1])

if t1 && t2
  time1 = input[0].gsub(/"/, '').split(':')
  time2 = input[1].gsub(/"/, '').split(':')
  hour1 = time1[0].to_i
  min1 = time1[1].to_i
  sec1 = time1[2].to_i
  hour2 = time2[0].to_i
  min2 = time2[1].to_i
  sec2 = time2[2].to_i
  puts sum_time(hour1, min1, sec1, hour2, min2, sec2)
else
  puts 'Invalid 24-hour time value'
end