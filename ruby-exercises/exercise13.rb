# frozen_string_literal: true

# Exercise: 13 Factorial - Ranges
# Rewrite the factorial method using ranges. Your script should take a number from the command line and
# output the result on standard output
# [input]
# 10
# [output]
# 3628800
# [input]
# 5
# [/input]
# [output]
# 120

# Code :

def factorial(n)
  fact = 1
  (1..n).each do |x|
    fact *= x
  end
  # (1..n).inject(:*) --> 2nd method
  fact
end

n = ARGV[0].to_i
# puts n+2
puts factorial(n)
# puts p
