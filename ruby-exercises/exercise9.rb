# frozen_string_literal: true

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

def hash_count(input_hash)
  hash = {}
  input_hash.sort_by!(&:length)
  input_hash.each do |x|
    key = x.length
    if hash[key]
      hash[key].push(x)
    else
      hash[key] = [x]
    end
  end
  hash
end

input_hash = gets.chomp.strip.gsub!(/"|'|\[|\]/, '').split(',')
puts hash_count(input_hash)
