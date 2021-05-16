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
  (1..n).inject(:*)
#  --> 2nd method
#   fact = 1
#   (1..n).each do |x|
#     fact *= x
#   end
  fact
end

n = ARGV[0].to_i
puts factorial(n)
