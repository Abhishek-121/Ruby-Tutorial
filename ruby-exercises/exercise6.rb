class Vehicle
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    str = ""
    str += "Vehicle name: #{@name}\n"
    str += "Vehicle price: #{@price}\n"
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
    str += "Bike price: #{@price}\n"
    str += "Bike Dealer: #{@dealer}\n"
  end

  def price_increase(ppi)
    @price += (@price * ppi.to_f)/100
  end
end

input = ARGV
name, price, dealer, ppi = input[0], input[1].to_i, input[2], input[3].to_f

bike = Bike.new(name, price, dealer)
puts bike.to_s
puts "After #{ppi} percent hike in price:"
bike.price_increase(ppi)
bike.price_increase(ppi)

puts bike
