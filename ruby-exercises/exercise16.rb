# Exercise: 16 Highlight Search Result
# Write a search method that searches for a letter or word in a user input string and 
# highlights the searched element. Also it should display the total no of searches found. 
# Eg: If user enters string to be searched as "Can you can a can as a canner can can a can?" and 
# word to be searched is 'can' then output should be: 
# (Can) you (can) a (can) as a (can)ner (can) (can) a (can) ? Total Occurences found: 7

# [input]
# "Can you can a can as a canner can can a can?" "can"
# [output]
# (Can) you (can) a (can) as a (can)ner (can) (can) a (can) ?
# Total occurrences found: 7

# Code :

def highlight_search_res(sentence, word)
  count = sentence.split.count{ |matched| matched.downcase.include?('can') }
  capital_word = word.dup.capitialize()
  s = ""
  s += sentence.gsub("#{word}", "(#{word})").gsub("#{capital_word}", "(#{capital_word})")
  s += "\n"
  s += "Total occurence found : #{count}"
end

input = ARGV
sentence = input[0]
word = input[1]
puts highlight_search_res(sentence, word)
