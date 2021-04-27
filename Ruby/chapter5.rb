# frozen_string_literal: true

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "Person name is #{@name}"
#   end
# end
# p = Person.new('Rahul')
# puts p

# Mixin
module Test
  def debug
    puts "#{self.class.name} (id is #{object_id}) #{self.name}"
    puts 'This might be work'
  end
end

class A
  include Test
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class B
  include Test
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

a = A.new('East and West')
b = B.new('North and South')
a.debug
b.debug

class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name.to_s
  end

  def <=>(other)
    name <=> other.name
  end
end

p1 = Person.new('Ram')
p2 = Person.new('Mohan')
p3 = Person.new('Ravi')
puts "#{p1.name}'s name > #{p2.name}'s name" if p1 > p2
puts 'Sorted list:'
puts [p1, p2, p3].sort