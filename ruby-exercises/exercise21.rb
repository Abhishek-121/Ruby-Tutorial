# Exercise: 21 Factorial
# Add exception handling for negative numbers in the factorial program.
# [input]
# -5
# [output]
# Negative number entered

# Code : 

def factorial(n)
  raise 'Negative number entered' if n.negative?
  (1..n).inject(:*)
end

n = ARGV[0].to_i
puts factorial(n)