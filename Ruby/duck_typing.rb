# Simplest example of Duck typing

puts 'Abhishek'.respond_to?(:to_s)
puts 4.respond_to?(:to_str)
puts Exception.new.respond_to?(:to_str)

class Lion 
  def walk
    puts 'Lion can walk'
  end

  def run
    puts 'Lion also run very fast'
  end
end

class Tiger 
  def walk
    puts 'Tiger can walk'
  end
  
  def run
    puts 'Tiger also run very fast'
  end
end

class Animal
  attr_reader :animals

  def initialize
    @animals = []
    lion = Lion.new()
    tiger = Tiger.new()
    @animals.push(lion)
    @animals.push(tiger)
  end

  def walk
    animals.each do |animal|
      animal.walk
    end
  end

  def run 
    animals.each do |animal|
      animal.run
    end
  end
end

action = Animal.new()
action.walk
action.run

# Some coneversion function built in std. library

# to_ary → Array : used when interpreter needs a parameter to a method to be an array 
class Number 
  def to_ary 
    [ 1, 2 ]
  end
end
obj = Number.new
puts obj

# to_a → Array : used when interpreter needs to convert an object into an array
class Numbers 
  def to_a 
    [ 1, 2 ]
  end
end
ob = Numbers.new
a, b = *ob
puts "a = #{a}, b = #{b}"

# to_str → String
# Used pretty much any place the interpreter is looking for a String value.
class OneTwo 
  def to_str
    "one-two"
  end 
end
ot = OneTwo.new
puts("count: " + ot)
File.open(ot) rescue puts $!.message

# Numeric Coercion 
puts 1.coerce(4)
puts (2.3).coerce(4)
puts (5.1).coerce(4.3)

class Roman
  def initialize(value)
    @value = value
  end

  def coerce(other)
    if Integer === other 
      [other, @value ]
    else
      [Float(other), Float(@value) ]
    end 
  end
end
iv = Roman.new(4)
xi = Roman.new(11)
puts 3 * iv
puts 2.2 * xi
