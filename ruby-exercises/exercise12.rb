# frozen_string_literal: true

# Exercise: 12 Character Count - Ranges
# Write a method that returns the no of various lowercase, uppercase, digits and special characters
# used in the string. Make use of Ranges.
# [input]
# "heLLo Every1"
# [output]
# Lowercase characters = 7
# Uppercase characters = 3
# Numeric characters = 1
# Special characters = 1
# [input]
# "g@@d MORNING"
# [/input]
# [output]
# Lowercase characters = 2
# Uppercase characters = 7
# Numeric characters = 0
# Special characters = 3

# Code :
def character_count(input_string)
  lower_case = 0
  upper_case = 0
  digits = 0
  special_character = 0
  res = []
  input_string.each do |x|
    case x
    when 'A'..'Z'
      upper_case += 1
    when 'a'..'z'
      lower_case += 1
    when '0'..'9'
      digits += 1
    else
      special_character += 1
    end
  end
  res << lower_case << upper_case << digits << special_character
end

input_string = gets.chomp.split('')
char_arr = character_count(input_string)
puts "Lowercase characters = #{char_arr[0]}"
puts "Uppercase characters = #{char_arr[1]}"
puts "Numeric characters = #{char_arr[2]}"
puts "Special characters = #{char_arr[3]}"
