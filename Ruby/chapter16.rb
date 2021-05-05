# frozen_string_literal: true

# Namespaces

class Triangle
  SIDES = 3
  def perimeter
    puts "Perimeter of a triangle is : #{3 * SIDES}"
  end
end

class Square
  SIDES = 5
  def initialize(length)
    @length = length
  end

  def area
    @length * @length
  end
end

puts "A triangle has #{Triangle::SIDES} sides"
sq = Square.new(4)
puts "A square has #{Square::SIDES} sides"
puts "Area of square is : #{sq.area}"
tri = Triangle.new
tri.perimeter

puts Math.sin(Math::PI / 6.0)
puts Math::E
