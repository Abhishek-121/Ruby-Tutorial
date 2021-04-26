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
  end
  def say_hello(name)
  "Name is #{@name}"
  "Hello ! Mr {#self}"
  end
end

class Child < Parent
  def child_method
    puts 'In child class'
  end
end

p = Parent.new("Abhi")
p.say_hello("Rajesh")
puts p
c = Child.new
puts c

# child = Child.new
# parent = Parent.new("Abhishek")
# puts parent