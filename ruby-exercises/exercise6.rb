# Exercise: 6 Vehicle - Subclass
# Define a class named 'Vehicle' consisting of 'name','price' and methods for initializing and showing contents(overwrite to_s). 
# The 'price' of Vehicle may change over time. Now create a subclass 'Bike' having 'dealer' and percent_price_increase and method to show its content. 
# Initialize a Bike class object with certain values. Define a method price_increase which will increase the price. 
# Your program should accept command line input in this format: BikeName Price Dealer PercentPriceIncrease. 
# Ex: BajajDiscover 58000 BaggaLink 12
# [input]
# "Hero Honda" 65000 "Koncept Automobiles" 25 
# [output]
# Bike Name: Hero Honda
# Bike Price: 65000
# Bike Dealer: Koncept Automobiles

# After 25.0 percent hike in price:
# Bike Name: Hero Honda
# Bike Price: 81250.0
# Bike Dealer: Koncept Automobiles 

# Code : 

class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Bike < Vehicle
  def initialize(name, price, dealer)
    @name = name
    @price = price
    @dealer = dealer
    @percent_price_increase = 0
  end

  def to_s
    str = ""
    str += "After #{@percent_price_increase} percent hike in price:\n"
    str +=  "Bike name: #{@name}\n"
    str += "Bike price: #{@price + (@price * @percent_price_increase)/100}\n"
    str += "Bike Dealer: #{@dealer}\n"
  end

  def price_increase(price)
    @percent_price_increase = price.to_f
  end
end

input = ARGV
name, price, dealer, ppi = input[0], input[1].to_i, input[2], input[3].to_i
puts "Bike Name: #{name}"
puts "Bike Price: #{price}"
puts "Bike Dealer: #{dealer}"
puts ""
bike = Bike.new(name, price, dealer)
bike.price_increase(ppi)
puts bike
