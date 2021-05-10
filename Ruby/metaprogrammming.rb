class Test 
  def one
    @var = 12
    second
  end

  def second
  puts @var
  end
end 
t = Test.new
t.one

# self and class defination
class Testing
  puts 'In the defination of class Testing'
  puts "self = #{self}"
  puts "Class of self is  : #{self.class}"
end

class Abc
  @val = 45
  puts "Self = #{self}"
  def self.read_value
    puts "Self value is : #{self}"
    @val
  end
end
Abc.read_value

# Singleton -- Ruby lets you define methods that are specific to a particular object. 
#             These are called singleton methods.

animal = 'tiger'
def animal.run
  puts "the #{self} runs very fast "
end
animal.run
puts animal.upcase

class Abhishek
  def self.method_one
    puts "Class method one self = #{self} "
  end

  def self.method_two
    puts "Class method two self = #{self}"
  end
end
Abhishek.method_one
Abhishek.method_two

class Account
  @amount = 100
  def self.method1
    @amount
  end

  def self.method1=(value)
    @amount = value
  end
end
puts "Original value = #{Account.method1}"
Account.method1 = 56 + 4
puts "New value = #{Account.method1}"

# Another Way to Access the Singleton Class

animal = 'cat'
class << animal
  def speak
    puts 'The cat say meow'
  end
end
animal.speak

animals = "dog" 
def animals.speak
  puts "The #{self} says WOOF!"
end
singleton = class << animals
  def lie
    puts "The #{self} lies down"
  end
  self
end
animals.speak
animals.lie
puts "Singleton class object is #{singleton}"
puts "It defines methods #{singleton.instance_methods - 'cat'.methods}"
# <Class:#<String:0x00007ffa458e1218>> --> Singleton class notation

class Ruby
  @var = 99 
  class << self
    attr_accessor :var
  end 
end
puts "Original value = #{Ruby.var}" 
Ruby.var = 'ruby'
puts "New value = #{Ruby.var}"

# Module and mixin

module Logger
  def log(msg)
    STDERR.puts Time.now.strftime('%H:%M:%S: ') + "#{self} (#{msg})"
  end
end

class Song
  include Logger
end
s = Song.new
s.log('Abhi')

# if you change a module after including it in a class, those changes are reflected in the class 
# (and the class’s objects).In this way, modules behave just like classes.

module Check
  def greeting
    'Good morining'
  end
end
class Greet
  include Check
end
ex = Greet.new
puts "Before change, greeting is #{ex.greeting}"

module Check
  def greeting
    'Good Evening'
  end
end
puts "After change greeting is #{ex.greeting}"

# prepend 

module VanityPuts
  def puts(*args)
    args.each do |arg|
      super("Abhi says #{arg}")
    end
  end
end
class Object
  prepend VanityPuts
end
puts 'Hello and Welcome', 'goodbye !'

# extend

module Humor
  def laugh
    puts "#{self} is the best medicine"
  end
end
obj = "Laughter"
obj.extend Humor
obj.laugh