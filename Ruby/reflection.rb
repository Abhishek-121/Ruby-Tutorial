# Looking at objects

a = Complex(1,2)
b = Complex(23,-12)
ObjectSpace.each_object(Complex) { |x| puts x}

# Looking inside Objects
r = 1..10
list = r.methods
puts list.length
puts list[0..4]

z = 1
puts z.object_id
puts z.class
puts z.kind_of?(Integer)
puts z.kind_of?(Numeric)
puts z.instance_of?(Integer)
puts z.instance_of?(Numeric)

kclass = Numeric
begin
  print kclass
  kclass = kclass.superclass
  print ' < ' if kclass
end while kclass
puts 
puts Numeric.ancestors
# ancestors method lists both superclasses and mixed-in modules

# Calling method dynamically
puts 'Abhishek'.send(:length)
puts 'Abhishek Maheshwari'.send('sub', /she/, 't')

# Method objects

def double(a)
  2 * a
end
method_object = method(:double)
print [1, 2, 3, 4, 5].map(&method_object)
puts 

unbound_length = String.instance_method(:length)
class String
  def length
    99
  end
end

str = 'Tiger'
puts str.length
bound_length = unbound_length.bind(str)
puts bound_length.call

# eval --> it can be helpful to state explicitly the context in which the expression should be evaluated.

def get_a_binding 
  val = 123 
  binding
end
val = 'cow'
the_binding = get_a_binding 
puts eval("val", the_binding)
puts eval("val")

module SystemHook
  private

  def system(*args)
    super.tap do |result|
      puts "system(#{args.join(', ')}) returned #{result.inspect}"
    end
  end 
end
class Object
  prepend SystemHook
end
puts system("date")
puts system("kangaroo", "-hop 10", "skippy")