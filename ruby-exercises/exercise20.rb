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

class Intrest
  attr_accessor :principal, :time

  INTREST_RATE = 0.1
  def initialize(principal, time)
    @principal = principal
    @time = time
  end

  def calculate_diffrence
    simple_intrest = @principal + (@principal * INTREST_RATE * @time)
    compound_intrest = @principal * (1 + INTREST_RATE)**@time
    puts "%.2f" % (compound_intrest - simple_intrest)
  end
end

input = ARGV
principal = input[0].to_f
time = input[1].to_f
obj = Intrest.new(principal, time)
obj.calculate_diffrence
