# frozen_string_literal: true

# Exercise: 11 Pascal - Yield
# Print Pascal's triangle using 'yield'.
# Eg: pascal(6) gives:
# 1
# 1 1
# 1 2 1
# 1 3 3 1
# 1 4 6 4 1
# 1 5 10 10 5 1

def pascal_triangle(n)
  (0..n - 1).each do |ele|
    lst = [1]
    term = 1
    k = 1
    (0..ele - 1).step(1) do |_index|
      term = term * (ele - k + 1) / k
      lst << term
      k += 1
    end
    yield(lst)
  end
end

number = ARGV[0].to_i
pascal_triangle(number) { |lst| p lst }
