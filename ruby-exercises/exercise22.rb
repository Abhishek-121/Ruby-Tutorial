# Exercise: 22 Name - Raise
# Create a class 'Name' with two attributes firstname and lastname. 
# Neither of them can be blank and the first letter of firstname must be capital.
# Implement using 'raise'.
# [input]
# manoj sharma
# [/input]
# [output]
# Firstname must start with uppercase letter

# [input]
# Sachin
# [output]
# Lastname cannot be blank

# Code :

class Name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def validate
    raise 'Firstname cannot be blank' if @first_name.empty?
    raise 'Lastname cannot be blank' if @last_name.empty?
    raise 'Firstname must start with uppercase' unless @first_name.upcase[0] == @first_name[0]

    "Your name is #{@first_name} #{@last_name}"
  end
end


input = ARGV
first_name = input[0]
last_name = input[1]
name = Name.new(first_name, last_name)
puts name.validate
