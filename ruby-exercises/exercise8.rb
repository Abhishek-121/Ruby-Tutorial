# Exercise: 8 Power - Array

# Define a method power() for an array. It takes an argument 'x' and
# returns the array with elements raised to power 'x'. Try to make use of array functions.
# Your program should accept an array and the value of power from command line.

# input example: ruby power_array.rb "[1,2,3,4]" 2
# output example: [1, 4, 9, 16]

# Code :

def power(arr, pow)
  arr.map { |ele| ele**pow }
end
input = ARGV
# arr = input.strip.gsub!(/"|'|\[|\]|,|/, ' ').split(' ')
arr = input[0].gsub('[', '').gsub(']', '').split(',').map(&:to_i)
pow = input[1].to_i
print power(arr, pow)
