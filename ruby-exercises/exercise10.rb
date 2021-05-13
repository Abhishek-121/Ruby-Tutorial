def hash_count(input_hash)
  # res = {}
  # input_hash.each do |x|
  #   key = x.length
  #   if res[key]
  #     res[key].push(x)
  #   else
  #     res[key] = [x]
  #   end
  # end
  input_hash.inject({:odd=[], :even=[]}) do |k, v|
    k[:odd] << v if v.length%2
    k[:even] << v if v.length%2 == 0
  end
  put k
  
  # res = res.sort.to_h
  # res.inject({}) do |result, element|
  #   if element[0].to_i % 2
  #     result[element[0].to_i = 'odd'] = element.last
  #   else
  #     result[element[0].to_i = 'even'] = element.last
  #   end
  # end
  # puts res
end

input_hash = gets.chomp.strip.gsub!(/"|'|\[|\]/, '').split(',')
hash_count(input_hash)
