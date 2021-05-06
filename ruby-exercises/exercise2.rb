# frozen_string_literal: true

# Exercise: 2 - Replace using Regex
# Ask the user to enter text. Replace each vowel in the text with a '*' using regular expression.
# Your program should accept a string as an argument and output the replaced string
# [input]
# password123
# [output]
# p*ssw*rd123
# [input]
# "good morning"
# [output]
# g**d m*rn*ng

input_string = ARGV
puts input_string.join(' ').downcase.chomp.gsub(/[a,e,i,o,u]/, '*')
