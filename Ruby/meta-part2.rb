# Refinements: refinement is a way of packaging a set of changes to one or more classes. 
# These refinements are defined within a module.
module VanityPuts
  refine Object do
    private

    def puts(*args)
      args.each do |arg| 
        Kernel::puts("Loconav says: #{arg}")
      end
    end
  end
end
using VanityPuts
puts 'Hello', 'world', 'Welcome'

# Metaprogramming Class-Level Macros
class Example
  def self.add_logging
    def log(msg)
      STDERR.puts Time.now.strftime("%H:%M:%S: ") + "#{self} (#{msg})"
    end
  end
  add_logging
end
ex = Example.new 
ex.log('Loconav')

class Logger
  def self.add_logging
    def log(msg)
      STDERR.puts Time.now.strftime("%H:%M:%S: ") + "#{self} (#{msg})"
    end
  end
add_logging
end

class Exam < Logger
  add_logging
end
ex = Exam.new 
ex.log('Computer')

class Logger
  def self.add_logging(id_string)
    define_method(:log) do |msg|
      now = Time.now.strftime("%H:%M:%S")
      STDERR.puts "#{now}-#{id_string}: #{self} (#{msg})"
    end 
  end
end

class Song < Logger 
  add_logging "Tune"
end

class Album < Logger 
  add_logging "CD"
end
song = Song.new 
song.log('rock on')

# Class method and modules

module AttrLogger
  def attr_logger(name)
    attr_reader name 
    define_method("#{name}=") do |val|
      puts "Assigning #{val.inspect} to #{name}"
      instance_variable_set("@#{name}", val) 
    end
  end 
end

class Examples
  extend AttrLogger 
  attr_logger :value
end
ex = Examples.new
ex.value = 123
puts "Value is #{ex.value}" 
ex.value = 'cat'
puts "Value is now #{ex.value}"

# Struct : It allows you to define classes that contain just data attributes.

# Person = Struct.new(:name, :address, :likes)
# ravi = Person.new('Ravi', 'New Delhi') 
# ravi.likes = 'Ruby Programming Languages'
# puts ravi
# The return value from Struct.new(...) is a class object. 

class Person < Struct.new(:name, :address, :likes) 
  def to_s
    "#{self.name} lives in #{self.address} and likes #{self.likes}" 
  end
end
dave = Person.new('Dave', 'Texas') 
dave.likes = 'Programming Languages'
puts dave

# Creating Singleton class

some_class = Class.new do 
  def self.class_method
    puts 'In class method' 
  end

  def instance_method
    puts 'In instance method'
  end 
end
some_class.class_method
obj = some_class.new
obj.instance_method

# instance_eval and class_eval
'cat'.instance_eval do
  puts "Upper case = #{upcase}" 
  puts "Length is #{self.length}"
end
'tiger'.instance_eval('puts "Upper=#{upcase}, length=#{self.length}"')

# Note : class_eval and instance_eval have precisely the wrong names: 
# class_eval defines instance methods, and instance_eval defines class methods
class MyClass 
end
MyClass.class_eval do 
  def instance_method
    puts 'In an instance method'
  end
end
obj = MyClass.new
obj.instance_method

MyClass.instance_eval do 
  def class_method
    puts 'In a class method' 
  end
end
MyClass.class_method

# Hook Method :method that you write but that Ruby calls from within the interpreter
# when some particular event occurs.

class Shipping 
  @children = [] 
  def self.inherited(child)
    @children << child
  end

  def self.shipping_options(weight, international)
    @children.select {|child| child.can_ship(weight, international)}
  end 
end

class MediaMail < Shipping
  def self.can_ship(weight, international)
    !international
    end
end
class FlatRatePriorityEnvelope < Shipping 
  def self.can_ship(weight, international)
    weight < 64 && !international
  end 
end
class InternationalFlatRateBox < Shipping 
  def self.can_ship(weight, international)
    weight < 9*16 && international
  end 
end
puts "Shipping 16oz domestic"
puts Shipping.shipping_options(16, false)
puts "\nShipping 90oz domestic"
puts Shipping.shipping_options(90, false)
puts "\nShipping 16oz international" 
puts Shipping.shipping_options(16, true)

# method_missing hook

def method_missing(name, *args, &block)
  puts "Called #{name} with #{args.inspect} and #{block}"
end
wibble
wobble 1, 2
wurble(3, 4) { stuff }