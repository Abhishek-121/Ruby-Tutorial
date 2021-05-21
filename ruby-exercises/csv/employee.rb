# Exercise: 23 CSV

# Read a CSV file:
# Name, EmpId, Designation
# Jack, 15, Developer
# Mary, 13, Designer
# John, 12, Developer
# Jane, 17, Designer
# Johny, 19, Tester
# Save into another file in the format:
# Designers
# Mary (EmpId: 13)
# Jane (EmpId: 17)
# Developers
# John (EmpId: 12)
# Jack (EmpId: 15)
# Testers
# Johny (EmpId: 19)
# Listing should be in ascending order of Designation.
# Designation should be plural if it has more than one Employee.

require 'csv'
# str = IO.read('employee.csv')
# puts "String length is #{str.length}"

data = CSV.read('employee.csv', headers: true)
# puts data
data_list = data.to_a[1..data.length]
puts data_list
record = data_list.group_by { |row| row[2] }
puts record
record.each do |_key, value|
  value.sort_by! { |row| row[1] }
end
# puts record

def append_details(record)
  File.open('output.txt', 'w') do |file|
    record.each do |designation, value|
      file.puts "#{designation}#{"s" if details[designation].length > 1}"
      value.each { |lst| file.puts "#{lst[0]} (EmpId: #{lst[1]})" }
      file.puts
    end
  end
end

append_details(record)
