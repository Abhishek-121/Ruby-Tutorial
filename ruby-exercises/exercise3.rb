
# Exercise: 3 - Fibonacci using Yield
# Write a program to print a Fibonacci series.
# Your program should accept a number input and output the Fibonacci series.
# Make use of yield in your program
# [input]
# 1000
# [output]
# 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987

# Code :

def fibonacci(number)
  num1 = 0
  num2 = 1
  while num2 <= number
    num1, num2 = num2, num1 + num2
    yield(num1)
  end
end
input_string = ARGV[0].to_i
fibonacci(input_string) { |num| print "#{num} " }
