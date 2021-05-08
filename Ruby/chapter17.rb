# encoding: utf-8
PI = "π"
puts "The size of a string containing π is #{PI.size}"

# encoding: utf-8
def show_encoding(str)
  puts "'#{str}' (size #{str.size}) is #{str.encoding.name}"
end
show_encoding('Lion') 
show_encoding('∂og')

def shows_encoding(str)
  puts "#{str.inspect} is #{str.encoding.name}"
end
shows_encoding :cat
shows_encoding :∂og
shows_encoding /cat/
shows_encoding /∂og/

# Creating Unicode Characters
puts "Greek pi: \u03c0"
puts "Greek pi: \u{3c0}"
puts "Greek \u{70 69 3a 20 3c0}"

# encoding: ascii-8bit clean coding
π = 3.14159
puts "π = #{π}"
puts "Size of 'π' = #{'π'.size}"

#Source encoding as per file

STRING_ISO = "ol\351"
STRING_U = "∂og"

def encoding(str)
  puts "'#{str.bytes.to_a}' (#{str.size} chars, #{str.bytesize} bytes) " + "has encoding #{str.encoding.name}"
end
encoding(STRING_ISO) 
encoding(STRING_U) 
encoding("cat")

# Transcoding
ole_in_utf = "olé"
puts ole_in_utf.encoding 
puts ole_in_utf.bytes.to_a 
puts ole_in_8859 = ole_in_utf.encode("iso-8859-1") 
puts ole_in_8859.encoding 
puts ole_in_8859.bytes.to_a

# Binary Files
f = File.open('ruby.txt', 'rb')
puts "Implicit encoding is #{f.external_encoding.name}" 
f = File.open('ruby.txt', 'rb:binary')
puts "Explicit encoding is #{f.external_encoding.name}" 
line = f.gets
puts "String encoding is #{line.encoding.name}"