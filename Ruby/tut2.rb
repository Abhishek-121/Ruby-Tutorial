# frozen_string_literal: true

# class Parent
#   def initialize(name)
#     @name = name
#   end
#   def super_method
#     puts 'In parents class'
#   end
#   def to_s
#   "Parent name is #{@name}"
#   end
# end

class Parent
  def initialize(name)
    @name = name
    puts "Given name is #{name}"
  end

  def say_hello(name)
    puts "Name is #{name}"
  end
end

class Child < Parent
  def child_method
    puts 'In child class'
  end

  def to_s
    puts "Child name is #{@name}"
  end
end

p = Parent.new('Abhi')
p.say_hello('Rajesh')
c = Child.new('Ravi')
puts c.child_method

# child = Child.new
# parent = Parent.new("Abhishek")
# puts parent
