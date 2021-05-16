# Exercise: 14 Reverse Sentence

# Use string methods to reverse the words arrangement in a sentence.
# Eg: "An apple a day keeps the doctor away" -> "away doctor the keeps day a apple An"
# [input]
# "away doctor the keeps day a apple An"
# [output]
# "An apple a day keeps the doctor away"

# Code :

input_string = gets.chomp.split(' ')

puts input_string.reverse.join(' ')
