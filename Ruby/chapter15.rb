# In Place Editing 
input_string = 'This is Inplace Editing feature in ruby'
puts input_string.chomp.reverse

# Environment variables

puts ENV['SHELL']
puts ENV['HOME']
puts ENV['USER']
puts ENV.keys.size
puts ENV.keys[0, 10]

# Writing to Environment variables
puts "In parent, term = #{ENV['TERM']}" 
fork do
  puts "Start of child 1, term = #{ENV['TERM']}" 
  ENV['TERM'] = "ansi"
  fork do
    puts "Start of child 2, term = #{ENV['TERM']}" 
  end
  Process.wait
  puts "End of child 1, term = #{ENV['TERM']}" 
end
Process.wait
puts "Back in parent, term = #{ENV['TERM']}"

# Using a gem
require 'builder'
xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2) 
xml.person(type: 'developer') do
  xml.name do 
    xml.first 'Abhishek'
  end
  xml.location 'Delhi'
  xml.preference('ruby') 
end

puts RUBY_THREAD_VM_STACK_SIZE
