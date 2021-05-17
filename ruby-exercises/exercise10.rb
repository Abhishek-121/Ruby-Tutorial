def hash_count(input_list)
  input_list.inject({odd: [], even: []}) do |res, v|
    res[:odd] << v if v.length.odd?
    res[:even] << v if v.length.even?
    res
  end
end

input_list = gets.chomp.strip.gsub!(/"|'|\[|\]/, '').split(',')
puts hash_count(input_list)
