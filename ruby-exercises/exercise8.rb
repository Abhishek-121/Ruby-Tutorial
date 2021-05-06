# frozen_string_literal: true

# Exercise: 8 Power - Array

# Define a method power() for an array. It takes an argument 'x' and
# returns the array with elements raised to power 'x'. Try to make use of array functions.
# Your program should accept an array and the value of power from command line.

# input example: ruby power_array.rb "[1,2,3,4]" 2
# output example: [1, 4, 9, 16]

# Code :

def power(arr, x)
  arr.map { |ele| ele.to_i**x }
end

input = ARGV.to_s
arr = input.strip.gsub!(/"|'|\[|\]|,|/, ' ').split(' ') 
x = arr[arr.length-1].to_i
arr.pop

print power(arr, x)
