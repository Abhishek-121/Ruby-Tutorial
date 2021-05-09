# frozen_string_literal: true

# Exercise: 7 - Inverse Case

# Overwrite the default 'to_s' method such that it inverses the case of each letter.
#   Eg: "hello WORLD".to_s -> "HELLO world".
#   Your program should accept a string as an argument and print the output on standard output.
#   [input]
# "G@@d MorninG"
# [output]
# g@@D mORNINg
# [/output]

# Code:

class String
  def to_s
    swapcase
  end
end
input_string = ARGV.join(' ').chomp
puts input_string.to_s
