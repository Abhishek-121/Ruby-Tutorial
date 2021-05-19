# Exercise: Reverse Iterate

# Implement a reverse iteration function for Array such that I should be able to do this
# [2,4,6,8].reverse_iterate { |i| print "#{i} "}
# It would print 8 6 4 2
# Note: Do not use any existing iterator for this.

# [input]
# "[2,4,6,8]"
# [output]
# 8 6 4 2 

# [input]
# "[1.1,3.4,0,6,-23]"
# [output]
# -23 6 0 3.4 1.1 


# Code :

class Array 
  def reverse_iterate
    # for i in 1..length
    (1..length).each do |i|
      yield self[-i]
    end
  end
end

input = ARGV
arr = input[0].gsub('[', '').gsub(']', '').split(',').map(&:to_s)
arr.reverse_iterate { |x| print "#{x} " }
