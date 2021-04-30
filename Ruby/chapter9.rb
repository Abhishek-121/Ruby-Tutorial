# frozen_string_literal: true
# Assignment method
class Test
  def val=(val)
    @val = val
    return 50
  end
end
t = Test.new
res = (t.val = 6)
puts res

print [2, 4, 1, 9, 5, 12, 34].sort.reverse, ' ' 
puts ''
a, b = 4, 6
a, b = b, a
puts a, b

class Fixnum
  alias add_number +
  def +(other)
    add_number(other).succ
  end
end

puts 4 + 9
b = 3
b += 7
puts b

# appending in an array
array = [2, 3, 6, 7]
array << 34
print array
puts ' '

class Score_track
  def initialize
    @count = @total_score = 0
  end

  def <<(score)
    @count += 1
    @total_score += score
    self
  end

  def average
    fail 'No score' if @count.zero?
    Float(@total_score) / @count
  end
end
scores = Score_track.new
scores << 10 << 20 << 30 << 40
puts "Average is : #{scores.average}"

class SomeClass
  def []=(*params)
    value = params.pop
    puts "Indexed with #{params.join(' , ')}"
    puts " Have value = #{value.inspect}"
  end 
end
s = SomeClass.new
s[1] = 4
s['one', 'two'] = 'animal'

# Nested Assignment
# a, (b, c), d = [1,2,3,4] 
# => [1, 2, 3, 4]
# irb(main):004:0> a,(b,c),d,e = 1, 2, 3, 4, 5
# => [1, 2, 3, 4, 5]
# irb(main):005:0> a,(b, c),d,e = 1, [2, 4], 5, 6
# => [1, [2, 4], 5, 6]
# irb(main):006:0> a,(b,c),d,e = 1, [2, 3, 4 ], 5, 6
# => [1, [2, 3, 4], 5, 6]
# irb(main):007:0> a,(b,*c),d,e = 1, [2,3,4,56,7,8,9],4 
# => [1, [2, 3, 4, 56, 7, 8, 9], 4]

# Boolean expressions and or not and defined operator
puts (nil && 12)
puts 12 && false
puts 12 && 'cat'
puts 'cat' || 99

puts defined? 42.abs
puts defined? "Abhishek"
puts defined? Math::PI

# Loops 
i = 0
unless i == 2
  i += 1
  puts i
end

k = 1
k *= 2 while k < 100
puts k

0.upto(9) do |num|
  print num, ' '
end
puts
0.step(12,2){|x| print x, ' ' }
puts

i = 0 
loop do
  i += 1
  next if i < 3 
  puts i
  break if i > 4
end

# Exception Handling 

numbers = [11, 23, 55, 22, 14]

begin
  # num = numbers[1]/0
  numbers['cat']
rescue ZeroDivisionError => e
  puts "The error is #{e}"
rescue TypeError => t
  puts t
else
  puts 'It will execute when no exception is raised'
ensure
  puts 'This block will always be executed irrespective of exception'
end