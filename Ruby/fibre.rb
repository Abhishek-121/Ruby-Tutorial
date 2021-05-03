def new_random
  rand(1000)
end
  
twos = Fiber.new do
  cache = {}
  num = 2
  loop do
    random = new_random
    loop do
      random = new_random
      break unless cache.key?(random)
    end
    cache[random] = 1
    Fiber.yield(random)
  end
end
10.times{ print twos.resume, '-' }

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
