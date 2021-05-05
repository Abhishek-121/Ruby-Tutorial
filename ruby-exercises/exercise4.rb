# Exercise: 4 - Palindrome

# Output whether the input string is a palindrome.Add a method palindrome? 
# in String class, so that it can be called as str.palindrome? this method should return true/false. 
# Input should be passed as a command line argument. * When the string is Palindrome, the output should be "Input string is a palindrome"

# * When the string is not Palindrome, the output should be "Input string is not a palindrome"
# * If no argument is passed(or blank string argument). the output should be "Please provide an input"

# Code:

input_string = gets.chomp 
class String
  def palindrome?
    self == self.reverse
  end
end

if input_string == ''
  puts 'Please provide an input'
  input_string = gets.chomp
end
if input_string.palindrome?
  puts 'Input string is a palindrome'
else
  puts 'Input string is not a palindrome'
end
