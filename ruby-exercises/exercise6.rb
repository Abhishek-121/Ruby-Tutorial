class Vehicle
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Bike < Vehicle
  attr_reader :dealer

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def to_s
    str = ""
    str += "Bike name: #{@name}\n"
    str += "Bike price: #{@percent_price_increase}\n"
    str += "Bike Dealer: #{@dealer}\n"
  end

  def price_increase(ppi)
    @percent_price_increase = @price + (@price * ppi.to_f)/100
  end
end

input = ARGV
name, price, dealer, ppi = input[0], input[1].to_i, input[2], input[3].to_f
puts "Bike Name: #{name}"
puts "Bike Price: #{price}"
puts "Bike Dealer: #{dealer}\n"
puts ""
puts "After #{ppi} percent hike in price:"

bike = Bike.new(name, price, dealer)
bike.price_increase(ppi)
puts bike
