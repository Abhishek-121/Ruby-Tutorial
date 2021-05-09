# Exercise: 15 Prime Numbers - Step

# Define a method to find all prime numbers upto n using 'step' function. 
# Don't use Prime class
# [input]
# 20
# [/input]
# [output]
# [2, 3, 5, 7, 11, 13, 17, 19] 
# [/output]
# [input]
# 100
# [/input]
# [output]
# [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] 
# [/output]

# Code :

def prime_number(n)
  res = []
  prime = Array.new(n + 1, true)
  (2..n).each do |x|
    num = x * x
    break if num > n

    if prime[x]
      (num..n).step(x).each do |multiples|
        prime[multiples] = false
      end
    end
  end
  (2..n).each do |primes|
    res << primes if prime[primes]
  end
  res
end

input = ARGV[0].to_i
print "#{prime_number(input)}\n"
