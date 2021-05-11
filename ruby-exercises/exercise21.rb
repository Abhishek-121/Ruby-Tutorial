# Exercise: 21 Factorial
# Add exception handling for negative numbers in the factorial program.
# [input]
# -5
# [output]
# Negative number entered

# Code : 

def factorial(n)
  (1..n).inject(:*)
end

n = ARGV[0].to_i
if n.negative? 
  raise 'Negative number entered'
end

puts factorial(n)