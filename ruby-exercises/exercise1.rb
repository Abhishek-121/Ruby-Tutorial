# Exercise: 1 - Occurrence Hash
# Count the occurrences of various alphabet letters in an input string and store it in hash.
# Your ruby program should accept a string as an argument and display the hash as an output.
# [input]
# "Hello World"
# [output]
# {"H"=>1, "e"=>1, "l"=>3, "o"=>2, "W"=>1, "r"=>1, "d"=>1}
# [input]
# password123
# [output]
# {"p"=>1, "a"=>1, "s"=>2, "w"=>1, "o"=>1, "r"=>1, "d"=>1}

# Code :

def count_occurence(input_string)
  input_string.chomp.gsub!(/\W+|\d+/, '').chars.group_by { |chr| chr }.transform_values(&:size)
end

input_string = ARGV[0]
puts count_occurence(input_string)
