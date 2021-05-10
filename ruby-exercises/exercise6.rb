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
