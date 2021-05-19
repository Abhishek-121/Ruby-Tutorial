# Exercise: 9 Array - Hash
# Create a method for Array that returns a hash having 'key' as the length of the element and
# value as an array of all the elements of that length. Make use of Array#each.
# Returned Hash should be sorted by key.
# Input argument: array-hash.rb "['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']"
# Output: {1=>["x", "5"], 3=>["abc", "def", "234"], 4=>["1234", "abcd", "mnop", "zZzZ"]}
# [input]
# "['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']"
# [output]
# {1=>["x", "5"], 3=>["abc", "def", "234"], 4=>["1234", "abcd", "mnop", "zZzZ"]}

# Code :

def hash_count(input_list)
  res = {}
  input_list.each do |x|
    key = x.length
    if res[key]
      res[key].push(x)
    else
      res[key] = [x]
    end
  end
  res.sort.to_h
end

input_list = gets.chomp.strip.gsub!(/"|'|\[|\]/, '').split(',')
puts hash_count(input_list)
