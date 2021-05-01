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
