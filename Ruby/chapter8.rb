# frozen_string_literal: true

# Regular Expression
str = 'I am at Backend Developer at loconav'
/Backend/ =~ str
if str =~ /Manish/
  puts 'The given pattern get matched'
else
  puts 'The given pattern did not match'
end
str1 = str.sub(/at/, 'in')
str2 = str.gsub(/at/, 'the')
puts "The string after using sub method #{str1}"
puts "The string after using gsub method #{str2}"

def show_regex(sentence, pattern)
  match = pattern.match(sentence)
  if match
    puts "(Before matched) #{match.pre_match}->#{match[0]}<- #{match.post_match} (After getting matched)"
  else
    puts 'No match found'
  end
end
show_regex('This is a Regular Expression code', /Regular/)
show_regex('New String is mapped', /is/)

# Chapter 8 More about methods

def names(arg1 = 'Ram', arg2 = 'Mohan', arg3 = 'Ravi')
  "First name : #{arg1}, Second name : #{arg2}, Third name : #{arg3}"
end
puts names
puts names('Abhishek')
puts names('Ram', 'Kishore')
puts names('Ajay', 'Kumar', 'Garg')

def count(arg1, *remaining)
  puts "First element is : #{arg1} and rest are #{remaining.inspect}"
end
count('one')
count('one', 'two')
count('one', 'two', 'three', 10, 11 + 5, 12)

class CalculateTax
  def initialize(name, &block)
    @name = name
    @block = block
  end

  def get_tax(amount)
    puts "#{@name} on #{amount} is = #{@block.call(amount)} Rs."
  end
end

tax = CalculateTax.new('Sales Tax') { |charge| charge * 0.755 }
tax.get_tax(1000)
tax.get_tax(200)

def calculate_age(age)
  case age
  when age >= 60
    puts 'You are older'
  when age > 30 && age < 60
    puts 'You are Young'
  else
    puts 'You are child'
  end
end
calculate_age(77)
calculate_age(19)

def largest_square
  100.times do |num|
    square = num * num
    return num, square if square > 1000
  end
end
puts largest_square
(1..100).detect{ |num| num*num > 1000 }
(1..100).select{ |num| num*num > 1000 }
(1..100).any{ |num| num*num > 1000 }
