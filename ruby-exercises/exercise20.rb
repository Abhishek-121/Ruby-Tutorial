# Exercise: 20 Interest Difference
# Create a class Interest that gives the user the difference in amount calculated simply and compoundedly.
# Initialise class with a block. 'p' and 't' are entered by user. Take 'r' = 10% pa.
# [input]
# 10000 2
# [output]
# Interest difference= 100.00 
# [input]
# 15000 2.5
# [output]
# Interest difference= 285.88 

# Code : 

class Interest
  attr_accessor :principal, :time

  INTEREST_RATE = 0.1
  def initialize()
    yield(self)
  end

  def calculate_diffrence
    simple_interest = @principal + (@principal * INTEREST_RATE * @time)
    compound_interest = @principal * (1 + INTEREST_RATE)**@time
    "%.2f" % (compound_interest - simple_interest)
  end
end

input = ARGV
principal = input[0].to_f
time = input[1].to_f
obj = Interest.new do |interest|
  interest.principal = principal
  interest.time = time
end
puts obj.calculate_diffrence
