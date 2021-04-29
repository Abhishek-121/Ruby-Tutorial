file = File.open('ruby.txt', 'r+')
while line = file.gets 
  puts line
end
file.close

# Iterators for reading 
File.open('ruby.txt') do |x|
  x.each_byte.with_index do |ch, index|
    print "#{ch.chr} : #{ch} "
    break if index > 20
  end
end
puts 

str = IO.read('ruby.txt')
puts "String length is #{str.length}"
puts str[0, 30]

# Writing to a file
File.open('ruby.txt', 'w') do |sentence|
  sentence.puts 'New line get added'
  sentence.puts "Sum of 2 number : 7 + 5 = #{7 + 5}"
  sentence.puts 'Line gets added into the file'
end
puts File.read('ruby.txt')

File.open('ruby.txt', 'a') do |line|
  line.puts 'This is Ruby tutorial'
  line.puts "Multiplication of 2 number : 7 + 5 = #{7 * 5}"
  line.puts 'Append mode is executed'
end
puts File.read('ruby.txt')
