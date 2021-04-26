# frozen_string_literal: true

# a =  'Hello ! In Ruby World'
# a[1] = 'B'
# puts a
# puts 'This is first day '
# a = 5
# if a > 3
#   puts "a is #{a} greater"
# else
#   puts 'sjsjn'
# end

def greeting_message(name)
  "Good morining #{name}"
end

puts greeting_message('Abhishek')
puts greeting_message('John Das')

student_details = {
  'name' => 'Abhishek',
  'branch' => 'CSE',
  'Collge' => 'MAIT'
}
puts student_details['branch']

# def animal_names
#   yield("Dog", "Barks")
#   yield("Lion", "Roar")
# end

# animal_names{|animal,feature| puts "The #{animal} should #{feature} at night"}

animals = %w[ant dog lion tiger cat]

animals.each { |animal| puts "The animal is #{animal}" }

arr = [1,3,4,6]
puts arr.inject(:*)